#!/usr/bin/python3
import pygame
import time


def await_keypress(keys: list, timeout: int = 0):
    """Wait until a key from the keys list is pressed, or the timeout in milliseconds is reached, whichever comes first.
    Return a 2-tuple of milliseconds that have passed (not reliable) and one of the pressed keys that match, None if timeout is reached.
    If timeout is 0, then only a successful keypress will return."""
    started_at = time.time()
    seeked_key = None
    while not seeked_key:
        pygame.event.pump() # TODO: check if this breaks multithreaded keypress seek.
        keypress = pygame.key.get_pressed()
        for i in keys:
            if keypress[i]:
                seeked_key = i
                break
        if int((time.time() - started_at) * 1000) >= timeout != 0:
            break
            return int((time.time() - started_at) * 1000), None

    return int((time.time() - started_at) * 1000), seeked_key
