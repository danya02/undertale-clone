0x000000:
    if !(== self.argument0 0s) goto 0x0000A8
0x000014:
    self.i = 0s
    if !(< self.i 3s) goto 0x0000A8
0x000034:
    push -5s
    if !(== (int32 self.i):monster 1s) goto 0x00008C
0x000058:
    push -5s
    pushenv (int32 (int32 self.i):monsterinstance) 0x000088
0x000078:
    self.whatiheard = self.argument1
0x000088:
    popenv 0x000078
0x00008C:
    self.i = (+ self.i 1s)
    goto 0x000020
0x0000A8:
    exit
