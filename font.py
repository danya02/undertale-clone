#!/usr/bin/python3
#  coding=utf-8
import json

import pygame

import draw
import sprite

fonts = [pygame.font.Font('fonts/{}.ttf'.format(i), j) for i, j in
         [('determinationsans', 32), ('determinationmono', 32), ('undertalepapyrus', 32), ('undertalesans', 32)]]


class Font:
    def __init__(self):
        self.json_name = 'fnt_empty'
        self.sysname = 'Empty Font'
        self.bold = False
        self.italic = False
        self.antialias = 'off'
        self.characters = {}

    def __str__(self):
        return '{} ({})'.format(self.json_name, self.sysname)

    def render(self, text: str) -> pygame.Surface:
        pass

    @staticmethod
    def load_from_json(name: str):
        data = json.load(open('decompilation/font/{}.json'.format(name)))
        f = Font()
        f.json_name = name
        f.sysname = data['sysname']
        f.bold = data['bold']
        f.italic = data['italic']
        f.antialias = data['antialias']
        texture = sprite.get_texture_from_num(data['texture'])
        for i in data['chars']:
            char = i['char']
            rect = sprite.json_rect_to_real_rect(i['frame'])
            surface = sprite.cutout(texture, rect)
            shift = i['shift']
            offset = i['offset']
            f.characters.update({char: (surface, shift, offset)})


def render(text: str, font: int = 0, color: pygame.Color = pygame.Color('white')):
    return fonts[font].render(text, False, color)
