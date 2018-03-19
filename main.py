#!/usr/bin/python3
# coding=utf-8
import gzip
import sys
import traceback
import time
import pygame
from pygame.locals import *

# our modules are imported below the invoke_dog function


global clock
clock = None
global running
running = True
global room
room = None
if __name__ == '__main__':
    pygame.init()


def scale(img, times):
    return pygame.transform.scale(img, (int(img.get_width() * times), int(img.get_height() * times)))


def invoke_dog(text=None, kind=0):
    """
    Show the Annoying Dog with optional text until user quits.
    Use this as a fatal error handler, or if the SAVE file is FUBAR.
    Supposed to work under as few assumptions as possible.
    """
    pygame.init()
    d = pygame.display.set_mode((800, 600))
    s1 = pygame.image.fromstring(gzip.decompress(
        b'\x1f\x8b\x08\x00\xd8\xb8\xbbY\x02\xffc`\xa0\x14\xfc\xff\xff\x1fB\xc2\x01\\\x90\x18\xbdX\x01%z\tjGv$V\xc7'
        b'\x93g).\x13\xe0"h\n\x881\x01Y1ZP\x13\xe3\x184\xff\x92\xe1\x8b\xffd\x81\x11\xa5\x97\xd4\x80\xc5\xaf\x17\x7f'
        b'\x94\xe1\x91\xc5\xaa\x12\xab^\x82y\x19\xbf\x08\xe5\x00\x00W\x07lAt\x04\x00\x00'),
        (20, 19), 'RGB')
    s2 = pygame.image.fromstring(gzip.decompress(
        b'\x1f\x8b\x08\x00\x85\xb9\xbbY\x02\xffc`\xa0\x0e\xf8\xff\xff?\x84\x84\x03\xb8 '
        b'\xf1&`\x05\x94\x9b@\xa4!\xc8\xce\xc6\xea\x1dJ\x1c@\xa49h\xca\xc80\x079\xe4\xb1z\x84\xa0\x99\x98\xe6\x93\xea'
        b'\xaf\xffd\x81Q\x13\xb0F+\xb5L\xc0\x1f\xb9\xb8d\xb1\xaa\xc1\x9a\xe4\x08\x9a@RIB]\x00\x00h\x1d1\xcc\xe6\x04'
        b'\x00\x00'),
        (22, 19), 'RGB')
    s1 = scale(s1, 4)
    s2 = scale(s2, 4)
    s3 = pygame.image.fromstring(gzip.decompress(
        b'\x1f\x8b\x08\x00\xe1!\xd9Y\x02\xffc`\x18\x05\x03\t\xfec\x00\xaa\x18\x82\x07\xd0\xc2L"\rGS\x89\xc6 '
        b'\xdbd\xac\xc6\x12i2yQC\xd0\n"\xcd\x84\x88 '
        b'\x93\xc8\xdai\x11\x08d$9\xac\xea\xf1\x84\t\x19\xe1\x80\'vp\x89\xd0:c\x02\x00\x85\xf4\xb8\xa3\x19\x05\x00'
        b'\x00'),
        (29, 15), "RGB")
    s4 = pygame.image.fromstring(gzip.decompress(
        b"\x1f\x8b\x08\x00\xe7!\xd9Y\x02\xffc`\x18\x05C\x1e\xfc'\x1a\xd0\xc2L\xe2\xcdGS\x89\xc6 "
        b"\xdbd\xac\xc6\x12i2I!@\xd0F\x82\xc6b*C#\xd1L\xa0E "
        b"\xe02\x16\x97\xf9X}G0X\xf0\xbb\x99\xa4\x14E^\x02\xa6\x10\x00\x00K\\\xfb\xa9\x19\x05\x00\x00"),
        (29, 15), "RGB")
    s3 = scale(s3, 4)
    s4 = scale(s4, 4)
    try:
        pygame.mixer.music.load(["mus/mus_dance_of_dog.ogg", "mus/mus_sigh_of_dog.ogg"][kind])
    except pygame.error:
        pass
    text_obj = pygame.Surface((1, 1))
    text_objs = []
    scrollable = False
    cursor = 0
    if isinstance(text, str):
        length = 1000
        height = 33
        while not length < 800:
            height -= 1
            try:
                font = pygame.font.Font("fonts/determinationmono.ttf", height)
            except OSError:
                font = pygame.font.SysFont(pygame.font.get_default_font(), height)
            text_obj = font.render(text, 0, pygame.Color('white'))
            length = text_obj.get_width()
    elif isinstance(text, list):
        for i in text:
            length = 1000
            height = 33
            while not length < 800:
                height -= 1
                try:
                    font = pygame.font.Font("fonts/determinationmono.ttf", height)
                except OSError:
                    font = pygame.font.SysFont(pygame.font.get_default_font(), height)
                text_obj = font.render(i, 0, pygame.Color('white'))
                length = text_obj.get_width()
            text_objs += [text_obj]
        scrollable = len(text_objs) != 0
        text_obj = text_objs[0]

    try:
        font = pygame.font.Font("fonts/determinationmono.ttf", 32)
    except OSError:
        font = pygame.font.SysFont(pygame.font.get_default_font(), 32)
    left_pointer = font.render('<', 0, pygame.Color('white'))
    right_pointer = font.render('>', 0, pygame.Color('white'))

    try:
        pygame.mixer.music.play(-1)
    except pygame.error:
        pass
    try:
        while 1:
            for event in pygame.event.get():
                if event.type == QUIT:
                    pygame.quit()
                    sys.exit()
                if event.type == KEYDOWN:
                    if event.key == K_ESCAPE:
                        pygame.quit()
                        sys.exit()
                    elif event.key == K_LEFT:
                        cursor = max(cursor - 1, 0)
                    elif event.key == K_RIGHT:
                        cursor = min(cursor + 1, len(text_objs) - 1)
            try:
                text_obj = text_objs[cursor]
            except IndexError:
                pass

            globals.display.fill(pygame.Color('black'))
            globals.display.blit([s1, s3][kind],
                                 (
                                     400 - int([s1, s3][kind].get_width() / 2),
                                     300 - int([s1, s3][kind].get_height() / 2)))
            globals.display.blit(text_obj, (400 - int(text_obj.get_width() / 2), 450))
            if scrollable:
                if cursor > 0:
                    globals.display.blit(left_pointer, (50, 500))
                if cursor < len(text_objs) - 1:
                    globals.display.blit(right_pointer, (750, 500))

            pygame.display.update()
            pygame.time.wait([250, 500][kind])
            for event in pygame.event.get():
                if event.type == QUIT:
                    pygame.quit()
                    sys.exit()
                if event.type == KEYDOWN:
                    if event.key == K_ESCAPE:
                        pygame.quit()
                        sys.exit()
                    elif event.key == K_LEFT:
                        cursor = max(cursor - 1, 0)
                    elif event.key == K_RIGHT:
                        cursor = min(cursor + 1, len(text_objs) - 1)
            try:
                text_obj = text_objs[cursor]
            except IndexError:
                pass

            globals.display.fill(pygame.Color('black'))
            globals.display.blit([s2, s4][kind],
                                 (
                                     400 - int([s1, s3][kind].get_width() / 2),
                                     300 - int([s1, s3][kind].get_height() / 2)))
            globals.display.blit(text_obj, (400 - int(text_obj.get_width() / 2), 450))
            if scrollable:
                if cursor > 0:
                    globals.display.blit(left_pointer, (50, 500))
                if cursor < len(text_objs) - 1:
                    globals.display.blit(right_pointer, (750, 500))
            pygame.display.update()
            pygame.time.wait([250, 500][kind])
    except pygame.error:
        pygame.quit()
        sys.exit()


