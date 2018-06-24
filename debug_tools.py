#!/usr/bin/python3
import pygame


def show_surface(s: pygame.Surface):
    d = pygame.display.set_mode((s.get_size()))
    pygame.display.set_caption('Debug Surface viewer')
    d.blit(s, (0, 0))
    pygame.display.update()
