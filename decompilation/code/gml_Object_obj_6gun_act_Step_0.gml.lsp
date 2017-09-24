0x000000:
    if !(< self.x 0s) goto 0x000028
0x000014:
    push (< self.hspeed 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000044
0x000030:
    self.hspeed = (- self.hspeed)
0x000044:
    if !(> self.x self.room_width) goto 0x000070
0x00005C:
    push (> self.hspeed 0s)
    goto 0x000074
0x000070:
    push 0s
0x000074:
    if !pop goto 0x00008C
0x000078:
    self.hspeed = (- self.hspeed)
0x00008C:
    exit
