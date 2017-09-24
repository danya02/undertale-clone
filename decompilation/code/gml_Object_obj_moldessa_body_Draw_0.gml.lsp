0x000000:
    self.siner = (+ self.siner 1s)
    if !(== self.facego 1s) goto 0x000044
0x00002C:
    self.f_siner = (+ self.f_siner 1s)
0x000044:
    if !(== self.pause 0s) goto 0x00067C
0x000058:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (- 2s (* (sin[]:int32 (/ self.siner (double 7s))) 0.1d)) (+ 2s (* (sin[]:int32 (/ self.siner (double 7s))) 0.1d)) (+ self.y 114s) self.x (var 0s) (var 830s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (+ (* self.f_siner 3s) (* (sin[]:int32 (/ self.siner (double 6s))) 4s)) (var 2s) (var 2s) (+ (+ (+ self.y 56s) (* (cos[]:int32 (/ self.f_siner (double 16s))) 18s)) (* (cos[]:int32 (/ self.siner (double 6s))) 1s)) (+ (+ self.x (* (sin[]:int32 (/ self.f_siner (double 16s))) 13s)) (* (sin[]:int32 (/ self.siner (double 6s))) 1s)) -1s 0s:face (var 829s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (+ (+ (* self.f_siner 3s) 180s) (* (sin[]:int32 (/ self.siner (double 6s))) 4s)) (var 2s) (var 2s) (+ (+ (+ self.y 56s) (* (cos[]:int32 (/ (+ self.f_siner 36s) (double 16s))) 18s)) (* (cos[]:int32 (/ self.siner (double 6s))) 1s)) (+ (+ self.x (* (sin[]:int32 (/ (+ self.f_siner 36s) (double 16s))) 13s)) (* (sin[]:int32 (/ self.siner (double 6s))) 1s)) -1s 1s:face (var 829s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (+ (+ (* self.f_siner 3s) 180s) (* (sin[]:int32 (/ self.siner (double 6s))) 4s)) (var 2s) (var 2s) (+ (+ (+ self.y 56s) (* (cos[]:int32 (/ (+ self.f_siner 65s) (double 16s))) 18s)) (* (cos[]:int32 (/ self.siner (double 6s))) 1s)) (+ (+ self.x (* (sin[]:int32 (/ (+ self.f_siner 65s) (double 16s))) 13s)) (* (sin[]:int32 (/ self.siner (double 6s))) 1s)) -1s 2s:face (var 829s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (- self.y 4s) (* (sin[]:int32 (/ self.siner (double 7s))) 2s)) self.x (var 0s) (var 831s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (+ -5s (* (sin[]:int32 (/ self.siner (double 7s))) 5s)) (var 2s) (var 2s) self.y (- self.x 12s) (var 0s) (var 832s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (- 5s (* (sin[]:int32 (/ self.siner (double 7s))) 5s)) (var 2s) (var -2s) self.y (+ self.x 14s) (var 0s) (var 832s))
    goto 0x000770
0x00067C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (- self.y 2s) (- self.x 48s) (floor[]:int32 (/ self.siner (double 4s))) (var 828s))
    stog.face[0s] = (floor[]:int32 (random[]:int32 (var 9s)))
    stog.face[1s] = (floor[]:int32 (random[]:int32 (var 9s)))
    stog.face[2s] = (floor[]:int32 (random[]:int32 (var 9s)))
0x000770:
    exit
