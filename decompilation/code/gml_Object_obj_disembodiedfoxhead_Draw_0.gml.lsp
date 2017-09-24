0x000000:
    if !(> self.myinteract 0s) goto 0x00002C
0x000014:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x00008C
0x000034:
    if !(== 782.halt 0s) goto 0x000068
0x000048:
    self.animanim = (+ self.animanim 0.2d)
0x000068:
    self.siner = (+ self.siner 0.5d)
    goto 0x0000F0
0x00008C:
    self.animanim = 0s
    if !(< (* (sin[]:int32 (/ self.siner (double 2s))) 2s) 1.9d) goto 0x0000F0
0x0000D0:
    self.siner = (+ self.siner 0.5d)
0x0000F0:
    self.ss = (* (sin[]:int32 (/ self.siner (double 2s))) 2s)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ (+ self.y self.sprite_height) 1s) (+ (- (+ self.x self.sprite_width) 8s) (* self.ss 2s)) (+ (+ self.y 20s) (/ self.ss (double 2s))) (- (+ self.x 5s) (* self.ss 2s)))
    call (draw_sprite[]:int32 (+ (- self.y 6s) (* (sin[]:int32 (/ self.siner (double 2s))) 6s)) self.x self.animanim self.sprite_index)
0x000238:
    exit
