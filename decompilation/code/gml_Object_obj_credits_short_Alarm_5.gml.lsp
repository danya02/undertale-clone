0x000000:
    call (caster_play[]:int32 (var 1s) (var 1s) self.ii)
    self.number = (+ self.number 1s)
    if !(< self.number 6s) goto 0x000068
0x000050:
    stog.alarm[5s] = 130s
    goto 0x00007C
0x000068:
    stog.alarm[6s] = 200s
0x00007C:
    exit
