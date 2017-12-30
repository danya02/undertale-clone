#!/usr/bin/python3
import pygame
import actor


class Typer:
    def __init__(self):
        pygame.init()
        self.font = pygame.font.SysFont('Liberation', 32)
        self.antialias = False
        self.color = pygame.Color('white')
        self.text = ''
        self.actor = actor.Actor()
        self.scan_cursor = 0
        self.delay = 0
        self.symbols = []
        self.display_symbols = []
        self.letter_spacing = 0
        self.line_spacing = 0
        self.column = 0
        self.line = 0
        self.symbol_delay = 0.0
        self.surface = pygame.Surface((1, 1))
        self.on_symbol = lambda: None

    def set_color(self, color: str):
        try:
            self.color = {'X': pygame.Color('black'), 'W': pygame.Color('white'), 'R': pygame.Color('red'),
                          'O': pygame.Color('orange'), 'Y': pygame.Color('yellow'), 'B': pygame.Color('blue'),
                          'G': pygame.Color('green'), 'P': pygame.Color('purple'), 'L': pygame.Color('lightblue'),
                          'p': pygame.Color('pink')}[color]
            return 'c{}'.format(self.text[self.scan_cursor])
        except KeyError:
            raise ValueError('color {} not found'.format(color))

    def next_symbol(self):
        if self.text[self.scan_cursor] == '\\':  # general-purpose commands
            self.scan_cursor += 1
            self.set_color(self.text[self.scan_cursor])
            symb = self.text[self.scan_cursor]
            self.scan_cursor += 1
            if symb in 'XWROYBGPLp':  # one of the colors
                print('color:', symb)
                # self.scan_cursor += 1
                return self.set_color(symb)
            elif symb == 'E':
                symb = self.text[self.scan_cursor]
                self.scan_cursor += 1
                return self.actor.set_emote(symb)
            elif symb == 'M':
                symb = self.text[self.scan_cursor]
                self.scan_cursor += 1
                return self.actor.set_motion(symb)
            elif symb == 'F':
                symb = self.text[self.scan_cursor]
                self.scan_cursor += 1
                return self.actor.set_effect(symb)

        elif self.text[self.scan_cursor] == '^':  # command to delay for seconds after symbol
            self.scan_cursor += 1
            num = float(self.text[self.scan_cursor])
            self.scan_cursor += 1
            return num
        elif self.text[self.scan_cursor] == '&':  # command to break line
            self.line += 1
            self.column = 0
            self.scan_cursor += 1
        else:  # normal symbols
            self.symbols.append([self.text[self.scan_cursor], self.line, self.column])
            self.scan_cursor += 1
            self.column += 1
            return self.symbol_delay

    def place_symbols(self):
        for i in self.symbols[len(self.display_symbols):]:
            symb = self.font.render(i[0], self.antialias, self.color)
            x = (self.font.get_linesize() + self.line_spacing) * i[1]
            y = (self.font.size("W")[0] + self.letter_spacing) * i[2]
            self.display_symbols.append((symb, y, x, i[0]))

    def render(self):
        for i in self.display_symbols:
            self.surface.blit(i[0], (i[1], i[2]))


if __name__ == '__main__':
    s = pygame.display.set_mode((750, 750))
    t = Typer()
    t.surface = s
    t.text = '\W* \OBravery^1. \YJustice.\W  &*\B Integrity^1. \GKindness^1.\W &*\P Perseverance^1. \LPatience. \W &' \
             '\W* Using these^1, you were&  able to win at "\RBall Game\W." '
    while 1:
        try:
            input()
            t.next_symbol()
            t.place_symbols()
            t.render()
            pygame.display.flip()
        except IndexError:
            pass
