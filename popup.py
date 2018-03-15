#!/usr/bin/python3
# coding=utf-8
import pygame
import globals
import sprite
import font


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
        self.text_location = font.render('Minus World')  # TODO: add reference to room
        self.text_save = font.render('Save')
        self.text_return = font.render('Return')
        self.heart = sprite.get_sprite('spr_heart')

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
            self.surface.blit(self.heart.image, (35, 138) if self.cursor == 1 else (224, 138))
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
                    globals.chara.save('')
                    self.text_name = font.render(globals.chara.charname, color=pygame.Color(255, 255, 0, 255))
                    self.text_lv = font.render('LV {}'.format(str(globals.chara.lv)),
                                               color=pygame.Color(255, 255, 0, 255))
                    self.text_time = font.render(globals.chara.get_play_time(), color=pygame.Color(255, 255, 0, 255))
                    self.text_location = font.render('Minus World', color=pygame.Color(255, 255, 0,
                                                                                       255))  # TODO: add reference to room
                    self.text_save = font.render('File saved.', color=pygame.Color(255, 255, 0, 255))
                    self.text_return = pygame.Surface((0, 0))
                    self.heart.image = pygame.Surface((0, 0))
                    self.saved = True
                else:
                    self.surface = pygame.Surface((0, 0))
                    self.finished = True
        else:
            self.dirty = False
