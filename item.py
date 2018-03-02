#!/usr/bin/python3
# coding=utf-8
import os
import random


class Item:
    def __int__(self):
        return int(self.id)

    def __init__(self):
        self.id = 0
        self.sell0 = 0
        self.sell1 = 0
        self.sell2 = 0
        self.strength = 0
        self.defense = 0
        self.name = None
        self.shortname = None
        self.seriousname = None

    def check(self):
        pass

    def use(self, chara):
        pass

    def drop(self, chara):
        chara.inventory.remove(self)
        msgtype = random.randint(0, 100)
        msg = '* The ' + self.name + ' was&  thrown away.'
        msg = '* You put the ' + self.name + '&  on the ground and gave it a&  little pat.' if msgtype > 40 else msg
        msg = '* You threw the ' + self.name + '&  on the ground like the piece&  of trash it is.' if msgtype > 60 else msg
        msg = '* You abandoned the &  ' + self.name + '.' if msgtype > 80 else msg
        return [msg]


class Weapon(Item):
    def __init__(self):
        super().__init__()
        self.strength = 0


class Armor(Item):
    def __init__(self):
        super().__init__()
        self.defense = 0


class Null(Item):
    def __init__(self):
        super().__init__()
        self.id = 0
        self.name = ""
        self.shortname = ""
        self.seriousname = ""

    def check(self):
        return ['* If you are reading this,&  I messed up somehow./%']

    def use(self, chara):
        os.abort()

    def drop(self, chara):
        os.abort()


class MonsterCandy(Item):
    def __init__(self):
        super().__init__()
        self.id = 1
        self.sell0 = 25
        self.sell1 = 26
        self.sell2 = 34
        self.name = "Monster Candy"
        self.shortname = "MnstrCndy"
        self.seriousname = "MnstrCndy"

    def check(self):
        return ['* "Monster Candy" - Heals 10 HP&* Has a distinct,^1 &  non-licorice flavor./%']

    def use(self, chara):
        chara.heal(10)
        chara.inventory.remove(self)
        return ['* You ate the Monster Candy.' + random.choice(
            [' &* Very un-licorice-like.', ' &* ... tastes like licorice.'])]


class CroquetRoll(Item):
    def __init__(self):
        super().__init__()
        self.id = 2
        self.sell0 = 10
        self.sell1 = 11
        self.sell2 = 15
        self.name = "Croquet Roll"
        self.shortname = "CroqtRoll"
        self.seriousname = "CroqtRoll"

    def check(self):
        return ['* "Croquet Roll" - Heals 15 HP&* Fried dough traditionally&  served with a mallet./%']

    def use(self, chara):
        chara.heal(10)
        chara.inventory.remove(self)
        return [random.choice(['* You hit the Croquet Roll into&  your mouth.', '* You ate the Croquet Roll.'])]


class Stick(Weapon):
    def __init__(self):
        super().__init__()
        self.id = 3
        self.sell0 = 150
        self.sell1 = 151
        self.sell2 = 190
        self.name = "Stick"
        self.shortname = "Stick"
        self.seriousname = "Stick"

    def check(self):
        return ['* "Stick" - Weapon AT 0&* Its bark is worse than&  its bite./%']

    def use(self, chara):
        return ['* You threw the stick away^1.&* Then picked it back up./%']


class Bandage(Armor):
    def __init__(self):
        super().__init__()
        self.id = 4
        self.sell0 = 150
        self.sell1 = 151
        self.sell2 = 190
        self.name = "Bandage"
        self.shortname = "Bandage"
        self.seriousname = "Bandage"

    def check(self):
        return ['* "Bandage" - Heals 10 HP&* It has already been used&  several times./%']

    def use(self, chara):
        chara.heal(10)
        chara.inventory.remove(self)
        return ['* You re-applied the bandage.' + '&* Still kind of gooey.']


class RockCandy(Item):
    def __init__(self):
        super().__init__()
        self.id = 5
        self.sell0 = 3
        self.sell1 = 4
        self.sell2 = 6
        self.name = "Rock Candy"
        self.shortname = "RockCandy"
        self.seriousname = "RockCandy"

    def check(self):
        return ['* "Rock Candy" - Heals 1 HP&* Here is a recipe to make&  this at home:/', '* 1. Find a rock/%']

    def use(self, chara):
        chara.heal(1)
        chara.inventory.remove(self)
        return ['* You ate the Rock Candy.']


class PumpkinRings(Item):
    def __init__(self):
        super().__init__()
        self.id = 6
        self.sell0 = 3
        self.sell1 = 4
        self.sell2 = 6
        self.name = "Pumpkin Rings"
        self.shortname = "PunkRings"
        self.seriousname = "PmknRings"

    def check(self):
        return ['* "Pumpkin Rings" - Heals 8 HP&* A small pumpkin cooked&  like onion rings./%']

    def use(self, chara):
        chara.heal(8)
        chara.inventory.remove(self)
        return ['* You ate the Pumpkin Rings.']


class StoicOnion(Item):
    def __init__(self):
        super().__init__()
        self.id = 8
        self.sell0 = 10
        self.sell1 = 11
        self.sell2 = 15
        self.name = "StoicOnion"
        self.shortname = "StocOnion"
        self.seriousname = "Onion"

    def check(self):
        return ['* "Stoic Onion" - Heals 5 HP&* Even eating it raw^1, the&  tears just won\'t come./%']

    def use(self, chara):
        chara.heal(5)
        chara.inventory.remove(self)
        return ['* You ate the Stoic Onion.' + "&* You didn't cry..."]


class GhostFruit(Item):
    def __init__(self):
        super().__init__()
        self.id = 9
        self.sell0 = 10
        self.sell1 = 11
        self.sell2 = 15
        self.name = "Ghost Fruit"
        self.shortname = "GhostFrut"
        self.seriousname = "GhstFruit"

    def check(self):
        return ['* "Ghost Fruit" - Heals 16 HP&* If eaten^1, it will never&  pass to the other side./%']

    def use(self, chara):
        chara.heal(16)
        chara.inventory.remove(self)
        return ['* You ate the Ghost Fruit.']


class ToughGlove(Weapon):
    def __init__(self):
        super().__init__()
        self.id = 14
        self.sell0 = 50
        self.sell1 = 51
        self.sell2 = 65
        self.strength = 5
        self.name = "Tough Glove"
        self.shortname = "TuffGlove"
        self.seriousname = "Glove"

    def check(self):
        return ['* "Tough Glove" - Weapon AT 5&* A worn pink leather glove^1.&* For five-fingered folk./%']

    def use(self, chara):
        raise NotImplementedError("weapons not supported yet")


class PuppydoughIcecream(Item):
    def __init__(self):
        super().__init__()
        self.id = 18
        self.sell0 = 2
        self.sell1 = 3
        self.sell2 = 5
        self.name = "Puppydough Icecream"
        self.shortname = "PDIceCream"
        self.seriousname = "Ice Cream"

    def check(self):
        return ['* "Puppydough Icecream"&* Heals 28 HP^1.&* Made by young pups./%']

    def use(self, chara):
        chara.heal(28)
        chara.inventory.remove(self)
        return ['* Mmm^1! Tastes like puppies.']


def get_item(item: int):  # TODO: implement this.
    return Null()
