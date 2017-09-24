0x000000:
    if !(== self.active 1s) goto 0x000164
0x000014:
    call (draw_set_alpha[]:int32 self.image_alpha)
    self.oo = 0s
    self.i = 0s
    if !(< self.i 30s) goto 0x000150
0x000054:
    if !(== self.oo 0s) goto 0x000080
0x000068:
    call (draw_set_color[]:int32 (var 16777215))
0x000080:
    push (var 0s)
    push -1s
    push (+ (int32 self.i):y1 16s)
    push -1s
    call (draw_rectangle[]:int32 (+ (int32 self.i):x1 16s) -1s (int32 self.i):y1 -1s (int32 self.i):x1)
    if !(== self.oo 0s) goto 0x000128
0x000118:
    self.oo = 1s
    goto 0x000134
0x000128:
    self.oo = 0s
0x000134:
    self.i = (+ self.i 1s)
    goto 0x000040
0x000150:
    call (draw_set_alpha[]:int32 (var 1s))
0x000164:
    self.siner = (+ self.siner 1s)
    self.w = (+ self.w (* (sin[]:int32 (/ self.siner (double 5s))) 2s))
    self.h = (+ self.h (* (sin[]:int32 (/ self.siner (double 5s))) 2s))
0x0001EC:
    exit
