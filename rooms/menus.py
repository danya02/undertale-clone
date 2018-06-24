#!/usr/bin/python3
# coding=utf-8
import os
import random
import string
import threading

import pygame

import draw
import font
import input
import globals
import rooms
import sprite
import typer
from rooms import common


class Menu(common.Room):
    def __init__(self):
        super().__init__()
        self.background = pygame.Surface((0, 0))


class room_introstory(Menu):
    def __init__(self):
        super().__init__()
        self.image = sprite.Sprite.get_sprite('spr_introimage', 2)
        self.image.rect.x = 0
        self.image.rect.y = 0
        self.id = 1
        self.text_layer = draw.get_layer(32768)
        self.leave_intro = False
        self.text = ["Long ago^1, two races&ruled over Earth^1:&HUMANS and MONSTERS^5. ^1  ",
                     "One day^1, war broke&out between the two&races^5. ^1  ",
                     "After a long battle^1,&the humans were&victorious^5. ^1  ",
                     "They sealed the monsters&underground with a magic&spell^4. ^1  ",
                     "Many years later^2.^2.^4. ^1  ",
                     "      MT. EBOTT&         201X^9  ",
                     "Legends say that those&who climb the mountain&never return^5.^3  ",
                     " ^9 ^5  ",
                     " ^9 ^5  ",
                     " ^9 ^9 ^9 ^9 ^9 ^9  "]

    def on_enter(self):
        if super().on_enter():
            pygame.display.set_caption('UNDERTALE')
            pygame.mixer.music.load("mus/mus_story_91.ogg")
            pygame.mixer.music.play()
            self.show_intro()
            globals.chara.go_to_room(rooms.Room_TEST1())

    def show_intro(self):
        self.text_layer.show()

        def update(s: pygame.Surface, d: draw.Layer):
            d.surface.blit(s, (150, 300))
            d.flip()

        if not globals.DEBUG: # TODO: implement keyboard-based skipping.
            for i in self.text:
                self.background_layer.surface.blit(self.image.image[0], self.image.rect)
                self.background_layer.flip()
                s = pygame.Surface((504, 200))
                t = typer.Typer()
                t.text = i
                t.surface = s
                t.to_on_run_loop = self.text_layer
                t.on_run_loop = update
                t.run()
                self.image.update(True)  # TODO: fix final oversized sprite

    def on_exit(self):
        self.text_layer.destroy()


class room_introimage(Menu):
    def __init__(self):
        super().__init__()
        self.id = 2
        self.text_layer = draw.get_layer(32768)
        self.return_ = True

    def on_enter(self):
        self.show_image()
        if self.return_:
            globals.chara.go_to_room(rooms.room_introstory)

    def show_image(self):
        pygame.mixer.music.load("mus/mus_intronoise.ogg")
        i = pygame.image.load("sprites/splash.png")
        i = sprite.scale(i, 2)
        self.background_layer.surface.blit(i, (
            globals.screen_rect.right / 2 - i.get_width() / 2, globals.screen_rect.bottom / 2 - i.get_height() / 2))
        self.background_layer.flip()
        self.text_layer.clear()
        pygame.mixer.music.play()
        if input.await_keypress(globals.accept, 2000)[1]:
            self.leave()
        s = font.render('[PRESS Z OR ENTER]', 'fnt_small')
        r = s.get_rect()
        r.centerx = globals.screen_rect.centerx
        r.centery = globals.screen_rect.height * 0.75
        self.text_layer.surface.blit(s, r)
        self.text_layer.flip()
        if input.await_keypress(globals.accept, 5000)[1]:
            self.leave()

    def leave(self):
        globals.chara.go_to_room(rooms.get_room('room_area1'))
        self.return_ = False


