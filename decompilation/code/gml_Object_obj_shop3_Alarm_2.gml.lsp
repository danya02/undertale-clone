0x000000:
    push -5s
    if !(== 7s:flag 0s) goto 0x00006C
0x00001C:
    call (caster_set_volume[]:int32 self.vol self.shopmus)
    self.vol = (- self.vol 0.02d)
    stog.alarm[2s] = 1s
0x00006C:
    exit
