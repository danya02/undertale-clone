#!/usr/bin/python3
import strings
import os
import random

s = lambda l: strings.get_string(l) # shorthand for lines.

class Item:
    def __init__(self):
        self.id = None
        self.sell0 = None
        self.sell1 = None
        self.sell2 = None
        self.name = None
        self.shortname = None
        self.seriousname = None
    def check(self):
        pass
    def use(self, chara):
        pass
    def drop(self, chara):
        pass

class None(Item):
    def __init__(self):
        self.id = 0
        self.sell0 = None
        self.sell1 = None
        self.sell2 = None
        self.name = ""
        self.shortname = ""
        self.seriousname = ""
    def check(self):
        return [s(2648)]
    def use(self, chara):
        os.abort()
    def drop(self, chara):
        os.abort()

class MonsterCandy(Item):
    def __init__(self):
        self.id = 1
        self.sell0 = 25
        self.sell1 = 26
        self.sell2 = 34
        self.name = "Monster Candy"
        self.shortname = "MnstrCndy"
        self.seriousname = "MnstrCndy"
    def check(self):
        return [s(2649)]
    def use(self, chara):
        chara.heal(10)
        chara.inventory.remove(self)
        return [s(2721), s(random.choice([2723, 2724])]
    def drop(self, chara):
        chara.inventory.remove(self)
        return None

class CroquetRoll(Item):
    def __init__(self):
        self.id = 2
        self.sell0 = 10
        self.sell1 = 11
        self.sell2 = 15
        self.name = "Croquet Roll"
        self.shortname = "CroqtRoll"
        self.seriousname = "CroqtRoll"
    def check(self):
        return [s(2650)]
    def use(self, chara):
        chara.heal(10)
        chara.inventory.remove(self)
        return [s(random.choice([2725, 2726])]
    def drop(self, chara):
        chara.inventory.remove(self)
        return None
