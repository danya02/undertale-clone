#!/usr/bin/python3
# coding=utf-8
import pygame
import objects
import globals
from rooms.common import Room, RoomWalkable


class Room_TEST1(RoomWalkable):
    def __init__(self):
        super(RoomWalkable, self).__init__()
        self._display_ = pygame.display.get_surface()
        self.objects = [objects.RaiseException((100, 100)), objects.TestSAVEPoint((200, 200))]


class Room_Unwalkable_Test(Room):
    def __init__(self):
        super(Room, self).__init__()
        self.id = 0
        self.background = pygame.Surface((800, 600))
        self.bg_pan = (0, 0)
        self.objects = []
        self.song = None
        self._display_ = globals.display
        self.objects = [objects.TestMovingObject((200, 200))]
