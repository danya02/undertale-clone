#!/usr/bin/python3
# coding=utf-8
import os
import pygame
import random
import string
import threading

import sprite
import typer
import globals


def scale(img, times):
    return pygame.transform.scale(img, (int(img.get_width() * times), int(img.get_height() * times)))


def normal():
    pygame.display.set_caption('UNDERTALE')
    pygame.mixer.music.load("mus/mus_story_91.ogg")
    image = sprite.get_dynamic_sprite('spr_introimage', 2)
    image.rect.x = 0
    image.rect.y = 0

    text = ["Long ago^1, two races&ruled over Earth^1:&HUMANS and MONSTERS^5. ^1  ",
            "One day^1, war broke&out between the two&races^5. ^1  ",
            "After a long battle^1,&the humans were&victorious^5. ^1  ",
            "They sealed the monsters&underground with a magic&spell^4. ^1  ",
            "Many years later^2.^2.^4. ^1  ",
            "      MT. EBOTT&         201X^9  ",
            "Legends say that those&who climb the mountain&never return^5.^3  ",
            " ^9 ^5  ",
            " ^9 ^5  ",
            " ^9 ^9 ^9 ^9 ^9 ^9  "]
    pygame.mixer.music.play()

    def update(s: pygame.Surface, d: pygame.Surface):
        d.blit(s, (150, 300))
        pygame.display.update()

    for i in text:
        globals.display.blit(image.image, image.rect)
        s = pygame.Surface((504, 200))
        t = typer.Typer()
        t.text = i
        t.surface = s
        t.to_on_run_loop = globals.display
        t.on_run_loop = update
        t.run()
        image.update(True)
    pygame.mixer.music.load("mus/mus_intronoise.ogg")
    i = pygame.image.load("sprites/splash.png")
    i = scale(i, 2.5)
    globals.display.blit(i, (323 - (i.get_width() / 2), 252 - (i.get_height() / 2)))
    pygame.display.update()
    pygame.mixer.music.play()
    pygame.time.wait(5000)


def glitched():
    pygame.display.set_caption('UNDERTALE')
    pygame.mixer.music.load("mus/mus_story_91.ogg")
    images = []
    for i in ["_0", "2_0"]:
        images += [scale(pygame.image.load("sprites/spr_fakeintro" + str(i) + ".png"), 2.5)]
    pygame.mixer.music.play()
    globals.display.blit(images[0], (323 - (images[0].get_width() / 2), 0))
    pygame.display.update()
    pygame.time.delay(6000)
    pygame.time.delay(2000)
    tmp = object()

    def glitch():
        c = pygame.time.Clock()
        while 1:
            tmp
            c.tick(10)
            s = ''
            for i in range(random.randint(4, 32)):
                s += random.choice(string.printable)
            pygame.display.set_caption(s)

    t = threading.Thread(target=glitch, name='title glitcher')
    t.start()

    pygame.mixer.music.load("mus/mus_story_stuck.ogg")
    pygame.mixer.music.play(-1)
    globals.display.blit(images[1], (323 - (images[1].get_width() / 2), 0))
    pygame.display.update()
    pygame.time.wait(5000)
    del tmp
    pygame.display.set_caption('Floweytale')


def gone():
    pygame.display.set_caption('')
    pygame.mixer.music.load("mus/mus_wind.ogg")
    pygame.mixer.music.play(-1)
    for i in range(600 if not globals.DEBUG else 5):
        pygame.time.wait(1000)
    surface = pygame.Surface((504,200))
    def update(s: pygame.Surface, d: pygame.Surface):
        d.blit(s, (150, 300))
        pygame.display.update()

    def clean(s: pygame.Surface):
        s.fill(pygame.Color('black'))
        return None
    def create(text):
        return typer.MetaTyper(text, update, globals.display, clean, delay=0.01, surface=surface,can_skip=False)
    text = ['Interesting./',
            'You want to go back./',
            'You want to go bac^1k&to the worl^2d&you destroyed./',
            'It was you who pushed&everythin^1g to its edge./',
            'It was you who led the worl^1d&to its destruction./',
            'But you cannot accept it./',
            'You think you are above&consequences.&         Yes         No\C']
    mt = create(text)
    s, choice = mt.run()
    text = ['Exactly./' if choice == typer.Typer.CHOICE1 else 'Then what are you looking for?/', '  ']
    mt = create(text)
    mt.run()
    globals.display.fill(pygame.Color('black'))
    pygame.display.flip()
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
        text = ['Then stay here for&all eternity./','']
        mt = create(text)
        s, choice = mt.run()
        globals.display.fill(pygame.Color('black'))
        pygame.display.flip()
        while 1:
            pass
    if choice == typer.Typer.CHOICE1:
        text = ['Then it is agreed./',
                'You will give me your SOUL.& &         Yes         No\C']
        mt = create(text)
        s, choice = mt.run()
        if choice == typer.Typer.CHOICE1:
            text = ['.../',
                    'Then^1, it is done./']
            mt = create(text)
            s, choice = mt.run()
            try:
                os.remove('system_information_962')
            except FileNotFoundError:
                pass
            with open('system_information_963', 'w') as a:
                a.write('a')
            exit(0)
        else:
            eternal()
    else:
        eternal()
