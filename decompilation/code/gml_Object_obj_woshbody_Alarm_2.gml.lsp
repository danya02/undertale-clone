0x000000:
    self.waterxx = (+ self.waterxx self.wu)
    if !(> self.waterxx 15s) goto 0x00003C
0x000030:
    self.wu = -1s
0x00003C:
    if !(< self.waterxx 1s) goto 0x00005C
0x000050:
    self.wu = 1s
0x00005C:
    self.ducky = (- self.ducky self.wu)
    stog.alarm[2s] = 5s
0x00008C:
    exit
