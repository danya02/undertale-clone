0x000000:
    if !(== self.justdoit 1s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000090
0x000030:
    stog.alarm[3s] = -1s
    global.interact = 1s
    call (caster_pause[]:int32 global.currentsong)
    self.justdoit = 2s
    stog.alarm[4s] = 20s
    self.drawamt = 0s
0x000090:
    if !(== self.justdoit 3s) goto 0x0000C4
0x0000A4:
    stog.alarm[5s] = 1s
    self.justdoit = 4s
0x0000C4:
    if !(== self.justdoit 6s) goto 0x0000F8
0x0000D8:
    self.justdoit = 7s
    stog.alarm[4s] = 20s
0x0000F8:
    if !(== self.justdoit 8s) goto 0x000138
0x00010C:
    global.interact = 0s
    self.justdoit = 9s
    call (caster_resume[]:int32 global.currentsong)
0x000138:
    exit
