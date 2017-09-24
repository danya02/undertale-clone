0x000000:
    pushenv (int32 self.boss) 0x000044
0x000010:
    if !(< self.reach2 29s) goto 0x000044
0x000024:
    self.reach2 = (+ self.reach2 0.5d)
0x000044:
    popenv 0x000010
0x000048:
    exit
