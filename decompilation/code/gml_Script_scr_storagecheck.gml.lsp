0x000000:
    self.haveit2 = 0s
    self.i = 0s
    if !(< self.i 11s) goto 0x000084
0x00002C:
    push -5s
    if !(== (int32 (+ 300s self.i)):flag self.argument0) goto 0x000068
0x00005C:
    self.haveit2 = 1s
0x000068:
    self.i = (+ self.i 1s)
    goto 0x000018
0x000084:
    self.i = 0s
    if !(< self.i 11s) goto 0x0000FC
0x0000A4:
    push -5s
    if !(== (int32 (+ 312s self.i)):flag self.argument0) goto 0x0000E0
0x0000D4:
    self.haveit2 = 1s
0x0000E0:
    self.i = (+ self.i 1s)
    goto 0x000090
0x0000FC:
    exit
