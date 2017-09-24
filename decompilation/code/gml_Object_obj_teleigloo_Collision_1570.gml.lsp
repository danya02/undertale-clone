0x000000:
    if !(== self.con 0s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000090
0x000030:
    call (snd_play[]:int32 (var 50s))
    if !(< self.x 1000s) goto 0x000064
0x000058:
    self.con = 5s
0x000064:
    if !(> self.x 1000s) goto 0x000084
0x000078:
    self.con = 10s
0x000084:
    global.interact = 1s
0x000090:
    exit
