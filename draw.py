#!/usr/bin/python3
#  coding=utf-8
import threading

import pygame

counter_lock = threading.Lock()
request_counter = 0
timer = pygame.time.Clock()


def flip():
    global request_counter
    with counter_lock:
        request_counter += 1


def flip_loop():
    global request_counter
    while 1:
        while not request_counter:
            timer.tick(30)
        pygame.display.flip()
        with counter_lock:
            request_counter = 0


flip_thread = threading.Thread(target=flip_loop, daemon=True, name='flip loop')
flip_thread.start()
