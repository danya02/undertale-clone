0x000000:
    if !(< self.barked 2s) goto 0x000078
0x000014:
    self.sprite_index = 103s
    stog.alarm[2s] = 4s
    stog.alarm[1s] = 8s
    call (snd_play[]:int32 (var 41s))
    self.barked = (+ self.barked 1s)
    goto 0x000098
0x000078:
    stog.alarm[3s] = 10s
    self.sprite_index = 99s
0x000098:
    exit
