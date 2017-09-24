0x000000:
    self.active = (+ self.active 1s)
    if !(> self.active 4s) goto 0x00009C
0x00002C:
    if !(> 1570.x 316s) goto 0x000068
0x000040:
    if !(< 1570.x 1166s) goto 0x000068
0x000054:
    push (== self.fallen 0s)
    goto 0x00006C
0x000068:
    push 0s
0x00006C:
    if !pop goto 0x00009C
0x000070:
    global.interact = 1s
    self.fallen = 1s
    call (event_user[]:int32 (var 0s))
0x00009C:
    exit
