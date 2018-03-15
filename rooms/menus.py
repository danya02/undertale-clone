#!/usr/bin/python3
# coding=utf-8
import pygame

from rooms import common


class Menu(common.Room):
    def __init__(self):
        super().__init__()
        self.background = pygame.Surface((0, 0))
