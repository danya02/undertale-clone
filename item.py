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

class Stick(Item):
    def __init__(self):
        self.id = 3
        self.sell0 = 150
        self.sell1 = 151
        self.sell2 = 190
        self.name = "Stick"
        self.shortname = "Stick"
        self.seriousname = "Stick"
    def check(self):
        return [s(2651)]
    def use(self, chara):
        chara.heal(10)
        chara.inventory.remove(self)
        return [s(2736)]
    def drop(self, chara):
        chara.inventory.remove(self)
        return None

class Bandage(Item):
    def __init__(self):
        self.id = 4
        self.sell0 = 150
        self.sell1 = 151
        self.sell2 = 190
        self.name = "Bandage"
        self.shortname = "Bandage"
        self.seriousname = "Bandage"
    def check(self):
        return [s(2652)]
    def use(self, chara):
        chara.heal(10)
        chara.inventory.remove(self)
        return [s(2737)+s(2738)]
    def drop(self, chara):
        chara.inventory.remove(self)
        return None

class RockCandy(Item):
    def __init__(self):
        self.id = 5
        self.sell0 = 3
        self.sell1 = 4
        self.sell2 = 6
        self.name = "Rock Candy"
        self.shortname = "RockCandy"
        self.seriousname = "RockCandy"
    def check(self):
        return [s(2653), s(2654)]
    def use(self, chara):
        chara.heal(1)
        chara.inventory.remove(self)
        return [s(2739)]
    def drop(self, chara):
        chara.inventory.remove(self)
        return None

class PumpkinRings(Item):
    def __init__(self):
        self.id = 6
        self.sell0 = 3
        self.sell1 = 4
        self.sell2 = 6
        self.name = "Pumpkin Rings"
        self.shortname = "PunkRings"
        self.seriousname = "PmknRings"
    def check(self):
        return [s(2655)]
    def use(self, chara):
        chara.heal(8)
        chara.inventory.remove(self)
        return [s(2740)]
    def drop(self, chara):
        chara.inventory.remove(self)
        return None

class StoicOnion(Item):
    def __init__(self):
        self.id = 8
        self.sell0 = 10
        self.sell1 = 11
        self.sell2 = 15
        self.name = "StoicOnion"
        self.shortname = "StocOnion"
        self.seriousname = "Onion"
    def check(self):
        return [s(2657)]
    def use(self, chara):
        chara.heal(5)
        chara.inventory.remove(self)
        return [s(2743)+s(2744)]
    def drop(self, chara):
        chara.inventory.remove(self)
        return None

class GhostFruit(Item):
    def __init__(self):
        self.id = 9
        self.sell0 = 10
        self.sell1 = 11
        self.sell2 = 15
        self.name = "Ghost Fruit"
        self.shortname = "GhostFrut"
        self.seriousname = "GhstFruit"
    def check(self):
        return [s(2658)]
    def use(self, chara):
        chara.heal(16)
        chara.inventory.remove(self)
        return [s(2745)]
    def drop(self, chara):
        chara.inventory.remove(self)
        return None

class PuppydoughIcecream(Item):
    def __init__(self):
        self.id = 18
        self.sell0 = 2
        self.sell1 = 3
        self.sell2 = 5
        self.name = "Puppydough Icecream"
        self.shortname = "PDIceCream"
        self.seriousname = "Ice Cream"
    def check(self):
        return [s(2667)]
    def use(self, chara):
        chara.heal(28)
        chara.inventory.remove(self)
        return [s(2775)]
    def drop(self, chara):
        chara.inventory.remove(self)
        return None
