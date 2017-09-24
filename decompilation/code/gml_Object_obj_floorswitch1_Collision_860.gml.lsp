0x000000:
    if !(== self.on 0s) goto 0x000040
0x000014:
    self.on = 1s
    self.image_index = 1s
    call (snd_play[]:int32 (var 106s))
0x000040:
    exit
