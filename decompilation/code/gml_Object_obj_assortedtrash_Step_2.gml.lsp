0x000000:
    call (scr_depth[]:int32 )
    if !(== self.con 1s) goto 0x00003C
0x000020:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x000064
0x000044:
    call (snd_play[]:int32 (var 48s))
    self.con = 0s
0x000064:
    exit
