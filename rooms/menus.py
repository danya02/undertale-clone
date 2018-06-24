#!/usr/bin/python3
# coding=utf-8
import random
import string
import threading

import pygame

import draw
import globals
import rooms
import sprite
import typer
from rooms import common


class Menu(common.Room):
    def __init__(self):
        super().__init__()
        self.background = pygame.Surface((0, 0))


class IntroScreen(Menu):
    def __init__(self):
        super().__init__()
        self.image = sprite.Sprite.get_sprite('spr_introimage', 2)
        self.image.rect.x = 0
        self.image.rect.y = 0
        self.text_layer = draw.get_layer(32768)
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
        def update(s: pygame.Surface, d: draw.Layer):
            d.surface.blit(s, (150, 300))
            d.flip()

        if not globals.DEBUG:
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
                self.image.update(True)
        pygame.mixer.music.load("mus/mus_intronoise.ogg")
        i = pygame.image.load("sprites/splash.png")
        i = sprite.scale(i, 2)
        self.background_layer.surface.blit(i, (
            globals.screen_rect.right / 2 - i.get_width() / 2, globals.screen_rect.bottom / 2 - i.get_height() / 2))
        self.background_layer.flip()
        self.text_layer.destroy()
        pygame.mixer.music.play()
        pygame.time.wait(5000)


class FakeIntroScreen(Menu):
    def __init__(self):
        super().__init__()
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
