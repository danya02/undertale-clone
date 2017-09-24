0x000000:
    if !(> self.knock 0s) goto 0x000048
0x000014:
    if !(== self.knock 1s) goto 0x00003C
0x000028:
    call (snd_play[]:int32 (var 17s))
0x00003C:
    self.knock = 0s
0x000048:
    exit
