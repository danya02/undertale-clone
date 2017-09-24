0x000000:
    if !(> self.y self.goal) goto 0x00002C
0x000018:
    call (event_user[]:int32 (var 1s))
0x00002C:
    if !(== self.dont 0s) goto 0x0000C0
0x000040:
    push self.x
    if !(< -1s (- 0s:view_xview 40s)) goto 0x000080
0x000068:
    self.x = (+ self.x 361s)
0x000080:
    push self.x
    if !(> -1s (+ 0s:view_xview 360s)) goto 0x0000C0
0x0000A8:
    self.x = (- self.x 361s)
0x0000C0:
    exit
