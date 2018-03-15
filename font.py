#!/usr/bin/python3
#  coding=utf-8
import pygame

fonts = [pygame.font.Font('fonts/{}.ttf'.format(i), j) for i, j in
         [('determinationsans', 32), ('determinationmono', 32), ('undertalepapyrus', 32), ('undertalesans', 32)]]


def render(text: str, font: int = 0, color: pygame.Color = pygame.Color('white')):
    return fonts[font].render(text, False, color)