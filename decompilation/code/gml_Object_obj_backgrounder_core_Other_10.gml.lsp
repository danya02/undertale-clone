0x000000:
    self.y = 0s
    push -1s
    if !(>= 0s:view_xview 0s) goto 0x000070
0x000028:
    push -1s
    push 0s:view_xview
    self.x = (+ (floor[]:int32 (- -1s (* 0s:view_xview self.scrollspeed))) 150s)
0x000070:
    push self.room_width
    self.gg = (- -1s 0s:view_wview)
    push -1s
    if !(>= 0s:view_xview self.gg) goto 0x0000EC
0x0000B4:
    self.x = (+ (floor[]:int32 (- self.gg (* self.gg self.scrollspeed))) 150s)
0x0000EC:
    exit
