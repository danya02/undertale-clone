0x000000:
    self.sinvalue = 0s
    if !(== self.hspeed 0s) goto 0x000074
0x000020:
    self.sinvalue = (+ self.sinvalue (* (sin[]:int32 (/ self.siner (double 3s))) 2s))
    self.image_angle = (+ self.image_angle self.sinvalue)
0x000074:
    if !(== self.behind 0s) goto 0x0001D4
0x000088:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.image_angle self.image_yscale self.image_xscale (+ self.y (- (random[]:int32 (* self.shaker 2s)) self.shaker)) (+ (+ self.x self.sinvalue) (- (random[]:int32 (* self.shaker 2s)) self.shaker)) self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.image_angle self.image_yscale self.image_xscale (- self.y (* (sin[]:int32 (/ self.siner (double 4s))) 5s)) (+ self.x self.sinvalue) (/ self.siner (double 6s)) self.arms)
0x0001D4:
    if !(== self.behind 1s) goto 0x000334
0x0001E8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.image_angle self.image_yscale self.image_xscale (+ self.y (- (random[]:int32 (* self.shaker 2s)) self.shaker)) (+ (+ self.x self.sinvalue) (- (random[]:int32 (* self.shaker 2s)) self.shaker)) self.image_index (var 327s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.image_angle self.image_yscale self.image_xscale (- self.y (* (sin[]:int32 (/ self.siner (double 4s))) 5s)) (+ self.x self.sinvalue) (/ self.siner (double 6s)) (var 320s))
0x000334:
    if !(== self.behind 2s) goto 0x0004A0
0x000348:
    self.sineron = 0s
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.image_angle self.image_yscale self.image_xscale (+ self.y (- (random[]:int32 (* self.shaker 2s)) self.shaker)) (+ (+ self.x self.sinvalue) (- (random[]:int32 (* self.shaker 2s)) self.shaker)) self.image_index (var 328s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.image_angle self.image_yscale self.image_xscale (- self.y (* (sin[]:int32 (/ self.siner (double 4s))) 5s)) (+ self.x self.sinvalue) (/ self.siner (double 6s)) (var 320s))
0x0004A0:
    if !(== self.behind 3s) goto 0x000694
0x0004B4:
    self.sineron = 0s
    self.siner = (+ self.siner (+ 1s self.trueanim))
    self.shaker = self.trueanim
    self.sinvalue = (* self.sinvalue self.trueanim)
    self.image_angle = (+ self.image_angle (* self.sinvalue 1.4d))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.image_angle self.image_yscale self.image_xscale (+ self.y (- (random[]:int32 (* self.shaker 2s)) self.shaker)) (+ (+ self.x self.sinvalue) (- (random[]:int32 (* self.shaker 2s)) self.shaker)) (/ self.siner (double 3s)) (var 326s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.image_angle self.image_yscale self.image_xscale (- self.y (* (sin[]:int32 (/ self.siner (double 4s))) 5s)) (+ self.x self.sinvalue) (/ self.siner (double 6s)) (var 323s))
0x000694:
    if !(== self.sineron 1s) goto 0x0006C0
0x0006A8:
    self.siner = (+ self.siner 1s)
0x0006C0:
    exit
