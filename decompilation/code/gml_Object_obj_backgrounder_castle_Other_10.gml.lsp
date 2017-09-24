0x000000:
    push -1s
    if !(>= 0s:view_xview 0s) goto 0x00006C
0x00001C:
    push 200s
    push -1s
    stog.background_x[4s] = (+ 0s:view_xview (round[]:int32 (- -1s (* 0s:view_xview self.scrollspeed))))
0x00006C:
    push self.room_width
    self.gg = (- -1s 0s:view_wview)
    push -1s
    if !(>= 0s:view_xview self.gg) goto 0x0000F0
0x0000B0:
    stog.background_x[4s] = (+ 200s (round[]:int32 (- self.gg (* self.gg self.scrollspeed))))
0x0000F0:
    exit
