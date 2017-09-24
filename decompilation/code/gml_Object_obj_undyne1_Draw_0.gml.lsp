0x000000:
    if (!= 1570.x 1570.xprevious) goto 0x000030
0x000018:
    push (!= 1570.y 1570.yprevious)
    goto 0x000034
0x000030:
    push 1s
0x000034:
    if !pop goto 0x000050
0x000038:
    self.helltrigger = (+ self.helltrigger 1s)
0x000050:
    exit
