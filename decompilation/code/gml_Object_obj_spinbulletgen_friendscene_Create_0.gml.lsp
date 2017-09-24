0x000000:
    stog.alarm[1s] = 1s
    self.targety = self.y
    self.targetx = self.x
    self.radius = 80s
    self.ang = 0s
    self.i = 0s
    self.spec = 0s
    self.created = 0s
    if !(== self.spec 2s) goto 0x000090
0x000084:
    self.radius = 130s
0x000090:
    self.amt = 0s
0x00009C:
    exit
