0x000000:
    if !(== self.normal 1s) goto 0x000028
0x000014:
    push (== self.destroy 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000068
0x000030:
    call (snd_play[]:int32 (var 21s))
    self.destroy = 1s
    self.normal = 0s
    call (scr_damagestandard_x[]:int32 )
0x000068:
    exit
