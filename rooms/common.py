#!/usr/bin/python3
# coding=utf-8
import math
import threading

import pygame
import globals
import draw


class Room:
    def __setattr__(self, key, value):
        super().__setattr__(key, value)
        if key == 'background':
            try:
                pos = self.bg_pan
            except AttributeError:
                pos = (0, 0)
            self.background_layer.surface.blit(value, pos)
            self.background_layer.flip()
        elif key == 'bg_pos':
            try:
                self.background_layer.surface.blit(self.background, value)
                self.background_layer.flip()
            except AttributeError:
                pass

    def __int__(self):
        return int(self.id)

    def __init__(self, *args):
        self.id = 0
        self.name = ''
        self.background_layer = draw.get_layer(65536)
        self.background = pygame.Surface((globals.width, globals.height))
        self.bg_pan = (0, 0)
        self.objects = []
        self.song = None
        self.run_update = True
        self.entered = False
        self.exited = False
        self.update_thread = threading.Thread(target=self.update_loop,
                                              name='update loop for {}'.format(self.__class__.__name__), daemon=True)
        self.update_thread.start()
        self.c = 0
        self.clock = pygame.time.Clock()

    def __del__(self):
        self.run_update = False

    def draw(self):
        for i in self.objects:
            i.redraw()
            i.sprite.update()
            layer = draw.get_layer(i.weight)
            layer.surface.blit(i.sprite.image[0], i.pos)
            layer.flip()
        self.c += 1
        if self.c >= 30:
            self.c = 0
            globals.time += 1
        self.clock.tick(30)

    def update_loop(self):
        pass

    def on_enter(self):
        if self.entered:
            return False
        else:
            self.entered = True
            return True

    def on_exit(self):
        if self.exited:
            return False
        else:
            self.exited = True
            return True


class RoomWalkable(Room):
    def __init__(self):
        Room.__init__(self)
        self.clock = pygame.time.Clock()
        self.chara = globals.chara
        self.chara_layer = draw.get_layer(128)
        self.walk_animate_init()
        self.walk_tick = 0
        self.c = 0

    def walk_animate_init(self):  # TODO: delegate to appropriate place.
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
        super().draw()
        chara = self.chara
        self.walk_animate_loop()
        self.chara_layer.clear()
        self.chara_layer.surface.blit(chara.sprite, (int(chara.pos[0]), int(chara.pos[1])))
        self.chara_layer.flip()

        if not globals.event_lock:
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    globals.quit()
                if event.type == pygame.KEYDOWN:
                    if event.key == pygame.K_ESCAPE:
                        globals.quit()
                    if event.key in globals.accept:
                        for i in self.objects:
                            if int(math.fabs(i.x - chara.x) * 2) + int(
                                    math.fabs(
                                        i.y - chara.y) * 2) < 100:  # TODO: decrease dubiosity of distance formula.
                                i.interact(chara)
                                break
            keys_pressed = pygame.key.get_pressed()
            chara.moving = False
            if keys_pressed[globals.left]:
                chara.dir = 3
                chara.moving = True
                chara.pos = (chara.pos[0] - chara.movespeed, chara.pos[1])
            if keys_pressed[globals.right]:
                chara.dir = 1
                chara.moving = True
                chara.pos = (chara.pos[0] + chara.movespeed, chara.pos[1])
            if keys_pressed[globals.up]:
                chara.dir = 0
                chara.moving = True
                chara.pos = (chara.pos[0], chara.pos[1] - chara.movespeed)
            if keys_pressed[globals.down]:
                chara.dir = 2
                chara.moving = True
                chara.pos = (chara.pos[0], chara.pos[1] + chara.movespeed)

        self.clock.tick(30)
        if not int(chara.pos[0]) in range(646) or not int(chara.pos[1]) in range(505):
            raise NotImplementedError("chara left screen area", 1)
