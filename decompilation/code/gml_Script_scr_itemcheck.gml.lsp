0x000000:
    self.haveit = 0s
    self.itemcount = 0s
    self.i = 0s
    if !(< self.i 8s) goto 0x0000C8
0x000038:
    push -5s
    if !(== (int32 self.i):item self.argument0) goto 0x00006C
0x000060:
    self.haveit = 1s
0x00006C:
    push -5s
    if !(== (int32 self.i):item self.argument0) goto 0x0000AC
0x000094:
    self.itemcount = (+ self.itemcount 1s)
0x0000AC:
    self.i = (+ self.i 1s)
    goto 0x000024
0x0000C8:
    exit
