0x000000:
    self.gl = 20s
    call (snd_play[]:int32 (var 51s))
    if !(< self.image_index 7s) goto 0x000050
0x000034:
    self.image_index = (+ self.image_index 1s)
    goto 0x0000AC
0x000050:
    stog.alarm[0s] = -1s
    stog.alarm[1s] = -1s
    stog.alarm[2s] = -1s
    self.visible = 0s
    stog.alarm[3s] = 150s
0x0000AC:
    exit
