#!/usr/bin/python3
# coding=utf-8
import math
import threading

import pygame
import globals
import draw


class Room:
    def __int__(self):
        return int(self.id)

    def __init__(self, *args):
        self.id = 0
        self.name = ''
        self.background = pygame.Surface((800, 600))
        self.bg_pan = (0, 0)
        self.objects = []
        self.song = None
        self._display_ = pygame.display.get_surface()
        self.run_update = True
        self.update_thread = threading.Thread(target=self.update_loop,
                                              name='update loop for {}'.format(self.__class__.__name__), daemon=True)
        self.update_thread.start()
        self.c = 0

    def __del__(self):
        self.run_update = False

    def draw(self):
        self._display_.fill(pygame.Color('gray'))
        self._display_.blit(self.background, self.bg_pan)
        for i in self.objects:
            i.redraw()
            i.sprite.update()
            self._display_.blit(i.sprite.image, i.pos)
        draw.flip()
        self.c += 1
        if self.c >= 30:
            self.c = 0
            globals.time += 1
        globals.clock.tick(30)

    def update_loop(self):
        pass


class RoomWalkable(Room):
    def __init__(self):
        Room.__init__(self)
        self.clock = pygame.time.Clock()
        self.chara = globals.chara
        self.walk_animate_init()
        self.walk_tick = 0
        self.c = 0

    def walk_animate_init(self):
        scale_factor = 2

        def scale(img, times):
            return pygame.transform.scale(img, (int(img.get_width() * times), int(img.get_height() * times)))

        self.upcycle = [scale(pygame.image.load("sprites/spr_maincharau_" + str(i) + ".png"), scale_factor) for i in
                        range(4)]
        self.down_cycle = [scale(pygame.image.load("sprites/spr_maincharad_" + str(i) + ".png"), scale_factor) for i in
                           range(4)]
        self.left_cycle = [scale(pygame.image.load("sprites/spr_maincharal_" + str(i) + ".png"), scale_factor) for i in
                           range(2)]
        self.right_cycle = [scale(pygame.image.load("sprites/spr_maincharar_" + str(i) + ".png"), scale_factor) for i in
                            range(2)]

    def walk_animate_loop(self):
        chara = self.chara
        chara.sprite = [self.upcycle, self.right_cycle, self.down_cycle, self.left_cycle][chara.dir][0]
        if chara.moving:
            self.walk_tick += 1
            if self.walk_tick % 10 == 0:
                for i in [self.upcycle, self.right_cycle, self.down_cycle, self.left_cycle][chara.dir]:
                    chara.sprite = i

    def draw(self):
        self._display_.fill(pygame.Color('gray'))
        self._display_.blit(self.background, self.bg_pan)
        chara = self.chara
        self.walk_animate_loop()
        for i in self.objects:
            i.sprite.update()
            self._display_.blit(i.sprite.image, i.sprite.rect)
            globals.display.blit(chara.sprite, (int(chara.pos[0]), int(chara.pos[1])))
            i.redraw()
        self.c += 1
        if self.c >= 30:
            self.c = 0
            globals.time += 1
        draw.flip()
        if not globals.event_lock:
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    globals.quit()
                if event.type == pygame.KEYDOWN:
                    if event.key == pygame.K_ESCAPE:
                        globals.quit()
                    if event.key == pygame.K_RETURN or event.key == pygame.K_z:
                        for i in self.objects:
                            if int(math.fabs(i.x - chara.x) * 2) + int(
                                    math.fabs(
                                        i.y - chara.y) * 2) < 100:  # TODO: decrease dubiosity of distance formula.
                                i.interact(chara)
                                break
            keys_pressed = pygame.key.get_pressed()
            if keys_pressed[pygame.K_LEFT]:
                chara.dir = 3
                chara.moving = True
                chara.pos = (chara.pos[0] - chara.movespeed, chara.pos[1])
            elif keys_pressed[pygame.K_RIGHT]:
                chara.dir = 1
                chara.moving = True
                chara.pos = (chara.pos[0] + chara.movespeed, chara.pos[1])
            elif keys_pressed[pygame.K_UP]:
                chara.dir = 0
                chara.moving = True
                chara.pos = (chara.pos[0], chara.pos[1] - chara.movespeed)
            elif keys_pressed[pygame.K_DOWN]:
                chara.dir = 2
                chara.moving = True
                chara.pos = (chara.pos[0], chara.pos[1] + chara.movespeed)
            else:
                chara.moving = False
        self.clock.tick(30)
        draw.flip()
        if not int(chara.pos[0]) in range(646) or not int(chara.pos[1]) in range(505):
            raise NotImplementedError("chara left screen area", 1)
