0x000000:
    push -1s
    self.x = (+ 0s:view_xview 210s)
    if !(< self.x 210s) goto 0x000040
0x000034:
    self.x = 210s
0x000040:
    exit
