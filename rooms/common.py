#!/usr/bin/python3
# coding=utf-8
import math
import pygame
import globals


class Room:
    def __int__(self):
        return int(self.id)

    def __init__(self, *args):
        self.id = 0
        self.background = pygame.Surface((800, 600))
        self.bg_pan = (0, 0)
        self.objects = []
        self.song = None
        self._display_ = pygame.display.get_surface()

    def draw(self):
        self._display_.fill(pygame.Color('black'))
        self._display_.blit(self.background, self.bg_pan)
        for i in self.objects:
            i.sprite.update()
            self._display_.blit(i.sprite.image, i.pos)
        pygame.display.flip()


class RoomWalkable(Room):
    def __init__(self):
        super(Room, self).__init__()

    def draw(self):
        super(RoomWalkable, self).draw()
        chara = globals.chara
        globals.display.blit(chara.sprite, (int(chara.pos[0]), int(chara.pos[1])))
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                globals.quit()
            if event.type == pygame.KEYDOWN:
                if event.key == pygame.K_ESCAPE:
                    globals.quit()
                if event.key == pygame.K_RETURN or event.key == pygame.K_z:
                    for i in self.objects:
                        if int(math.fabs(i.x - chara.x) * 2) + int(
                                math.fabs(i.y - chara.y) * 2) < 100:  # TODO: decrease dubiosity of distance formula.
                            i.interact(chara)
                            break
        keys_pressed = pygame.key.get_pressed()
        chara.moving = False
        if keys_pressed[pygame.K_LEFT]:
            chara.dir = 3
            chara.moving = True
            chara.pos = (chara.pos[0] - 0.5, chara.pos[1])
        if keys_pressed[pygame.K_RIGHT]:
            chara.dir = 1
            chara.moving = True
            chara.pos = (chara.pos[0] + 0.5, chara.pos[1])
        if keys_pressed[pygame.K_UP]:
            chara.dir = 0
            chara.moving = True
            chara.pos = (chara.pos[0], chara.pos[1] - 0.5)
        if keys_pressed[pygame.K_DOWN]:
            chara.dir = 2
            chara.moving = True
            chara.pos = (chara.pos[0], chara.pos[1] + 0.5)
        pygame.display.update()
        if not int(chara.pos[0]) in range(646) or not int(chara.pos[1]) in range(505):
            raise NotImplementedError("chara left screen area", 1)