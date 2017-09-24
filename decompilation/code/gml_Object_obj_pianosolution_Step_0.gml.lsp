0x000000:
    if !(bool (instance_exists[]:int32 (var 1157s))) goto 0x0001B8
0x000018:
    push -5s
    if !(== 86s:flag 1s) goto 0x000048
0x000034:
    push (== 1157.boxactive 1s)
    goto 0x00004C
0x000048:
    push 0s
0x00004C:
    if !pop goto 0x0001B8
0x000050:
    self.statuetimer = (+ self.statuetimer 1s)
    if !(>= self.statuetimer 450s) goto 0x0001B8
0x00007C:
    self.alpha_x = (+ self.alpha_x 0.005d)
    self.max_alpha = self.alpha_x
    if !(> self.max_alpha 1s) goto 0x0000CC
0x0000C0:
    self.max_alpha = 1s
0x0000CC:
    self.image_alpha = (* (* (* (abs[]:int32 (sin[]:int32 (/ self.statuetimer (double 60s)))) self.max_alpha) 0.8d) (/ (- 100s 1157.disto) (double 100s)))
    self.x = (+ self.xstart (* (sin[]:int32 (/ self.statuetimer (double 20s))) 3s))
    self.y = (+ self.ystart (* (cos[]:int32 (/ self.statuetimer (double 33s))) 2s))
    self.image_speed = 0.06d
0x0001B8:
    exit
