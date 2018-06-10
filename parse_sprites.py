#!/usr/bin/python3
# coding=utf-8

import pygame
import json
import os

RELEASE = True  # change me to false when testing new selection boxes.


def load_texes() -> [pygame.Surface]:
    os.chdir('decompilation/texture/')
    texes = []
    for i in os.listdir('.'):
        print('Loading texfile', i)
        texes += [pygame.image.load(i)]
    os.chdir('../../')
    return texes


def load_sprites() -> dict:
    sprites = {}
    os.chdir('decompilation/sprite/')
    for i in os.listdir('.'):
        print('Loading spritefile', i)
        sprite = json.load(open(i))
        sprites.update({i.split('.')[0]: sprite})
    os.chdir('../..')
    return sprites


def prompt_correct(sprite: pygame.Surface) -> bool:
    print('Asking for correctness...')
    res = [i * 4 for i in sprite.get_size()]
    s = pygame.display.set_mode(res)
    displaysprite = pygame.transform.scale2x(pygame.transform.scale2x(sprite))
    s.blit(displaysprite, (0, 0))
    pygame.display.flip()
    pygame.display.set_caption("Correct? Y/N")
    while 1:
        for i in pygame.event.get():
            if i.type == pygame.KEYDOWN:
                if i.key == pygame.K_y:
                    print('Got yes')
                    return True
                elif i.key == pygame.K_n:
                    print('Got no')
                    return False


def save(name: str, surface: pygame.Surface, data: dict) -> None:
    os.makedirs('sprites', exist_ok=True)
    os.makedirs('masks', exist_ok=True)
    print('Saving file', name)
    pygame.image.save(surface, 'sprites/{}.png'.format(name))
    # FIXME: Collision masks here are broken, figure them out.
    if 'colmasks' in data and len(
            data['colmasks']) > 0:  # collision masks are optional; for example, see spr_alphys_gameboy.
        print('That file has collision data')
        mask = pygame.Surface((data['colmasks'][0]['w'], data['colmasks'][0]['h']))
        for y, yv in enumerate(data['colmasks'][0]['data']):
            for x, xv in enumerate(yv):  # Red for collision, Green for origin, Blue for transparency
                try:
                    mask.set_at((x, y), pygame.Color(255 if xv else 0, 255 if {'x': x, 'y': y} == data['origin'] else 0,
                                                     surface.get_at((x, y)).a, 255))
                except IndexError:
                    pass
    else:
        print('There is no collision data')
        mask = pygame.Surface((data['size']['width'], data['size']['height']))
        for x in range(data['size']['width']):
            for y in range(data['size']['height']):
                try:
                    mask.set_at((x, y), pygame.Color(0, 255 if {'x': x, 'y': y} == data['origin'] else 0,
                                                     surface.get_at((x, y)).a, 255))
                except:
                    pass
    print('Saving mask for', name)
    pygame.image.save(mask, 'masks/{}.png'.format(name))


def crop(data: dict, texpage: pygame.Surface) -> pygame.Surface:
    sprite = pygame.Surface((data['size']['width'], data['size']['height']))
    print('Cropping texfile to', (data['size']['width'], data['size']['height']))
    for x in range(data['size']['width']):
        for y in range(data['size']['height']):
            sprite.set_at((x, y), texpage.get_at((x + data['bounding']['left'], y + data['bounding']['top'])))
    return sprite


def crop_by_rect(source: pygame.Surface, rect: pygame.Rect) -> pygame.Surface:
    sprite = pygame.Surface(rect.size)
    for x in range(rect.width):
        for y in range(rect.height):
            sprite.set_at((x, y), source.get_at((x + rect.left, y + rect.top)))
    return sprite


def save_after_test(s: pygame.Surface, f: str, data: dict) -> None:
    print('Testing', f)
    if RELEASE or prompt_correct(s):
        save(f, s, data)


def get_pic(name: str, data: dict) -> None:
    texture_nums = data['textures']
    textures = [json.load(open('decompilation/texpage/{}.json'.format(i))) for i in texture_nums]
    sheets = [pygame.image.load('decompilation/texture/{}.png'.format(i['sheetid'])) for i in textures]
    sprites = [crop_by_rect(i, pygame.Rect(j['src']['x'], j['src']['y'], j['src']['width'], j['src']['height'])) for
               i, j in zip(sheets, textures)]
    for i, s in enumerate(sprites):
        save_after_test(s, '{}_{}'.format(name, i), data)


def test_one_sprite(name: str, data: dict, texes: [pygame.Surface]) -> None:
    sprites = []
    for i in texes:
        try:
            sprites.append(crop(data, i))
        except pygame.error:
            pass
    print('Testing file', name)
    while 1:
        for i in sprites:
            if prompt_correct(i):
                save(name, i, data)
                return None
        print('User looped around!!')


def test_all_sprites(texes: [pygame.Surface]) -> None:
    for i in os.listdir('decompilation/sprite/'):
        test_one_sprite(i.split('.')[0], json.load(open('decompilation/sprite/{}'.format(i))), texes)


def get_all_sprites():
    for i in os.listdir('decompilation/sprite/'):
        get_pic(i.split('.')[0], json.load(open('decompilation/sprite/{}'.format(i))))


def run():
    get_all_sprites()


if __name__ == '__main__':
    run()
