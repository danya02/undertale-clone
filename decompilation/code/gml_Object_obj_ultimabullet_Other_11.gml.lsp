0x000000:
    if !(== self.side 0s) goto 0x00006C
0x000014:
    self.x = (- self.x 160s)
    self.hspeed = (- -9s (random[]:int32 (var 8s)))
    self.vspeed = (+ 4s (random[]:int32 (var 10s)))
0x00006C:
    if !(== self.side 1s) goto 0x0000D8
0x000080:
    self.x = (+ self.x 160s)
    self.hspeed = (+ 9s (random[]:int32 (var 8s)))
    self.vspeed = (+ 4s (random[]:int32 (var 10s)))
0x0000D8:
    self.i = 0s
    if !(< self.i 18s) goto 0x000154
0x0000F8:
    stog.xprev[(int32 self.i)] = self.x
    stog.yprev[(int32 self.i)] = self.y
    self.i = (+ self.i 1s)
    goto 0x0000E4
0x000154:
    exit
