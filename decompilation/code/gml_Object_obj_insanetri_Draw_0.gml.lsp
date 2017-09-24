0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    if (<= (int32 self.no) 0) goto 0x00010C
0x000038:
    push (int32 self.no)
    call (draw_triangle[]:int32 (var 1s) (+ self.targety (random[]:int32 self.h)) (+ self.targetx (random[]:int32 self.w)) (+ self.targety (random[]:int32 self.h)) (+ self.targetx (random[]:int32 self.w)) (+ self.targety (random[]:int32 self.h)) (+ self.targetx (random[]:int32 self.w)))
    if (bool (- pop 1)) goto 0x000038
0x00010C:
    push (- pop 1)
    pop
0x000110:
    exit
