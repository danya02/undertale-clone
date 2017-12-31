#!/usr/bin/python3
import pygame
import actor
import time


class Typer:
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
            self.set_color(self.text[self.scan_cursor])
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
        elif self.text[self.scan_cursor] == '^':  # command to delay for seconds after symbol
            self.scan_cursor += 1
            num = float(self.text[self.scan_cursor])
            self.scan_cursor += 1
            self.delay_next = num * 0.4
            return 0.0
        elif self.text[self.scan_cursor] == '&':  # command to break line
            self.line += 1
            self.column = 0
            self.scan_cursor += 1
        else:  # normal symbols
            self.on_symbol()
            self.symbols.append([self.text[self.scan_cursor], self.line, self.column, self.color])
            self.scan_cursor += 1
            self.column += 1
            if self.delay_next is None:
                return self.delay
            else:
                if not self.delay_skipped_step:
                    self.delay_skipped_step = True
                    return self.delay
                tmp = self.delay_next
                self.delay_next = None
                self.delay_skipped_step = False
                return tmp

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
        for i in self.display_symbols:
            self.surface.blit(i[0], (i[1], i[2]))

    def run(self) -> None:
        """
        Iterate over the text, with appropriate delays, running on_run_loop every iteration.
        Return when the text is completely rendered.
        """
        while 1:
            try:
                try:
                    delay = self.next_symbol()
                    time.sleep(delay)
                except TypeError:
                    pass
                self.place_symbols()
                self.render()
                if self.on_run_loop is not None:
                    self.on_run_loop(self.surface, self.to_on_run_loop)
            except IndexError:
                return None


if __name__ == '__main__':
    s = pygame.display.set_mode((750, 750))
    t = Typer()
    t.surface = s
    t.text = '\W* \OBravery^1. \YJustice.\W  &*\B Integrity^1. \GKindness^1.\W &*\P Perseverance^1. \LPatience. \W &' \
             '\W* Using these^1, you were&  able to win at "\RBall Game\W." '
    t.on_run_loop = pygame.display.flip
    t.run()
    time.sleep(5)
    exit(0)
