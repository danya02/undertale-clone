0x000000:
    call (draw_set_color[]:int32 (var 32768))
    self.yoff = 0s
    self.siner = (+ self.siner 1s)
    if !(== self.fade 1s) goto 0x000070
0x000050:
    self.alpha = (- self.alpha 0.01d)
0x000070:
    if !(<= self.alpha 0s) goto 0x000090
0x000084:
    call (instance_destroy[]:int32 )
0x000090:
    if (<= 2s 0) goto 0x0001EC
0x0000A8:
    push 2s
    self.i = 0s
    if !(< self.i 6s) goto 0x0001C8
0x0000C8:
    call (draw_set_alpha[]:int32 self.alpha)
    self.ysin = (* (sin[]:int32 (/ (+ (* self.i 3s) (/ self.siner (double 2s))) (double 8s))) 20s)
    call (draw_rectangle[]:int32 (var 1s) (+ (+ 136s self.yoff) self.ysin) (+ 20s (* (+ self.i 1s) 100s)) (+ (+ 16s self.yoff) self.ysin) (+ 20s (* self.i 100s)))
    self.i = (+ self.i 1s)
    goto 0x0000B4
0x0001C8:
    self.yoff = 120s
    if (bool (- pop 1)) goto 0x0000A8
0x0001EC:
    push (- pop 1)
    pop
    call (draw_set_alpha[]:int32 (var 1s))
0x000204:
    exit
