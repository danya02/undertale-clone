#!/usr/bin/python3
# coding=utf-8
import json
import os
import pygame
import threading

import re

SPRITE_DIR = "./sprites/"


def scale(img: (pygame.Surface, (int, int)), times: float):
    return pygame.transform.scale(img[0], (int(img[0].get_width() * times), int(img[0].get_height() * times))), (
        img[1][0] * times, img[1][1] * times)


texsheets: {int: pygame.Surface} = {}


def get_texsheet(index: int) -> pygame.Surface:
    if index not in texsheets:
        texsheet = pygame.image.load('decompilation/texture/{}.png'.format(index))
        texsheets.update({index: texsheet})
    return texsheets[index]


def cutout(src: pygame.Surface, area: pygame.Rect) -> pygame.Surface:
    outp = pygame.Surface(area.size)
    outp.blit(src, (-area.x, -area.y))
    return outp


class Sprite(pygame.sprite.Sprite):
    def __init__(self):

        super().__init__()
        self.frames = [(pygame.Surface((0, 0)), (0, 0))]
        self.index = 0
        self.image = self.frames[0]
        self.delay = 1
        self.rect: pygame.Rect = self.image[0].get_rect()
        self.counter = 0
        self.run_animation = True

    def update(self, update_index: bool = False):
        super().update()
        global_origin = (self.rect.left + self.image[1][0], self.rect.top + self.image[1][1])
        if self.run_animation:
            if update_index:
                self.index += 1
                if self.index >= len(self.frames):
                    self.index = 0
                self.image = self.frames[self.index]
            else:
                self.counter += 1
                if self.counter >= self.delay:
                    self.counter = 0
                    self.index += 1
                    if self.index == len(self.frames):
                        self.index = 0
                    self.image = self.frames[self.index]
        self.rect: pygame.Rect = self.image[0].get_rect()
        self.rect.left = global_origin[0] - self.image[1][0]
        self.rect.top = global_origin[1] - self.image[1][1]

    def scale_self(self, factor: float) -> None:
        self.frames = [scale(i, factor) for i in self.frames]

    @staticmethod
    def get_sprite(name: str, scale_value: float = 1, delay: int = 100, run: bool = True):

        data = json.load(open('decompilation/sprite/{}.json'.format(name)))
        textures = data['textures']
        surfaces = []
        for i in textures:
            texdata = json.load(open('decompilation/texpage/{}.json'.format(i)))
            sheet = get_texsheet(texdata['sheetid'])
            srcrect = pygame.Rect((texdata['src']['x'], texdata['src']['y']),
                                  (texdata['src']['width'], texdata['src']['height']))
            surface = cutout(sheet, srcrect)
            origin = (data['origin']['x'], data['origin']['y'])
            surfaces.append(tuple([surface, origin]))
        s = Sprite()
        s.frames = surfaces
        s.scale_self(scale_value)
        s.delay = delay
        s.run_animation = run
        s.image = s.frames[0]
        return s
