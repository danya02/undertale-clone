#!/usr/bin/python3
# coding=utf-8
import json
import pygame
import data_types

SPRITE_DIR = "./sprites/"


def scale(img: (pygame.Surface, (int, int)), times: float):
    return pygame.transform.scale(img[0], (int(img[0].get_width() * times), int(img[0].get_height() * times))), (
        img[1][0] * times, img[1][1] * times)


def convert_color(img: pygame.Surface, color_from: pygame.Color, color_to: pygame.Color) -> pygame.Surface:
    # FIXME: This is most likely not optimal. Change to some method that's better suited.
    if color_from == color_to:
        return img.copy()
    outp = pygame.Surface(img.get_size())
    outp.blit(img, (0, 0))
    for x in range(img.get_width()):
        for y in range(img.get_height()):
            if img.get_at((x, y)) == color_from:
                outp.set_at((x, y), color_to)
    return outp


class TexsheetList(data_types.DynamicLoadDict):
    def fetch(self, name):
        return pygame.image.load('decompilation/texture/{}.png'.format(index))


texsheets = TexsheetList()


def json_rect_to_real_rect(json_rect: {str: int}) -> pygame.Rect:
    return pygame.Rect((json_rect['x'], json_rect['y']), (json_rect['width'], json_rect['height']))


def cutout(src: pygame.Surface, area: pygame.Rect) -> pygame.Surface:
    outp = pygame.Surface(area.size)
    outp.blit(src, (-area.x, -area.y))
    return outp


def get_texture_from_num(index: int) -> pygame.Surface:
    texdata = json.load(open('decompilation/texpage/{}.json'.format(index)))
    sheet = texsheets[texdata['sheetid']]
    srcrect = pygame.Rect((texdata['src']['x'], texdata['src']['y']),
                          (texdata['src']['width'], texdata['src']['height']))
    surface = cutout(sheet, srcrect)
    return surface


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
        origin = (data['origin']['x'], data['origin']['y'])
        surfaces = [tuple([get_texture_from_num(i), origin]) for i in textures]
        s = Sprite()
        s.frames = surfaces
        s.scale_self(scale_value)
        s.delay = delay
        s.run_animation = run
        s.image = s.frames[0]
        return s
