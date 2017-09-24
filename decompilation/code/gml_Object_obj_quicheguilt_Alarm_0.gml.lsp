0x000000:
    stog.alarm[0s] = 2s
    if !(== global.inbattle 0s) goto 0x000088
0x000028:
    if !(!= self.nowroom self.room) goto 0x000088
0x000040:
    if !(== global.interact 0s) goto 0x000088
0x000054:
    push -5s
    if !(== 17s:flag 0s) goto 0x000088
0x000070:
    push (bool (instance_exists[]:int32 (var 1570s)))
    goto 0x00008C
0x000088:
    push 0s
0x00008C:
    if !pop goto 0x0000DC
0x000090:
    self.qtimer = (+ self.qtimer 1s)
    if !(> self.qtimer 90s) goto 0x0000DC
0x0000BC:
    self.guilt = 1s
    stog.alarm[0s] = -1s
0x0000DC:
    exit
