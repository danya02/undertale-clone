0x000000:
    self.siner = (+ self.siner 1s)
    self.alp = 0s
    self.go = (abs[]:int32 (sin[]:int32 (/ self.siner (double 30s))))
    call (draw_set_color[]:int32 (var 255s))
    self.cw = 0s
    self.w = 0s
    self.i = 0s
    if !(< self.i 10s) goto 0x00025C
0x00009C:
    self.alp = (/ (- self.go (/ self.i (double 10s))) 1.2d)
    if !(== self.xmode 1s) goto 0x000108
0x0000E8:
    self.alp = (/ self.alp 1.8d)
0x000108:
    if !(< self.alp 0s) goto 0x000128
0x00011C:
    self.alp = 0s
0x000128:
    call (draw_set_alpha[]:int32 self.alp)
    self.w = (* (* (- 10s self.i) self.go) 1.4d)
    if !(== self.xmode 1s) goto 0x0001A4
0x000184:
    self.w = (/ self.w 1.2d)
0x0001A4:
    push (var 0s)
    push (+ (- (- self.room_height self.cw) self.w) 1s)
    call (draw_rectangle[]:int32 -1s (+ 0s:view_xview 330s) (- self.room_height self.cw) -1s (- 0s:view_xview 10s))
    self.cw = (+ self.cw self.w)
    self.i = (+ self.i 1s)
    goto 0x000088
0x00025C:
    call (draw_set_alpha[]:int32 (var 1s))
0x000270:
    exit
