0x000000:
    if !(== self.active 1s) goto 0x00004C
0x000014:
    self.speed = 0s
    self.active = 0s
    self.solid = 1s
    call (snd_play[]:int32 (var 21s))
0x00004C:
    exit
