0x000000:
    if !(== self.f_test 1s) goto 0x000278
0x000014:
    push -1s
    self.myview = 0s:view_xview
    push -1s
    self.myview_b = 0s:view_xview
    if !(< self.g_heart 4s) goto 0x000078
0x000058:
    push (> 1570.x (- self.room_width 160s))
    goto 0x00007C
0x000078:
    push 0s
0x00007C:
    if !pop goto 0x000098
0x000080:
    self.myview = (- self.myview 140s)
0x000098:
    self.g_heart = (+ self.g_heart 1s)
    push self.room_width
    self.gg = (- -1s 0s:view_wview)
    if !(< self.myview 0s) goto 0x0000F4
0x0000E8:
    self.myview = 0s
0x0000F4:
    if !(< self.x (- self.myview 20s)) goto 0x00012C
0x000114:
    push (< self.myview self.gg)
    goto 0x000130
0x00012C:
    push 0s
0x000130:
    if !pop goto 0x000164
0x000134:
    self.x = (+ self.x 350s)
    self.xhome = (+ self.xhome 350s)
0x000164:
    if !(> self.x (+ self.myview 340s)) goto 0x0001B4
0x000184:
    self.x = (- self.x 350s)
    self.xhome = (- self.xhome 350s)
0x0001B4:
    push -1s
    if !(>= 0s:view_xview 0s) goto 0x00021C
0x0001D0:
    push self.xhome
    push -1s
    self.x = (+ 0s:view_xview (round[]:int32 (- -1s (* 0s:view_xview self.scrollspeed))))
0x00021C:
    push -1s
    if !(>= 0s:view_xview self.gg) goto 0x000278
0x00023C:
    self.x = (+ self.xhome (round[]:int32 (- self.gg (* self.gg self.scrollspeed))))
0x000278:
    exit
