0x000000:
    if !(>= global.gold self.argument0) goto 0x000028
0x000018:
    self.afford = 1s
    goto 0x000034
0x000028:
    self.afford = 0s
0x000034:
    exit
