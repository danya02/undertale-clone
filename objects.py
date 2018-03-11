#!/usr/bin/python3
# coding=utf-8
import threading
import math
import time
import pygame
import sprite
import sfx


class Object:
    def __setattr__(self, key, value):
        object.__setattr__(self, key, value)
        if key == 'pos':
            object.__setattr__(self, 'x', value[0])
            object.__setattr__(self, 'y', value[1])
            self.sprite.rect.center = value
        elif key == 'x':
            object.__setattr__(self, 'pos', (value, self.pos[1]))
            self.sprite.rect.center = self.pos
        elif key == 'y':
            object.__setattr__(self, 'pos', (self.pos[0], value))
            self.sprite.rect.center = self.pos

    def __init__(self, pos):
        self.sprite = sprite.StaticSprite(pygame.Surface((1, 1)), 0, 0)
        self.pos = pos

    def interact(self, chara):
        pass


class RaiseException(Object):
    def __init__(self,pos):
        super(RaiseException, self).__init__(pos)
        self.sprite = sprite.get_sprite("spr_mysteryman", scale_value=2)

    def interact(self, chara):
        raise RuntimeError


class TestSAVEPoint(Object):
    def __init__(self,pos):
        super(TestSAVEPoint, self).__init__(pos)
        self.sprite = sprite.get_dynamic_sprite("spr_savepoint", scale_value=2)
        self.sprite.delay = 100
        # self.sprite.start()

    def interact(self, chara):
        sfx.get_sound(0x29fb).play()

class TestMovingObject(Object):
    def __init__(self,pos):
        super(TestMovingObject, self).__init__(pos)
        self.centerpos = pos
        self.run = True
        self.motion = threading.Thread(target=self.motionloop,name='motion of {}'.format(str(self.__class__.__name__)),daemon=True)
        self.motion.start()
        self.sprite = sprite.get_dynamic_sprite("spr_tobdogl", scale_value=4)
        self.sprite.delay = 50
        # self.sprite.start()
    def motionloop(self):
        while self.run:
            self.pos = (self.centerpos[0]+int(100*math.sin(time.time())),self.centerpos[1]+int(100*math.cos(time.time())))