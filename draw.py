#!/usr/bin/python3
#  coding=utf-8
import threading
import math
import pygame
import globals


class Layer:
    def __init__(self):
        self.surface = pygame.Surface((globals.width, globals.height),pygame.SRCALPHA, 32).convert_alpha()
        self.surface_draw = self.surface.copy()
        self.weight = 0
        self.draw = True
        self.want_removed = False

    def hide(self):
        self.draw = False

    def show(self):
        self.draw = True

    def __del__(self):
        self.destroy()

    def destroy(self):
        self.weight = math.inf
        self.draw = False
        self.want_removed = True

    def flip(self):
        self.surface_draw = self.surface.copy()

    def in_between(self, a, b):
        self.weight = (a.weight + b.weight) / 2

    def clear(self):
        self.surface.fill(pygame.Color(0, 0, 0, 0))


def draw_loop():
    clock = pygame.time.Clock()
    while globals.running:
        for i in sorted(globals.layers, reverse=True):
            print(i, end=' ')
            if globals.layers[i].want_removed:
                globals.layers.pop(i)
            else:
                if globals.layers[i].draw:
                    globals.display.blit(globals.layers[i].surface_draw, (0, 0))
        print()
        pygame.display.flip()
        clock.tick(30)


def init():
    draw_thread = threading.Thread(target=draw_loop, daemon=True, name='global layer blitter')
    draw_thread.start()


def get_layer(weight: int) -> Layer:
    if weight in globals.layers:
        return globals.layers[weight]
    l = Layer()
    l.weight = weight
    globals.layers.update({weight: l})
    return l
