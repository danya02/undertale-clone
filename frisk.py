#!/usr/bin/python3
import item
import sprite
import main
import item
import rooms


class Frisk:
    def __setattr__(self, key, value):
        object.__setattr__(self, key, value)
        if key == "weapon":
            self.wstrength = value.strength
        elif key == "armor":
            self.adef = value.defense
        if key == 'pos':
            object.__setattr__(self, 'x', value[0])
            object.__setattr__(self, 'y', value[1])
        elif key == 'x':
            object.__setattr__(self, 'pos', (value, self.pos[1]))
        elif key == 'y':
            object.__setattr__(self, 'pos', (self.pos[0], value))

    def __init__(self):
        self.charname = "CHARA"
        self.hp = 20
        self.maxhp = 20
        self.en = 0  # en and maxen are baloonian variables that seem not to have been removed from the game.
        self.maxen = 0  # They are not used anywhere, so use them in any way you like. (maxen is SAVED, en is not.)
        self.xp = 0
        self.lv = 1
        self.mdr = 0
        self.at = 10
        self.df = 10
        self.kills = 0
        self.room = 0
        self.weapon = item.Stick()
        self.wstrength = 0
        self.armor = item.Bandage()
        self.adef = 0
        self.sp = 4
        self.asp = 0
        self.gold = 0
        self.plot = 0
        self.time = 0
        self.currentsong = 0
        self.menuchoice = [0] * 4
        self.custom_data = []  # Undertale doesn't check file0 lines after 549 for data, so use this in any way.
        self.inventory = []
        self.dimensional_box_a = [item.ToughGlove()]
        self.dimensional_box_b = []
        self.phone = []
        self.flags = [0] * 512
        self.pos = (400, 300)
        self.x = 400
        self.y = 300
        self.dir = 2
        self.sprites = [sprite.DynamicSprite('spr_maincharau'), sprite.DynamicSprite('spr_maincharar'),
                        sprite.DynamicSprite('spr_maincharad'), sprite.DynamicSprite('spr_maincharal')]
        self.sprite = None
        self.moving = False
        self.stats = [(1, 20, 10, 10, 0),
                      (2, 24, 12, 10, 10),
                      (3, 28, 14, 10, 30),
                      (4, 32, 16, 10, 70),
                      (5, 36, 18, 11, 120),
                      (6, 40, 20, 11, 200),
                      (7, 44, 22, 11, 300),
                      (8, 48, 24, 11, 500),
                      (9, 52, 26, 12, 800),
                      (10, 56, 28, 12, 1200),
                      (11, 60, 30, 12, 1700),
                      (12, 64, 32, 12, 2500),
                      (13, 68, 34, 13, 3500),
                      (14, 72, 36, 13, 5000),
                      (15, 76, 38, 13, 7000),
                      (16, 80, 40, 13, 10000),
                      (17, 84, 42, 14, 15000),
                      (18, 88, 44, 14, 25000),
                      (19, 92, 46, 14, 50000),
                      (20, 99, 48, 14, 99999)]

    def xp_incr(self, xp):
        self.xp += xp
        prevlv = self.lv
        for i in self.stats:
            if self.xp >= i[4]:
                self.lv = i[0]
                self.maxhp = i[1]
                self.at = i[2]
                self.df = i[3]
        return not (self.lv == prevlv)

    def heal(self, hp):
        self.hp += hp
        if self.hp > self.maxhp:
            self.hp = self.maxhp
            return 1
        return 0

    def save(self, file=None):
        """
        "You're filled with determination..."
        SAVE the non-volatile parameters of this object.
        If passed a writable file, write to that file.
        If passed a string, write to a file with that name.
        If no params, return the string that would have been written.
        """
        o = ["0"] * 550
        o[1] = self.charname
        o[2] = self.lv
        o[3] = self.maxhp
        o[4] = self.maxen
        o[5] = self.at
        o[6] = self.wstrength
        o[7] = self.df
        o[8] = self.adef
        o[9] = self.sp
        o[10] = self.xp
        o[11] = self.gold
        o[12] = self.kills
        for i, j in zip(range(13, 28, 2), range(8)):
            try:
                o[i] = int(self.inventory[j])
            except IndexError:
                break
        for i, j in zip(range(14, 29, 2), range(8)):
            try:
                o[i] = int(self.phone[j])
            except IndexError:
                break
        o[29] = int(self.weapon)
        o[30] = int(self.armor)
        for i, j in zip(range(31, 543), self.flags):
            o[i] = j
        o[543] = self.plot
        for i, j in zip(range(544, 547), self.menuchoice):
            o[i] = j
        o[547] = self.currentsong
        o[548] = int(self.room)
        o[549] = self.time
        o.extend(self.custom_data)
        o = [str(i) for i in o]
        if file is not None:
            try:
                f = open(file, "w")
            except TypeError:
                f = file
            finally:
                f.write('\n'.join(o[1:]))
                f.close()
        else:
            return '\n'.join(o[1:])

    def load(self, file):
        """
        Load a SAVE file.
        If passed a file-like object, read from it.
        If passed a string, open a file with that name.
        If passed a string and contains a newline, use that as the SAVE file.
        """
        try:
            if isinstance(file, str) and '\n' in file:
                i = file.split('\n')
            else:
                try:
                    f = open(file)
                except TypeError:
                    f = file
                finally:
                    i = f.read().split("\n")
                    f.close()
            i = [None] + i  # for easier indexing
            self.charname = i[1]
            self.lv = int(i[2])
            self.maxhp = int(i[3])
            self.maxen = int(i[4])
            self.at = int(i[5])
            self.wstrength = int(i[6])
            self.df = int(i[7])
            self.adef = int(i[8])
            self.sp = int(i[9])
            self.xp = int(i[10])
            self.gold = int(i[11])
            self.kills = int(i[12])
            self.inventory = [None] * 8
            for j, k in zip(range(8), i[13:29:2]):
                self.inventory[j] = item.get_item(int(k))
            self.inventory = list(filter(None, self.inventory))
            self.phone = [None] * 8
            for j, k in zip(range(8), i[14:29:2]):
                self.phone[j] = item.get_item(int(k))
            self.phone = list(filter(None, self.phone))
            self.weapon = item.get_item(int(i[29]))
            self.armor = item.get_item(int(i[30]))
            for j, k in zip(range(512), i[31:543]):
                self.flags[j] = int(k)
            self.plot = i[543]
            for j, k in zip(range(4), i[544:547]):
                self.menuchoice[j] = int(k)
            self.currentsong = int(i[547])  # TODO: figure out how to define songs.
            if int(i[547]) in list(range(0, 5)) + list(range(239, 264)) + list(range(239, 264)):
                raise main.UndertaleError
            self.room = rooms.get_room(int(i[547]))
            self.time = int(i[549])
            self.custom_data = i[550:]
        except:
            raise main.UndertaleError
