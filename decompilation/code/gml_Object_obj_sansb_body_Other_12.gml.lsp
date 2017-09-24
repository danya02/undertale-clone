0x000000:
    if !(== self.damageturn 0s) goto 0x000060
0x000014:
    call (snd_stop[]:int32 (var 53s))
    call (snd_play[]:int32 (var 53s))
    global.hp = (- global.hp 1s)
    self.damageturn = 1s
0x000060:
    exit
