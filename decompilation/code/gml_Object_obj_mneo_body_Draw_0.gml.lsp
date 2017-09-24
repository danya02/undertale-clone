0x000000:
    if !(== self.pause 0s) goto 0x000030
0x000014:
    self.siner = (+ self.siner 1s)
    goto 0x00003C
0x000030:
    self.siner = 0s
0x00003C:
    if !(== self.burston 1s) goto 0x00022C
0x000050:
    call (draw_sprite_ext[]:int32 (+ (* (abs[]:int32 (sin[]:int32 (* self.siner 0.3d))) 0.5d) 0.4d) (var 16777215) (* (sin[]:int32 (/ self.siner (double 6s))) 2s) (var 2s) (var -2s) (+ (+ self.y 18s) (* (sin[]:int32 (/ self.siner (double 3s))) 1s)) (- self.x 24s) (var 0s) (var 574s))
    call (draw_sprite_ext[]:int32 (+ (* (abs[]:int32 (sin[]:int32 (* self.siner 0.3d))) 0.5d) 0.4d) (var 16777215) (* (- (sin[]:int32 (/ self.siner (double 6s)))) 2s) (var 2s) (var 2s) (+ (+ self.y 18s) (* (sin[]:int32 (/ self.siner (double 3s))) 1s)) (+ self.x 28s) (var 0s) (var 574s))
0x00022C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (- 2s (* (sin[]:int32 (/ self.siner (double 3s))) 0.05d)) (var 2s) (+ (+ self.y 84s) 112s) self.x (var 0s) (var 575s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (sin[]:int32 (/ self.siner (double 6s))) 2s) (var 2s) (var 2s) (+ self.y 40s) (+ (+ self.x 40s) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) (var 0s) (var 572s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (- (sin[]:int32 (/ self.siner (double 6s)))) 2s) (var 2s) (var 2s) (+ self.y 40s) (- (- self.x 26s) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) (var 0s) (var 573s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 36s) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) (+ self.x 4s) (var 0s) (var 571s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y (* (sin[]:int32 (/ self.siner (double 3s))) 3s)) self.x global.faceemotion (var 570s))
    if !(== self.fadewhite 1s) goto 0x000700
0x000540:
    self.depth = -999999
    self.whiteval = (+ self.whiteval 0.2d)
    call (draw_set_alpha[]:int32 self.whiteval)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    if !(> self.whiteval 10s) goto 0x000654
0x0005E4:
    call (draw_set_alpha[]:int32 (+ -1s (/ self.whiteval (double 10s))))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
0x000654:
    if !(== self.whiteval 10s) goto 0x000684
0x000668:
    push -5s
    push (== 425s:flag 1s)
    goto 0x000688
0x000684:
    push 0s
0x000688:
    if !pop goto 0x0006A0
0x00068C:
    call (snd_play[]:int32 (var 91s))
0x0006A0:
    call (draw_set_alpha[]:int32 (var 1s))
    if !(>= self.whiteval 44s) goto 0x000700
0x0006C8:
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    call (room_goto[]:int32 global.currentroom)
0x000700:
    if !(== self.shake 1s) goto 0x000784
0x000714:
    self.x = (- (+ self.xnow (random[]:int32 (var 2s))) (random[]:int32 (var 2s)))
    self.y = (- (+ self.ynow (random[]:int32 (var 2s))) (random[]:int32 (var 2s)))
0x000784:
    exit
