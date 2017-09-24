0x000000:
    call (caster_stop[]:int32 self.psfx)
    call (caster_play[]:int32 (+ 0.5d (/ self.ps (double 6s))) (+ 0.6d (/ self.ps (double 8s))) self.psfx)
    self.ps = (+ self.ps 1s)
    if !(< self.ps 6s) goto 0x0000B0
0x00009C:
    stog.alarm[9s] = 5s
0x0000B0:
    exit
