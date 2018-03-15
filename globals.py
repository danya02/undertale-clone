#!/usr/bin/python3
# coding=utf-8
import pygame
import frisk
import rooms

DEBUG = True

accept = [pygame.K_RETURN, pygame.K_z]
cancel = [pygame.KMOD_SHIFT, pygame.K_x]
option = [pygame.KMOD_CTRL, pygame.K_c]
up = pygame.K_UP
left = pygame.K_LEFT
right = pygame.K_RIGHT
down = pygame.K_DOWN
arrows = [up, left, right, down]

width=646
height=505
center=(int(width/2),int(height/2))

# DO NOT CHANGE THESE to avoid UNDOCUMENTED BAD STUFF.
running = True
event_lock = False

chara = frisk.Frisk()
display = pygame.Surface((1, 1))
room = rooms.Room()


def quit():  # TODO: expand to make quitting safer.
    pygame.quit()
    raise SystemExit


class UndertaleError(Exception):
    """
    Class for fatal errors that bring forth the Dog, but with no text.
    Use when the SAVE is FUBAR, or when the room is in the Dogcheck.
    """
    pass
