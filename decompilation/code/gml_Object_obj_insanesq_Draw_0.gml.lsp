0x000000:
    if (<= (int32 self.no) 0) goto 0x00016C
0x000020:
    push (int32 self.no)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ self.targety (random[]:int32 self.h)) (+ self.targetx (random[]:int32 self.w)) (+ self.targety (random[]:int32 self.h)) (+ self.targetx (random[]:int32 self.w)))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.targety (random[]:int32 self.h)) (+ self.targetx (random[]:int32 self.w)) (+ self.targety (random[]:int32 self.h)) (+ self.targetx (random[]:int32 self.w)))
    if (bool (- pop 1)) goto 0x000020
0x00016C:
    push (- pop 1)
    pop
0x000170:
    exit
