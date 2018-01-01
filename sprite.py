#!/usr/bin/python3
import os
import pygame
import threading

SPRITE_DIR = "./sprites/"


def scale(img: pygame.Surface, times: float):
    return pygame.transform.scale(img, (int(img.get_width() * times), int(img.get_height() * times)))


class StaticSprite(pygame.sprite.Sprite):
    def __init__(self, sprite: pygame.Surface, x: int = 0, y: int = 0, scale_factor: float = 1):
        super().__init__()
        self.image = scale(sprite, scale_factor)
        self.rect = sprite.get_rect()
        self.rect.x = x
        self.rect.y = y


class DynamicSprite(pygame.sprite.Sprite):
    def __init__(self, frames: [pygame.Surface] = None, pos: (int, int) = (0, 0), delay: int = 100,
                 scale_factor: float = 1.0):

        super().__init__()
        self.frames = [pygame.Surface((0, 0))] if not isinstance(frames, list) else frames
        self.frames = [scale(i, scale_factor) for i in self.frames]
        self.index = 0
        self.image = self.frames[0]
        self.rect = self.image.get_rect()
        self.rect.x, self.rect.y = pos
        self.delay = delay
        self.counter = 0

    def update(self, update_index: bool = False):
        super().update()
        if update_index:
            self.index += 1
            if self.index == len(self.frames):
                self.index = 0
            self.image = self.frames[self.index]
        else:
            self.counter += 1
            if self.counter == self.delay:
                self.counter = 0
                self.index += 1
                if self.index == len(self.frames):
                    self.index = 0
                self.image = self.frames[self.index]
        center = self.rect.center
        self.rect = self.image.get_rect()
        self.rect.center = center


def get_sprite(name: str, scale_value: float = 1.0) -> StaticSprite:
    return StaticSprite(pygame.image.load(SPRITE_DIR + name + "_0.png"), scale_factor=scale_value)


def get_dynamic_sprite(name: str, scale_value: float = 1) -> DynamicSprite:
    sprite_list = []
    for i in os.listdir(SPRITE_DIR):
        if name + "_" in i and ".png" in i:
            sprite_list.append(SPRITE_DIR + i)
    sprite_list.sort(key=lambda x: float(x.strip('.png').split(name + '_')[1]))
    return DynamicSprite([pygame.image.load(i) for i in sprite_list], scale_factor=scale_value)
