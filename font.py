#!/usr/bin/python3
#  coding=utf-8
import json
import pygame

import data_types
import sprite


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

    def render(self, text: str, color: pygame.Color = None) -> pygame.Surface:
        text_surfaces = []
        for i in text:
            obj = self.characters.get(i, None)
            if obj is not None:
                text_surfaces.append(obj)
        x = 0
        y = 0
        for i in text_surfaces:
            x += i[1]
            y = max(y, i[0].get_height())
        s = pygame.Surface((x, y))
        x = 0
        for i in text_surfaces:
            s.blit(i[0], (x + i[2], 0))
            x += i[1]
        if color is None:
            return s
        return sprite.convert_color(s, pygame.Color('white'), color)

    @staticmethod
    def load_from_json(name: str):
        data = json.load(open('decompilation/font/{}.json'.format(name)))
        f = Font()
        f.json_name = name
        f.sysname = data['sysname']
        f.bold = data['bold']
        f.italic = data['italic']
        f.antialias = data['antialias']
        texture = sprite.textures[data['texture']]
        for i in data['chars']:
            char = i['char']
            rect = sprite.json_rect_to_real_rect(i['frame'])
            surface = sprite.cutout(texture, rect)
            shift = i['shift']
            offset = i['offset']
            f.characters.update({char: (surface, shift, offset)})
        return f


class FontsDict(data_types.DynamicLoadDict):
    def fetch(self, name):
        return Font.load_from_json(name)


fonts = FontsDict()


def render(text: str, font: str, color: pygame.Color = None):
    fonts[font].render(text, color)


if __name__ == '__main__':
    import debug_tools
    import string

    for i in ['fnt_comicsans', 'fnt_curs', 'fnt_dmg', 'fnt_main', 'fnt_maintext', 'fnt_maintext_2', 'fnt_papyrus',
              'fnt_plain', 'fnt_plainbig', 'fnt_small', 'fnt_wingdings']:
        print('Showing font {}...'.format(i))
        f = fonts[i]
        print('This is lowercase in red')
        debug_tools.show_surface(f.render(string.ascii_lowercase, pygame.Color('red')))
        input()
        print('This is uppercase in green')
        debug_tools.show_surface(f.render(string.ascii_uppercase, pygame.Color('green')))
        input()
        print('This is digits in blue')
        debug_tools.show_surface(f.render(string.digits, pygame.Color('blue')))
        input()
        print('This is punctuation in default')
        debug_tools.show_surface(f.render(string.punctuation))
        input()
