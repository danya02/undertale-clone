0x000000:
    self.image_speed = 0s
    self.xxx = 0s
    if !(<= self.x 738.x) goto 0x000054
0x000030:
    self.hspeed = (+ global.attackspeed (random[]:int32 global.attackspeedr))
0x000054:
    if !(> self.x (+ 738.x 738.sprite_width)) goto 0x0000A0
0x000078:
    self.hspeed = (- (+ global.attackspeed (random[]:int32 global.attackspeedr)))
0x0000A0:
    if !(== global.weapon 14s) goto 0x000104
0x0000B4:
    self.hspeed = (* self.hspeed 1.2d)
    self.punchtime = 0s
    self.punches = 0s
    self.maxpunchtime = 30s
    self.maxpunches = 4s
0x000104:
    if !(== global.weapon 47s) goto 0x000168
0x000118:
    self.hspeed = (* self.hspeed 1.4d)
    self.punchtime = 0s
    self.punches = 0s
    self.maxpunchtime = 30s
    self.maxpunches = 5s
0x000168:
    exit
