0x000000:
    if !(== self.goldshift 1s) goto 0x000028
0x000014:
    push (== self.myside 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000060
0x000030:
    self.goldshift = 0s
    self.y = (- self.y 40s)
    self.myside = 2s
0x000060:
    if !(== self.goldshift 1s) goto 0x000088
0x000074:
    push (== self.myside 2s)
    goto 0x00008C
0x000088:
    push 0s
0x00008C:
    if !pop goto 0x0000C0
0x000090:
    self.goldshift = 0s
    self.y = (+ self.y 40s)
    self.myside = 0s
0x0000C0:
    if !(== self.goldshift 1s) goto 0x0000E8
0x0000D4:
    push (== self.myside 1s)
    goto 0x0000EC
0x0000E8:
    push 0s
0x0000EC:
    if !pop goto 0x000120
0x0000F0:
    self.goldshift = 0s
    self.x = (- self.x 40s)
    self.myside = 3s
0x000120:
    if !(== self.goldshift 1s) goto 0x000148
0x000134:
    push (== self.myside 3s)
    goto 0x00014C
0x000148:
    push 0s
0x00014C:
    if !pop goto 0x000180
0x000150:
    self.goldshift = 0s
    self.x = (+ self.x 40s)
    self.myside = 1s
0x000180:
    exit
