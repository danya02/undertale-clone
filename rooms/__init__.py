#!/usr/bin/python3
import pygame
import objects


class Room:
    def __init__(self, *args):
        self.background = pygame.Surface((800, 600))
        self.bg_pan = (0, 0)
        self.objects = []
        self.song = None
        self._display_ = pygame.display.get_surface()

    def draw(self):
        self._display_.blit(self.background, self.bg_pan)
        for i in self.objects:
            self._display_.blit(i.sprite.sprite, i.pos)


class Room_TEST1(Room):
    def __init__(self):
        super().__init__(self)
        self.objects = [objects.RaiseException(), objects.TestSAVEPoint()]
