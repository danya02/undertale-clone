0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000070
0x000018:
    if !(== self.check 1s) goto 0x000040
0x00002C:
    push (== 1570.inwater 1s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000070
0x000048:
    if !(== self.active 1s) goto 0x000070
0x00005C:
    call (snd_play[]:int32 (var 106s))
0x000070:
    self.check = 0s
0x00007C:
    exit
