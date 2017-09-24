0x000000:
    if !(== self.visible 1s) goto 0x000024
0x000014:
    self.visible = 0s
    goto 0x000070
0x000024:
    self.visible = 1s
    self.claps = (+ self.claps 1s)
    call (snd_stop[]:int32 (var 106s))
    call (snd_play[]:int32 (var 106s))
0x000070:
    if !(< self.claps 2s) goto 0x000098
0x000084:
    stog.alarm[4s] = 2s
0x000098:
    exit
