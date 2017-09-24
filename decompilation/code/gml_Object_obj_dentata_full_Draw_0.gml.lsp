0x000000:
    self.dnty = (* (* (sin[]:int32 (/ self.siner (double 4s))) 2s) self.size)
    self.dntyx = (* (* (cos[]:int32 (/ self.siner (double 2s))) 2s) self.size)
    self.dnty2 = (* (* (sin[]:int32 (/ self.siner (double 3s))) 4s) self.size)
    self.rt = (* (cos[]:int32 (/ self.siner (double 4s))) 5s)
    self.ssx = (* (* (sin[]:int32 (/ self.siner (double 3s))) 3s) self.image_xscale)
    self.ssy = (* (cos[]:int32 (/ self.siner (double 3s))) 3s)
    if !(== self.halfsies 0s) goto 0x0002E8
0x00014C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 8421504) self.rt self.size self.size (+ (+ self.y self.dnty) self.ssy) (+ self.x self.ssx) (var 0s) (var 2187s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.rt self.size self.size (+ (- (+ self.y self.dnty2) (* 4s self.size)) self.ssy) (+ (- self.x self.dntyx) self.ssx) (var 0s) (var 2185s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.rt self.size self.size (+ (- self.y self.dnty2) (* 4s self.size)) (+ self.x self.dntyx) (var 0s) (var 2186s))
0x0002E8:
    if !(== self.halfsies 1s) goto 0x0004C8
0x0002FC:
    self.rt = (+ self.rt 90s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 8421504) self.rt self.size self.size (+ self.y self.ssy) (+ (+ self.x self.dnty) self.ssx) (var 0s) (var 2181s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.rt self.size self.size (+ (- self.y self.dntyx) self.ssy) (+ (- (+ self.x self.dnty2) (* 4s self.size)) self.ssx) (var 0s) (var 2184s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.rt self.size self.size (+ (+ self.y self.dntyx) self.ssy) (+ (+ (- self.x self.dnty2) (* 4s self.size)) self.ssx) (var 0s) (var 2183s))
0x0004C8:
    if !(== self.halfsies 2s) goto 0x0006A8
0x0004DC:
    self.rt = (- self.rt 90s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 8421504) self.rt self.size self.size (+ self.y self.ssy) (+ (+ self.x self.dnty) self.ssx) (var 0s) (var 2181s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.rt self.size self.size (+ (- self.y self.dntyx) self.ssy) (+ (+ (- self.x self.dnty2) (* 4s self.size)) self.ssx) (var 0s) (var 2184s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.rt self.size self.size (+ (+ self.y self.dntyx) self.ssy) (+ (- (+ self.x self.dnty2) (* 4s self.size)) self.ssx) (var 0s) (var 2183s))
0x0006A8:
    self.siner = (+ self.siner 1s)
    if !(< self.maxer 0.8d) goto 0x0006FC
0x0006DC:
    self.maxer = (+ self.maxer 0.1d)
0x0006FC:
    self.size = (+ self.maxer (* (sin[]:int32 (/ self.siner (double 2s))) 0.02d))
0x00073C:
    exit
