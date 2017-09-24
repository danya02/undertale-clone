0x000000:
    if !(== self.i 0s) goto 0x000024
0x000014:
    self.i = 1s
    goto 0x000030
0x000024:
    self.i = 0s
0x000030:
    if !(> self.apparenthp (- self.actualhp self.dmg)) goto 0x00008C
0x000054:
    self.apparenthp = (- self.apparenthp (+ (round[]:int32 (/ self.dmg (double 20s))) 2s))
0x00008C:
    if !(== self.negative 0s) goto 0x0000C0
0x0000A0:
    if !(< self.apparenthp 0s) goto 0x0000C0
0x0000B4:
    self.apparenthp = 0s
0x0000C0:
    stog.alarm[0s] = 2s
0x0000D4:
    exit
