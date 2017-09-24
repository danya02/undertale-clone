0x000000:
    if !(<= self.on 0s) goto 0x000028
0x000014:
    call (snd_play[]:int32 (var 114s))
0x000028:
    self.on = 2s
0x000034:
    exit
