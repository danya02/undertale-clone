#!/usr/bin/python3
# coding=utf-8
import time
import pygame
import actor
import globals
import sprite


class Typer:
    SKIPPED = 1
    NOTSKIPPED = 0
    CHOICE1 = 10
    CHOICE2 = 20
    NOCHOICE = 15

    def __init__(self):
        """
        Base class for typers.
        """
        pygame.init()
        self.font = pygame.font.Font('fonts/determinationmono.ttf', 32)
        self.antialias = False
        self.color = pygame.Color('white')
        self.text = ''
        self.actor = actor.Actor()
        self.scan_cursor = 0
        self.delay = 0.05
        self.background = pygame.Color('black')
        self.symbols = []
        self.display_symbols = []
        self.letter_spacing = 0
        self.line_spacing = 0
        self.column = 0
        self.line = 0
        self.delay_next = None
        self.delay_skipped_step = False
        self.surface = pygame.Surface((1, 1))
        self.on_symbol = lambda: None
        self.to_on_run_loop = None
        self.on_run_loop = lambda s, o: None
        self.can_skip = True
        self.choice_mode = False
        self.choice = 0
        self.pause = False

    def set_color(self, color: str) -> None:
        """
        Set the following text to be of this color
        :param color: one of symbols in 'XWROYBGPLp' that means one of the colors.
        """
        try:
            self.color = {'X': pygame.Color('black'), 'W': pygame.Color('white'), 'R': pygame.Color('red'),
                          'O': pygame.Color('orange'), 'Y': pygame.Color('yellow'), 'B': pygame.Color('blue'),
                          'G': pygame.Color('green'), 'P': pygame.Color('purple'), 'L': pygame.Color('lightblue'),
                          'p': pygame.Color('pink')}[color]
        except KeyError:
            raise ValueError('color {} not found'.format(color))

    def next_symbol(self) -> float:
        """
        Parse the next symbol. If it is a command, interpret the command instead
        :return: The number of seconds to delay after this if typewriting.
        :raises IndexError if trying to parse past the end of text.
        """
        if self.text[self.scan_cursor] == '\\':  # general-purpose commands
            self.scan_cursor += 1
            symb = self.text[self.scan_cursor]
            self.scan_cursor += 1
            if symb in 'XWROYBGPLp':  # one of the colors
                self.set_color(symb)
                return 0.0
            elif symb == 'E':
                symb = self.text[self.scan_cursor]
                self.scan_cursor += 1
                self.actor.set_emote(symb)
                return 0.0
            elif symb == 'M':
                symb = self.text[self.scan_cursor]
                self.scan_cursor += 1
                self.actor.set_motion(symb)
                return 0.0
            elif symb == 'F':
                symb = self.text[self.scan_cursor]
                self.scan_cursor += 1
                self.actor.set_effect(symb)
                return 0.0
            elif symb == 'C':
                self.choice_mode = True
                return 0.0
        elif self.text[self.scan_cursor] == '^':  # command to delay for thirds of second after symbol
            self.scan_cursor += 1
            num = float(self.text[self.scan_cursor])
            self.scan_cursor += 1
            if self.delay_next:
                tmp = self.delay_next
                self.delay_next = num * 0.333
                return tmp
            else:
                self.delay_next = num * 0.333
                return 0.0
        elif self.text[self.scan_cursor] == '&':  # command to break line
            self.line += 1
            self.column = 0
            self.scan_cursor += 1
        elif self.text[self.scan_cursor] == '/':  # command to await 'accept' key
            self.pause = True
            self.scan_cursor += 1
            return 0.0
        else:  # normal symbols
            self.on_symbol()
            self.symbols.append([self.text[self.scan_cursor], self.line, self.column, self.color])
            self.scan_cursor += 1
            self.column += 1
            if self.delay_next is not None:
                tmp = self.delay_next
                self.delay_next = None
                return tmp
            else:
                return self.delay

    def place_symbols(self) -> None:
        """
        From the symbols list, create a list of surfaces with coords where to blit them.
        """
        for i in self.symbols[len(self.display_symbols):]:
            symb = self.font.render(i[0], self.antialias, i[3])
            x = (self.font.get_linesize() + self.line_spacing) * i[1]
            y = (self.font.size("W")[0] + self.letter_spacing) * i[2]
            self.display_symbols.append((symb, y, x, i[0]))

    def render(self) -> None:
        """
        Render the list of surfaces created by place_symbols.
        """
        self.surface.fill(self.background)
        for i in self.display_symbols:
            self.surface.blit(i[0], (i[1], i[2]))

    def run_wrapper(self) -> None:
        """
        Execute on_run_loop in a safe manner.
        """
        if self.on_run_loop is not None:
            try:
                self.on_run_loop(self.surface, self.to_on_run_loop)
            except TypeError:
                try:
                    self.on_run_loop(self.surface)
                except TypeError:
                    self.on_run_loop()

    def run(self) -> int:
        """
        Iterate over the text, with appropriate delays, running on_run_loop every iteration.
        Return when the text is completely rendered. Return values statically defined by Typer class.
        """
        will_skip = False
        while 1:
            try:
                try:
                    delay = self.next_symbol()
                except TypeError:
                    delay = 0
                self.place_symbols()
                self.render()
                self.run_wrapper()
                if not will_skip:
                    time.sleep(delay if delay else 0)
                else:
                    pass
                if self.can_skip:
                    for i in pygame.event.get(pygame.KEYDOWN):
                        if i.key in globals.cancel:
                            will_skip = True
                while self.pause:
                    for i in pygame.event.get(pygame.KEYDOWN):
                        if i.key in globals.accept:
                            self.pause = False
                if self.choice_mode:
                    heart = sprite.get_sprite('spr_heart', 1)
                    while 1:
                        heart.rect.center = (132, 82) if self.choice == 0 else (325, 82)
                        self.render()
                        self.surface.blit(heart.image, heart.rect)
                        self.run_wrapper()
                        for i in pygame.event.get(pygame.KEYDOWN):
                            if i.key in [globals.left, globals.right]:
                                self.choice = 1 if self.choice is 0 else 0
                            elif i.key in globals.accept:
                                raise UserWarning
            except IndexError:
                return Typer.SKIPPED if will_skip else Typer.NOTSKIPPED
            except UserWarning:
                return Typer.CHOICE1 if self.choice == 0 else Typer.CHOICE2


