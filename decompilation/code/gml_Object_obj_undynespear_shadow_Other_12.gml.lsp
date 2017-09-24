0x000000:
    if !(== self.active 1s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000070
0x000030:
    if !(> self.y (- self.goaly 60s)) goto 0x000070
0x000050:
    call (event_user[]:int32 (var 1s))
    self.active = 0s
0x000070:
    exit
