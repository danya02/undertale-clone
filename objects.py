#!/usr/bin/python3
import pygame
import sprite


class Object:
    def __init__(self, *args):
        self.sprite = pygame.Surface((1, 1))
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
