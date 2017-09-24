0x000000:
    self.timer = (+ self.timer 1s)
    if !(== self.timer 15s) goto 0x000040
0x00002C:
    stog.alarm[0s] = 5s
0x000040:
    if !(< self.timer 15s) goto 0x000130
0x000054:
    self.ss = (+ self.ss (- (random[]:int32 (var 1s)) (random[]:int32 (var 0.8d))))
    self.rr = (+ self.rr (- (random[]:int32 (var 0.8d)) (random[]:int32 (var 1s))))
    self.ssin = (* (sin[]:int32 (/ self.ss (double 3s))) 5s)
    self.rsin = (* (sin[]:int32 (/ self.rr (double 3s))) 5s)
    goto 0x0002B0
0x000130:
    self.ssini = (lengthdir_x[]:int32 (point_direction[]:int32 (+ 743.y 8s) (+ 743.x 8s) self.y self.x) (var 5s))
    self.rsini = (lengthdir_y[]:int32 (point_direction[]:int32 (+ 743.y 8s) (+ 743.x 8s) self.y self.x) (var 5s))
    if !(< self.rsin (- self.rsini 1s)) goto 0x000208
0x0001F0:
    self.rsin = (+ self.rsin 1s)
0x000208:
    if !(> self.rsin (+ self.rsini 1s)) goto 0x000240
0x000228:
    self.rsin = (- self.rsin 1s)
0x000240:
    if !(< self.ssin (- self.ssini 1s)) goto 0x000278
0x000260:
    self.ssin = (+ self.ssin 1s)
0x000278:
    if !(> self.ssin (+ self.ssini 1s)) goto 0x0002B0
0x000298:
    self.ssin = (- self.ssin 1s)
0x0002B0:
    self.siner = (+ self.siner 1s)
    self.sz = (* (sin[]:int32 (/ self.siner (double 4s))) 0.2d)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y (/ self.rsin (double 2s))) (+ (- self.x (/ self.ssin (double 2s))) (sin[]:int32 (/ self.siner (double 6s)))) self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ 0.8d self.sz) (+ 0.8d self.sz) (+ self.y self.rsin) (+ self.x self.ssin) self.image_index self.sprite_index)
0x000434:
    exit
