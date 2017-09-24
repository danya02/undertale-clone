0x000000:
    push -1s
    self.myview = 0s:view_xview
    push self.room_width
    self.gg = (- -1s 0s:view_wview)
    if !(< self.myview 0s) goto 0x00005C
0x000050:
    self.myview = 0s
0x00005C:
    push -1s
    if !(<= 0s:view_xview 0s) goto 0x000088
0x000078:
    self.x = self.xhome
0x000088:
    push -1s
    if !(> 0s:view_xview 0s) goto 0x0000F0
0x0000A4:
    push self.xhome
    push -1s
    self.x = (+ 0s:view_xview (floor[]:int32 (- -1s (* 0s:view_xview self.scrollspeed))))
0x0000F0:
    push -1s
    if !(>= 0s:view_xview self.gg) goto 0x00014C
0x000110:
    self.x = (+ self.xhome (floor[]:int32 (- self.gg (* self.gg self.scrollspeed))))
0x00014C:
    exit
