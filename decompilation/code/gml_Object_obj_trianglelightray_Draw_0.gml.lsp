0x000000:
    self.siner = (+ self.siner 1s)
    self.ac = (* (sin[]:int32 (/ self.siner (double 60s))) 0.12d)
    self.s = 0s
    if !(< self.s 50s) goto 0x00019C
0x00006C:
    call (draw_set_color[]:int32 (var 16777215))
    self.ac = (* (sin[]:int32 (/ (+ self.s self.siner) (double 35s))) 0.15d)
    call (draw_set_alpha[]:int32 (- (+ 0.5d self.ac) (/ self.s (double 40s))))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 100s) (+ (+ self.x (* self.s 2s)) 2s) (+ self.y (* self.s 2s)) (+ self.x (* self.s 2s)))
    self.s = (+ self.s 1s)
    goto 0x000058
0x00019C:
    exit
