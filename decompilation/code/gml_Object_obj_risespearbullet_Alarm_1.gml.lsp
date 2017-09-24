0x000000:
    self.visible = 1s
    if !(== self.type 0s) goto 0x000038
0x000020:
    self.image_yscale = 1s
    self.vspeed = -1s
0x000038:
    if !(== self.type 1s) goto 0x00007C
0x00004C:
    self.image_yscale = -1s
    self.y = (- self.y 150s)
    self.vspeed = 1s
0x00007C:
    call (snd_play[]:int32 (var 13s))
0x000090:
    exit
