#!/usr/bin/python3
import os
import pygame
import threading

SPRITE_DIR = "./sprites/"


def scale(img, times):
    return pygame.transform.scale(img, (int(img.get_width() * times), int(img.get_height() * times)))


class StaticSprite:
    def __setattr__(self, attr, value):
        object.__setattr__(self, attr, value)
        if attr == 'pos':
            object.__setattr__(self, 'x', value[0])
            object.__setattr__(self, 'y', value[1])
        elif attr == 'x':
            object.__setattr__(self, 'pos', [value, self.pos[1]])
        elif attr == 'y':
            object.__setattr__(self, 'pos', [self.pos[0], value])

    def __init__(self, sprite=None, pos=(0, 0), scale_value=1):
        self.sprite = pygame.Surface((0, 0)) if not isinstance(sprite, pygame.Surface) else sprite
        self.sprite = scale(self.sprite, scale_value)
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
            object.__setattr__(self, 'pos', [value, self.pos[1]])
        elif attr == 'y':
            object.__setattr__(self, 'pos', [self.pos[0], value])

    def __init__(self, frames=None, pos=(0, 0), delay=100, scale_value=1):
        self.frames = [pygame.Surface((0, 0))] if not isinstance(frames, list) else frames
        self.frames = [scale(i, scale_value) for i in self.frames]
        self.pos = list(pos)
        self.stage = 0
        self.delay = delay
        self._display = pygame.display.get_surface()
        self.run = False

    def reset(self):
        self.stage = 0

    def start(self):
        self.run = True
        self.__thread__ = threading.Thread(target=self.loop, daemon=True)
        self.__thread__.start()

    def stop(self):
        self.run = False
        del self.__thread__

    def loop(self):
        while self.run:
            self.sprite = self.frames[self.stage]
            self.stage += 1
            if self.stage + 1 > len(self.frames):
                self.stage = 0
            pygame.time.delay(self.delay)
        self.reset()

    def draw(self, update=False):
        self._display.blit(self.sprite, self.pos)
        self.stage += 1
        if self.stage + 1 > len(self.frames):
            self.stage = 0
        if update:
            pygame.display.flip()


def get_sprite(name, scale_value=1):
    return StaticSprite(pygame.image.load(SPRITE_DIR + name + "_0.png"), scale_value=scale_value)


def get_dynamic_sprite(name, scale_value=1):
    sprite_list = []
    for i in os.listdir(SPRITE_DIR):
        if name + "_" in i and ".png" in i:
            sprite_list.append(SPRITE_DIR + i)
    sprite_list.sort()
    return DynamicSprite([pygame.image.load(i) for i in sprite_list], scale_value=scale_value)
