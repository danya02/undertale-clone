0x000000:
    self.snooze = (+ self.snooze 1s)
    stog.zz[(int32 self.snooze)] = (instance_create[]:int32 (var 1293s) self.y self.x)
    if !(> self.snooze 1s) goto 0x0000B4
0x000064:
    push -1s
    push (int32 (int32 (- self.snooze 1s)):zz):hspeed
    push -1s
    stog.hspeed* = (int32 (int32 self.snooze):zz)
0x0000B4:
    if !(< self.snooze 3s) goto 0x0000DC
0x0000C8:
    stog.alarm[1s] = 20s
0x0000DC:
    exit
