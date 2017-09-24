0x000000:
    self.xaround = (- self.xaround 1s)
    if !(== self.inactive 0s) goto 0x000040
0x00002C:
    stog.alarm[0s] = 4s
0x000040:
    if !(< self.xaround -80s) goto 0x000060
0x000054:
    self.xaround = 60s
0x000060:
    exit
