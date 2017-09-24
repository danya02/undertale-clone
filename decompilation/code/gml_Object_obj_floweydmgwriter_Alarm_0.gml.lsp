0x000000:
    if !(== self.i 0s) goto 0x000024
0x000014:
    self.i = 1s
    goto 0x000030
0x000024:
    self.i = 0s
0x000030:
    if !(> self.apparenthp (- self.actualhp self.dmg)) goto 0x000080
0x000054:
    self.apparenthp = (- self.apparenthp (/ self.dmg (double 18s)))
    goto 0x00009C
0x000080:
    self.apparenthp = (- self.actualhp self.dmg)
0x00009C:
    if !(== self.negative 0s) goto 0x0000D0
0x0000B0:
    if !(< self.apparenthp 0s) goto 0x0000D0
0x0000C4:
    self.apparenthp = 0s
0x0000D0:
    stog.alarm[0s] = 2s
0x0000E4:
    exit
