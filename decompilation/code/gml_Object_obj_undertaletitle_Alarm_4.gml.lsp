0x000000:
    self.con = (+ self.con 1s)
    stog.alarm[4s] = 150s
    if !(< self.con 3s) goto 0x000064
0x000040:
    call (caster_play[]:int32 (var 1s) (var 1s) self.ii)
0x000064:
    exit
