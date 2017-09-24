0x000000:
    self.ac = (+ 1.5d (sin[]:int32 (/ self.siner (double 20s))))
    self.siner = (+ self.siner 1s)
    call (draw_set_alpha[]:int32 (var 1s))
    self.i = 0s
    if !(< self.i 10s) goto 0x000184
0x000080:
    call (draw_set_alpha[]:int32 (* (- 0.8d (/ self.i (double 16s))) self.amt))
    call (draw_set_color[]:int32 (var 8388736))
    call (draw_rectangle[]:int32 (var 0s) (- self.room_height (* (* (+ self.i 1s) (+ self.i 1s)) self.ac)) (+ self.room_width 10s) (- self.room_height (* (* self.i self.i) self.ac)) (var -10s))
    self.i = (+ self.i 1s)
    goto 0x00006C
0x000184:
    call (draw_set_alpha[]:int32 (var 1s))
    if !(== self.fade 1s) goto 0x0001F4
0x0001AC:
    self.amt = (- self.amt 0.03d)
    if !(< self.amt 0.05d) goto 0x0001F4
0x0001E8:
    call (instance_destroy[]:int32 )
0x0001F4:
    exit
