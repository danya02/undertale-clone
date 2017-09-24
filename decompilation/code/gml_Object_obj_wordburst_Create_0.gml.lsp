0x000000:
    self.size = 1s
    self.alpha = 1s
    self.step = 0s
    call (snd_play[]:int32 (var 21s))
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x000078
0x000054:
    call (scr_shake[]:int32 (var 2s) (var 2s) (var 2s))
0x000078:
    exit
