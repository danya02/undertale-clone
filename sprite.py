#!/usr/bin/python3
import pygame
import threading
SPRITE_DIR = "./sprites/"

class StaticSprite:
    def __setattr(self, attr, value):
        object.__setattr__(self,attr,value)
        if attr == 'pos':
            object.__setattr__(self, 'x', value[0])
            object.__setattr__(self, 'y', value[1])
        elif attr == 'x':
            object.__setattr(self, 'pos', [value, pos[1]])
        elif attr == 'y':
            object.__setattr(self, 'pos', [pos[0], value])

    def __init__(self, sprite=None, pos=(0,0)):
        self.sprite = pygame.Surface((0,0)) if not isinstance(sprite, pygame.Surface) else sprite
        self.pos = list(pos)
        self._display = pygame.display.get_surface()

    def draw(self, update=False):
        self._display.blit(self.sprite, self.pos)
        if update:
            pygame.display.flip()

class DynamicSprite:
    def __setattr(self, attr, value):
        object.__setattr__(self,attr,value)
        if attr == 'pos':
            object.__setattr__(self, 'x', value[0])
            object.__setattr__(self, 'y', value[1])
        elif attr == 'x':
            object.__setattr(self, 'pos', [value, pos[1]])
        elif attr == 'y':
            object.__setattr(self, 'pos', [pos[0], value])

    def __init__(self, frames=None, pos=(0,0), delay=100):
        self.frames = [pygame.Surface((0,0))] if not isinstance(frames, list) else frames
        self.pos = list(pos)
        self.stage = 0
        self.delay = delay
        self._display = pygame.display.get_surface()

    def reset(self):
        self.stage=0

    def draw(self, update=False):
        self._display.blit(self.sprite, self.pos)
        self.stage += 1
        if self.stage + 1 > len(self.frames):
            self.stage = 0
        if update:
            pygame.display.flip()

def get_sprite(name):
    return StaticSprite(pygame.image.load(SPRITE_DIR+name+"_0.png"))
