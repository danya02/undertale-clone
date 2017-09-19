#!/usr/bin/python3

class Frisk:
    def __init__(self):
        self.hp = 20
        self.maxhp = 20
        self.exp = 0
        self.lv = 1
        self.mdr = 0
        self.at = 10
        self.df = 10
        self.room = 0
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
    def exp_incr(self, exp):
        self.exp += exp
        prevlv = self.lv
        for i in self.stats:
            if self.exp >= i[4]:
                self.lv = i[0]
                self.maxhp = i[1]
                self.at = i[2]
                self.df = i[3]
        return !(self.lv == prevlv)

