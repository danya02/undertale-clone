0x000000:
    self.siner = (+ self.siner 1s)
    if !(> self.speed 0s) goto 0x000048
0x00002C:
    self.image_angle = (+ self.image_angle self.aa)
0x000048:
    if !(== self.breaking 0s) goto 0x000158
0x00005C:
    call (draw_sprite_ext[]:int32 (+ 0.7d (sin[]:int32 (/ self.siner (double 3s)))) self.image_blend self.image_angle self.image_yscale self.image_xscale self.y self.x (var 0s) (var 241s))
    call (draw_sprite_ext[]:int32 (+ (- (sin[]:int32 (/ self.siner (double 3s)))) 0.7d) self.image_blend (+ self.image_angle 45s) self.image_yscale self.image_xscale self.y self.x (var 1s) (var 241s))
0x000158:
    if !(< self.image_xscale 10s) goto 0x000258
0x00016C:
    self.x = (+ self.x (/ (* (sin[]:int32 self.siner) self.image_xscale) (double 2s)))
    self.y = (+ self.y (/ (* (cos[]:int32 self.siner) self.image_xscale) (double 2s)))
    if !(< self.image_alpha 1s) goto 0x000218
0x0001F8:
    self.image_alpha = (+ self.image_alpha 0.05d)
0x000218:
    self.image_xscale = (+ self.image_xscale 0.5d)
    self.image_yscale = (+ self.image_yscale 0.5d)
0x000258:
    push self.y
    if !(> -5s (- 3s:idealborder 20s)) goto 0x000294
0x000280:
    push (== self.breaking 0s)
    goto 0x000298
0x000294:
    push 0s
0x000298:
    if !pop goto 0x0002BC
0x00029C:
    self.breaking = 1s
    call (snd_play[]:int32 (var 142s))
0x0002BC:
    if !(== self.breaking 1s) goto 0x000324
0x0002D0:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle self.image_yscale self.image_xscale self.y self.x (var 0s) (var 241s))
0x000324:
    if !(== self.breaking 1s) goto 0x000598
0x000338:
    self.speed = 0s
    self.tab = (+ self.tab 0.1d)
    if !(< self.talpha 1s) goto 0x000398
0x000378:
    self.talpha = (+ self.talpha 0.2d)
0x000398:
    self.image_alpha = (- self.image_alpha 0.05d)
    self.image_xscale = (+ self.image_xscale 0.5d)
    self.image_yscale = (+ self.image_yscale 0.5d)
    self.true_tab = 0s
    if !(>= self.talpha 1s) goto 0x000438
0x000418:
    self.true_tab = (- self.tab 0.5d)
0x000438:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_set_font[]:int32 (var 1s))
    call (draw_set_alpha[]:int32 (- self.talpha self.true_tab))
    call (draw_text_transformed[]:int32 (+ 1s self.talpha) (* self.talpha 2s) (* self.talpha 2s) self.phrase (- (- (- (+ (- self.y 10s) (random[]:int32 (var 2s))) (random[]:int32 (var 2s))) 10s) (* self.talpha 10s)) (- (+ (- (- self.x 20s) (* self.talpha 40s)) (random[]:int32 (var 2s))) (random[]:int32 (var 2s))))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(< self.image_alpha -1s) goto 0x000598
0x00058C:
    call (instance_destroy[]:int32 )
0x000598:
    if !(< global.turntimer 1s) goto 0x0005B8
0x0005AC:
    call (instance_destroy[]:int32 )
0x0005B8:
    exit
