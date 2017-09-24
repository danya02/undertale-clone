0x000000:
    call (draw_set_font[]:int32 (var 1s))
    if !(== self.active 1s) goto 0x000270
0x000028:
    call (draw_set_alpha[]:int32 (var 0.9d))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) self.string1 (+ (- self.wy 2s) (random[]:int32 (var 4s))) (+ (- self.wx 2s) (random[]:int32 (var 4s))))
    call (draw_set_alpha[]:int32 (var 0.7d))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) self.string1 (+ (- self.wy 3s) (random[]:int32 (var 4s))) (+ (- self.wx 2s) (random[]:int32 (var 4s))))
    self.i = 2s
    if (<= 5s 0) goto 0x00026C
0x00016C:
    push 5s
    call (draw_set_alpha[]:int32 (- 0.7d (* self.i 0.1d)))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) self.string1 (+ (- self.wy (* self.i 4s)) (random[]:int32 (* self.i 8s))) (+ (- self.wx (* self.i 4s)) (random[]:int32 (* self.i 8s))))
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x00016C
0x00026C:
    push (- pop 1)
    pop
0x000270:
    exit
