0x000000:
    self.btime = (- self.btime 1s)
    if !(< self.btime 1s) goto 0x000040
0x00002C:
    push (== self.bounce 2s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000054
0x000048:
    self.bounce = 0s
0x000054:
    exit
