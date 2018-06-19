#!/usr/bin/python3
# coding=utf-8
import threading

import pygame
import globals
import sprite
import font
import typer
import sfx


class Popup:
    def __init__(self):
        self.surface = pygame.Surface((0, 0))
        self.rect = self.surface.get_rect()
        self.dirty = True

    def update(self):
        pass

    def draw(self):
        self.update()
        globals.display.blit(self.surface, self.rect)

    def on_button(self, button):
        pass


class SAVEPopup(Popup):
    def __init__(self):
        super().__init__()
        self.surface = pygame.Surface((445, 186))
        self.rect = self.surface.get_rect()
        self.rect.center = globals.center
        self.cursor = 1
        self.saved = False
        self.finished = False

        self.text_name = font.render(globals.chara.charname)
        self.text_lv = font.render('LV {}'.format(str(globals.chara.lv)))
        self.text_time = font.render(globals.chara.get_play_time())
        self.text_location = font.render(globals.last_save_room_name)
        self.text_save = font.render('Save')
        self.text_return = font.render('Return')
        self.heart = sprite.Sprite.get_sprite('spr_heart')
        sfx.get_sound(0x29fb).play()

    def update(self):
        if self.dirty and not self.finished:
            self.surface.fill(pygame.Color('black'))
            pygame.draw.rect(self.surface, pygame.Color('white'), self.surface.get_rect(), 4)
            self.surface.blit(self.text_name, (32, 32))
            self.surface.blit(self.text_lv, (180, 32))
            self.surface.blit(self.text_time, (328, 32))
            self.surface.blit(self.text_location, (32, 75))
            self.surface.blit(self.text_save, (64, 138))
            self.surface.blit(self.text_return, (253, 138))
            self.surface.blit(self.heart.image[0], (35, 138) if self.cursor == 1 else (224, 138))
            self.dirty = False

    def on_button(self, button):
        self.dirty = True
        if button == globals.left or button == globals.right:
            self.cursor = 2 if self.cursor == 1 else 1
        elif button in globals.cancel:
            self.surface = pygame.Surface((0, 0))
            self.finished = True
        elif button in globals.accept:
            if self.cursor == 2:
                self.surface = pygame.Surface((0, 0))
                self.finished = True
            else:
                if not self.saved:
                    sfx.get_sound(0x29a7).play()
                    globals.chara.save('')
                    self.text_name = font.render(globals.chara.charname, color=pygame.Color(255, 255, 0, 255))
                    self.text_lv = font.render('LV {}'.format(str(globals.chara.lv)),
                                               color=pygame.Color(255, 255, 0, 255))
                    self.text_time = font.render(globals.chara.get_play_time(), color=pygame.Color(255, 255, 0, 255))
                    self.text_location = font.render(globals.last_save_room_name, color=pygame.Color(255, 255, 0, 255))
                    self.text_save = font.render('File saved.', color=pygame.Color(255, 255, 0, 255))
                    self.text_return = pygame.Surface((0, 0))
                    self.heart.image = pygame.Surface((0, 0))
                    self.saved = True
                else:
                    self.surface = pygame.Surface((0, 0))
                    self.finished = True
        else:
            self.dirty = False


class TextPopup(Popup):
    def __init__(self, text: str, on_loop: callable = lambda: None):
        super().__init__()
        self.metatyper = None
        self.text = text
        self.surface = pygame.Surface((504, 200))
        self.on_loop = on_loop
        self.thread = None
        self.skips = None
        self.choice = None
        self.finished = None

    def create_metatyper(self):
        self.metatyper = typer.MetaTyper(self.text, surface=self.surface)
        self.metatyper.on_loop = self.save_surface

    def save_surface(self, surface: pygame.Surface):
        self.surface.blit(surface, (0, 0))
        self.on_loop()

    def run(self):
        self.finished = False
        self.skips, self.choice = self.metatyper.run()
        self.finished = True

    def start(self):
        self.create_metatyper()
        self.thread = threading.Thread(target=self.run, name='thread for TextPopup', daemon=True)
        self.thread.start()