class MetaTyper:
    """
    Class for creating Typers sequentially.
    """

    def __init__(self, text: [str], on_run_loop: callable = lambda x, y: None, to_on_run_loop=None,
                 clean_param: callable = lambda x: None, **opts):
        self.text = text
        self.on_loop = on_run_loop
        self.on_loop_param = to_on_run_loop
        self.clean_param = clean_param
        self.options = opts
        self.skipcount = 0
        self.choice = Typer.NOCHOICE

    def run(self) -> (int, int):
        """
        Execute text render and collect results.
        :return: 2-tuple of int: how many skips occurred and what is the resulting choice.
        """
        for i in self.text:
            typer = Typer()
            typer.text = i
            typer.on_run_loop = self.on_loop
            typer.to_on_run_loop = self.on_loop_param
            for i in self.options:
                typer.__setattr__(i, self.options[i])
            res = typer.run()
            if res == Typer.SKIPPED:
                self.skipcount += 1
            elif res in [Typer.CHOICE1, typer.CHOICE2]:
                self.choice = res
            self.clean_param(self.on_loop_param)
        return self.skipcount, self.choice


if __name__ == '__main__':
    s = pygame.display.set_mode((480, 200))
    t = Typer()
    t.surface = s
    t.text = '\W* \OBravery^1. \YJustice.\W  &*\B Integrity^1. \GKindness^1.\W &*\P Perseverance^1. \LPatience. \W &' \
             '\W* Using these^1, you were&  able to win at "\RBall Game\W." '
    t.on_run_loop = pygame.display.flip
    t.run()
    time.sleep(5)
    exit(0)
