0x000000:
    if !(> self.soundbuffer 0s) goto 0x000034
0x000014:
    call (snd_play[]:int32 (var 51s))
    self.soundbuffer = -3s
0x000034:
    exit