class room_f_intro(Menu):
    def __init__(self):
        super().__init__()
        self.id = 291
        self.image = sprite.Sprite.get_sprite('spr_fakeintro', 2)
        self.image2 = sprite.Sprite.get_sprite('spr_fakeintro2', 2)
        self.image.rect.x = 0
        self.image.rect.y = 0
        self.text_layer = draw.get_layer(32768)
        self.text = ["Long ago^1, two races&ruled over Earth^1:&HUMANS and MONSTERS. \E1 ^1 %",
                     "One day^1, th^7ey all&disappeared without&a trace."]

    def on_enter(self):
        if super().on_enter():
            pygame.display.set_caption('UNDERTALE')
            pygame.mixer.music.load("mus/mus_story_91.ogg")
            pygame.mixer.music.play()
            self.show_intro()
            globals.chara.go_to_room(rooms.Room_TEST1())

    def show_intro(self):
        def update(s: pygame.Surface, d: draw.Layer):
            d.surface.blit(s, (150, 300))
            d.flip()

        self.background_layer.surface.blit(self.image.image[0], self.image.rect)
        self.background_layer.flip()
        s = pygame.Surface((504, 200))
        t = typer.Typer()
        t.text = "Long ago^1, two races&ruled over Earth^1:&HUMANS and MONSTERS. \E1 ^1 %"
        t.surface = s
        t.to_on_run_loop = self.background_layer
        t.on_run_loop = update
        t.run()

        s = pygame.Surface((504, 200))
        t = typer.Typer()
        t.text = "One day^1, th"
        t.surface = s
        t.to_on_run_loop = self.background_layer
        t.on_run_loop = update
        t.run()

        pygame.time.delay(250)
        tmp = object()

        def glitch():
            c = pygame.time.Clock()
            while 1:
                try:
                    tmp
                except NameError:
                    break
                c.tick(20)
                s = ''
                for i in range(random.randint(4, 32)):
                    s += random.choice(string.printable)
                pygame.display.set_caption(s)

        t = threading.Thread(target=glitch, name='title glitcher')
        t.start()

        pygame.mixer.music.load("mus/mus_story_stuck.ogg")
        pygame.mixer.music.play(-1)
        self.background_layer.surface.blit(self.image2.image[0], self.image.rect)
        self.background_layer.flip()
        self.text_layer.destroy()
        pygame.time.wait(5000)
        del tmp
        pygame.time.wait(200)
        pygame.display.set_caption('Floweytale')


class room_nothingness(Menu):
    def __init__(self):
        super().__init__()
        self.id = 324

    def on_enter(self):
        if super().on_enter():
            self.run_actions()

    def run_actions(self):
        pygame.display.set_caption('  ')
        pygame.mixer.music.load("mus/mus_wind.ogg")
        pygame.mixer.music.play(-1)
        for i in range(600 if not globals.DEBUG else 5):
            pygame.time.wait(1000)
        surface = pygame.Surface((504, 200))

        def update(s: pygame.Surface, d: draw.Layer):
            d.surface.blit(s, (150, 300))
            d.flip()

        def clean(s: draw.Layer):
            s.surface.fill(pygame.Color('black'))
            return None

        def create(text):
            return typer.MetaTyper(text, update, self.background_layer, clean, delay=0.1, surface=surface,
                                   can_skip=False)

        text = ['Interesting./',
                'You want to go back./',
                'You want to go bac^1k&to the worl^2d&you destroyed./',
                'It was you who pushed&everythin^1g to its edge./',
                'It was you who led the worl^1d&to its destruction./',
                'But you cannot accept it./',
                'You think you are above&consequences.&         Yes         No\C'] if not globals.DEBUG else [
            'Interesting./', 'You think you are above&consequences.&         Yes         No\C']
        mt = create(text)
        s, choice = mt.run()
        text = ['Exactly./' if choice == typer.Typer.CHOICE1 else 'Then what are you looking for?/', '  ']
        mt = create(text)
        mt.run()
        self.background_layer.surface.fill(pygame.Color('black'))
        self.background_layer.flip()
        pygame.time.wait(7000)
        text = ['Perhaps./',
                'We can reach a compromise./',
                'You still have somethin^1g&I want./',
                'Give it to me./',
                'And I will bring this&world back./',
                ' & &         Yes         No\C']
        mt = create(text)
        s, choice = mt.run()

        def eternal():
            text = ['Then stay here for&all eternity./', '']
            mt = create(text)
            mt.run()
            self.background_layer.destroy()
            pygame.display.flip()
            while 1:
                pass

        if choice == typer.Typer.CHOICE1:
            text = ['Then it is agreed./',
                    'You will give me your SOUL.& &         Yes         No\C']
            mt = create(text)
            s, choice = mt.run()
            if choice == typer.Typer.CHOICE1:
                try:
                    os.remove('system_information_962')
                except FileNotFoundError:
                    pass
                with open('system_information_963', 'w') as a:
                    a.write('a')
                text = ['.../',
                        'Then^1, it is done./']
                mt = create(text)
                mt.run()
                self.background_layer.destroy()
                os.abort()
            else:
                eternal()
        else:
            eternal()
