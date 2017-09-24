0x000000:
    stog.alarm[1s] = 40s
    call (snd_play[]:int32 (var 31s))
    self.sprite_index = 44s
    self.x = (- self.x 2s)
    push -5s
    if !(== 500s:flag 1s) goto 0x0000A8
0x000068:
    stog.alarm[1s] = -1s
    self.heartcon = 5s
    self.thisx = self.x
    self.thisy = self.y
0x0000A8:
    exit
