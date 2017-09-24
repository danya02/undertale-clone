0x000000:
    self.x = (+ self.shk_x self.gl)
    self.gl = (- self.gl)
    if !(< self.gl 0s) goto 0x00005C
0x000044:
    self.gl = (+ self.gl 3s)
0x00005C:
    if !(> self.gl 0s) goto 0x000088
0x000070:
    self.gl = (- self.gl 3s)
0x000088:
    if !(> (abs[]:int32 self.gl) 1s) goto 0x0000B8
0x0000A4:
    stog.alarm[2s] = 2s
0x0000B8:
    exit
