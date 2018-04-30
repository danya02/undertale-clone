#!/usr/bin/python3
# coding=utf-8
import pygame
import objects
import globals
from rooms.common import Room, RoomWalkable


class Room_TEST1(RoomWalkable):
    def __init__(self):
        RoomWalkable.__init__(self)
        self.name = 'Test Room 1'
        self._display_ = pygame.display.get_surface()
        self.objects = [objects.RaiseException((100, 100)), objects.SAVEPoint((200, 200)),
                        objects.TestTextBoxObject((300, 300))]


class Room_TEST2(RoomWalkable):
    def __init__(self):
        RoomWalkable.__init__(self)
        self.name = 'Test Room 2'
        self.background.fill(pygame.Color(127, 127, 127, 255))
        self._display_ = pygame.display.get_surface()
        self.objects = [objects.RaiseException((100, 100))]


class Room_Unwalkable_Test(Room):
    def __init__(self):
        Room.__init__(self)
        self.id = 0
        self.background = pygame.Surface((800, 600))
        self.bg_pan = (0, 0)
        self.objects = []
        self.song = None
        self._display_ = globals.display
        self.objects = [objects.TestMovingObject((200, 200))]
        self.fade_phase = 0
        self.fade_direction = 1

    def update_loop(self):
        self.fade_phase = 0
        self.fade_direction = 1
        while self.run_update:
            self.fade_phase += self.fade_direction
            if self.fade_phase >= 255:
                self.fade_direction = -1
            elif self.fade_phase <= 0:
                self.fade_direction = 1
            self.background.fill(pygame.Color(self.fade_phase, abs(self.fade_phase - 127), 255 - self.fade_phase))
