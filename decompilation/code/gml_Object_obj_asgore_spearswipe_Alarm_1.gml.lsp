0x000000:
    self.curamt = (+ self.curamt 1s)
    if !(< self.curamt self.amt) goto 0x0000C8
0x000030:
    self.image_index = 0s
    self.image_speed = 1s
    stog.alarm[1s] = self.swipewait
    if !(> self.curamt 1s) goto 0x00008C
0x000074:
    push (< self.curamt self.amt)
    goto 0x000090
0x00008C:
    push 0s
0x000090:
    if !pop goto 0x0000C4
0x000094:
    if !(== self.image_xscale 2s) goto 0x0000B8
0x0000A8:
    self.image_xscale = -2s
    goto 0x0000C4
0x0000B8:
    self.image_xscale = 2s
0x0000C4:
    goto 0x0000E8
0x0000C8:
    self.image_speed = 0s
    stog.alarm[2s] = 15s
0x0000E8:
    exit