if __name__ == "__main__":
    try:
        import globals
        import frisk
        import rooms
        import sprite
        import menu
        import sfx
        import typer

        globals.display = pygame.display.set_mode((646, 505))
    except ImportError as e:
        frisk = None
        rooms = None
        sprite = None
        menu = None
        globals = None
        sfx = None
        typer = None
        exc_type, exc_value, exc_traceback = sys.exc_info()
        output = traceback.format_exception(exc_type, exc_value, exc_traceback)
        output = [i[:-1].translate({ord('\n'): ':'}) for i in output]
        output = list(reversed(output))[:-1]
        invoke_dog(output)


def intro(version=0):
    """
    Play the Undertale intro, as seen on program start. Return when the intro is done.
    """
    if version == 0:  # normal intro
        menu.normal()
    elif version == 1:  # hijacked by Flowey EX
        menu.glitched()
    elif version == 2:  # world destroyed
        menu.gone()


def init():
    globals.start_time = time.time()
    global clock
    clock = pygame.time.Clock()
    chara = frisk.Frisk()
    chara.load('file0')
    chara.set_ini_value("General", "time", 0.0)
    chara.save('')
    globals.chara = chara
    globals.room = rooms.get_room(0)
    pygame.event.set_blocked(
        [pygame.MOUSEBUTTONDOWN, pygame.MOUSEBUTTONUP, pygame.MOUSEMOTION])  # we don't care for mouse interactions




def maincycle():
    while globals.running:
        if globals.room:
            globals.room.draw()
            globals.time = int(time.time()-globals.start_time)


if __name__ == "__main__":
    try:
        init()
        try:
            open('system_information_962')
            intro(2)
        except FileNotFoundError:
            intro()
        maincycle()
    except globals.UndertaleError as e:
        if len(e.args) > 0:
            invoke_dog("", e.args[0])
        else:
            invoke_dog()
    except:
        exc_type, exc_value, exc_traceback = sys.exc_info()
        output = traceback.format_exception(exc_type, exc_value, exc_traceback)
        output = [i[:-1].translate({ord('\n'): ':'}) for i in output]
        output = list(reversed(output))[:-1]
        invoke_dog(output)

    finally:
        globals.running = False
