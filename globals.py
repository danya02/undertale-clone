#!/usr/bin/python3
# coding=utf-8
import pygame
import frisk

DEBUG = True

accept = [pygame.K_RETURN, pygame.K_z]
cancel = [pygame.KMOD_SHIFT, pygame.K_x]
option = [pygame.KMOD_CTRL, pygame.K_c]
up = pygame.K_UP
left = pygame.K_LEFT
right = pygame.K_RIGHT
down = pygame.K_DOWN

chara = frisk.Frisk()
display = pygame.Surface((1, 1))
