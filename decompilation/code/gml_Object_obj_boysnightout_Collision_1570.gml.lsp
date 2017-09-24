0x000000:
    if !(== global.interact 0s) goto 0x000028
0x000014:
    push (== self.con 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00005C
0x000030:
    call (caster_pause[]:int32 global.currentsong)
    global.interact = 1s
    self.con = 1s
0x00005C:
    exit
