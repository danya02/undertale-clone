#!/usr/bin/python3
# coding=utf-8
import pygame
import os

sounds = {}
LOADED = False
try:
    for i in os.listdir('./sfx/'):
        try:
            sounds.update({int(i.split('.')[0], 16): pygame.mixer.Sound('./sfx/' + i)})
        except ValueError:
            pass
        LOADED = True
except pygame.error:
    pass


def get_sound(sound: int) -> pygame.mixer.Sound:
    """
    Return a Sound with this identifier.
    Sound can be specified by int or a '0x' identifier.
    """
    if not LOADED:
        raise EnvironmentError('files not loaded')
    try:
        return sounds[int(sound, 0)]
    except TypeError:
        return sounds[sound]
