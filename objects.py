#!/usr/bin/python3
# coding=utf-8
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

    def __init__(self, *args):
        self.sprite = sprite.StaticSprite(pygame.Surface((1, 1)), 0, 0)
        self.pos = (0, 0)

    def interact(self, chara):
        pass


class RaiseException(Object):
    def __init__(self):
        super().__init__(self)
        self.sprite = sprite.get_sprite("spr_mysteryman", scale_value=2)
        self.pos = (300, 300)

    def interact(self, chara):
        raise RuntimeError


class TestSAVEPoint(Object):
    def __init__(self):
        super().__init__(self)
        self.sprite = sprite.get_dynamic_sprite("spr_savepoint", scale_value=2)
        self.sprite.delay = 100
        # self.sprite.start()
        self.pos = (500, 300)

    def interact(self, chara):
        sfx.get_sound(0x29fb).play()
