0x000000:
    if !(== self.myinteract 1s) goto 0x000098
0x000014:
    if !(== (snd_isplaying[]:int32 (var 112s)) 0s) goto 0x000044
0x000030:
    call (snd_play[]:int32 (var 112s))
0x000044:
    if !(== self.image_index 0s) goto 0x000074
0x000058:
    self.image_index = 1s
    self.glow = 1s
    goto 0x00008C
0x000074:
    self.image_index = 0s
    self.glow = 0s
0x00008C:
    self.myinteract = 0s
0x000098:
    exit
