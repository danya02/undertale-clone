0x000000:
    if !(== self.con 1s) goto 0x000020
0x000014:
    self.vspeed = 0s
0x000020:
    if !(== self.con 2s) goto 0x00006C
0x000034:
    call (snd_play[]:int32 (var 20s))
    self.vspeed = -16s
    self.gravity = 1s
    self.con = 3s
0x00006C:
    if !(== self.con 3s) goto 0x000128
0x000080:
    if !(>= self.vspeed 0s) goto 0x0000A0
0x000094:
    self.depth = 80s
0x0000A0:
    if !(>= self.y (- (+ 175.y 10s) self.sprite_height)) goto 0x000128
0x0000CC:
    call (snd_play[]:int32 (var 21s))
    self.gravity = 0s
    self.vspeed = 0s
    self.y = (- (+ 175.y 10s) self.sprite_height)
    self.con = 4s
0x000128:
    exit
