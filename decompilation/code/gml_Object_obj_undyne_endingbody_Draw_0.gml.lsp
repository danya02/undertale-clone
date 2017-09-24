0x000000:
    self.goof = (* (sin[]:int32 (/ self.siner (double 5s))) 10s)
    self.siner = (+ self.siner 1s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ (- self.y 60s) (/ self.goof (double 3s))) (* self.s_i 2s)) (- self.x 60s) (/ self.siner (double 5s)) (var 282s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 10s) (- self.x 4s) (var 0s) (var 292s))
    if !(== self.shock 0s) goto 0x000398
0x000160:
    if !(== self.smooch 0s) goto 0x0001DC
0x000174:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- (+ 6s self.y) 50s) self.x self.face (var 285s))
0x0001DC:
    if !(== self.smooch 1s) goto 0x0002E4
0x0001F0:
    if !(> self.s_a -50s) goto 0x000244
0x000204:
    self.s_i = (+ self.s_i 0.125d)
    self.s_a = (- self.s_a 0.5d)
0x000244:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.s_a (var 2s) (var 2s) (+ (+ (- (+ 6s self.y) 50s) 26s) self.s_i) (+ (+ self.x 22s) (* self.s_i 2s)) (floor[]:int32 self.s_i) (var 2297s))
0x0002E4:
    if !(== self.smooch 2s) goto 0x000398
0x0002F8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.s_a (var 2s) (var 2s) (+ (+ (- (+ 6s self.y) 50s) 26s) self.s_i) (+ (+ self.x 22s) (* self.s_i 2s)) (floor[]:int32 self.s_i) (var 2298s))
0x000398:
    if !(== self.shock 1s) goto 0x000414
0x0003AC:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- (+ 6s self.y) 50s) self.x (var 0s) (var 2327s))
0x000414:
    exit
