0x000000:
    push -1s
    if !(>= 0s:view_xview 0s) goto 0x000064
0x00001C:
    push -1s
    push 0s:view_xview
    stog.background_x[0s] = (floor[]:int32 (- -1s (* 0s:view_xview self.scrollspeed)))
0x000064:
    push self.room_width
    self.gg = (- -1s 0s:view_wview)
    push -1s
    if !(>= 0s:view_xview self.gg) goto 0x0000E0
0x0000A8:
    stog.background_x[0s] = (floor[]:int32 (- self.gg (* self.gg self.scrollspeed)))
0x0000E0:
    exit
