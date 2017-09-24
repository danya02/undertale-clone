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
    if !(== global.weapon 13s) goto 0x0000D4
0x0000B4:
    self.hspeed = (* self.hspeed 1.25d)
0x0000D4:
    exit
