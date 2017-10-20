#!/usr/bin/python3
import os
import pygame
import threading

SPRITE_DIR = "./sprites/"


class StaticSprite:
    def __setattr__(self, attr, value):
        object.__setattr__(self, attr, value)
        if attr == 'pos':
            object.__setattr__(self, 'x', value[0])
            object.__setattr__(self, 'y', value[1])
        elif attr == 'x':
            object.__setattr__(self, 'pos', [value, pos[1]])
        elif attr == 'y':
            object.__setattr__(self, 'pos', [pos[0], value])

    def __init__(self, sprite=None, pos=(0, 0)):
        self.sprite = pygame.Surface((0, 0)) if not isinstance(sprite, pygame.Surface) else sprite
        self.pos = list(pos)
        self._display = pygame.display.get_surface()

    def draw(self, update=False):
        self._display.blit(self.sprite, self.pos)
        if update:
            pygame.display.flip()


class DynamicSprite:
    def __setattr__(self, attr, value):
        object.__setattr__(self, attr, value)
        if attr == 'pos':
            object.__setattr__(self, 'x', value[0])
            object.__setattr__(self, 'y', value[1])
        elif attr == 'x':
            object.__setattr__(self, 'pos', [value, pos[1]])
        elif attr == 'y':
            object.__setattr__(self, 'pos', [pos[0], value])

    def __init__(self, frames=None, pos=(0, 0), delay=100):
        self.frames = [pygame.Surface((0, 0))] if not isinstance(frames, list) else frames
        self.pos = list(pos)
        self.stage = 0
        self.delay = delay
        self._display = pygame.display.get_surface()

    def reset(self):
        self.stage = 0

    def draw(self, update=False):
        self._display.blit(self.sprite, self.pos)
        self.stage += 1
        if self.stage + 1 > len(self.frames):
            self.stage = 0
        if update:
            pygame.display.flip()


def get_sprite(name):
    return StaticSprite(pygame.image.load(SPRITE_DIR + name + "_0.png"))


def get_dynamic_sprite(name):
    sprite_list = []
    for i in os.listdir(SPRITE_DIR):
        if name+"_" in i and ".png" in i:
            sprite_list.append(SPRITE_DIR+i)
    sprite_list.sort()
    return DynamicSprite([pygame.image.load(i) for i in sprite_list])
