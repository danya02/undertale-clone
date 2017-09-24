0x000000:
    if !(== self.sound1 1s) goto 0x000034
0x000014:
    call (snd_play[]:int32 (var 13s))
    self.sound1 = 0s
0x000034:
    if !(== self.sound2 1s) goto 0x000068
0x000048:
    call (snd_play[]:int32 (var 14s))
    self.sound2 = 0s
0x000068:
    exit
