0x000000:
    if !(== self.frozen 0s) goto 0x00002C
0x000014:
    self.siner = (+ self.siner 1s)
0x00002C:
    self.growth = (+ 1s (* (sin[]:int32 (/ self.siner (double 6s))) 0.05d))
    self.growth2 = (+ 1s (* (cos[]:int32 (/ self.siner (double 6s))) 0.05d))
    self.growth3 = (- 1s (* (sin[]:int32 (/ self.siner (double 7s))) 0.05d))
    self.ssx = (* (* (sin[]:int32 (/ self.siner (double 4s))) 2s) self.image_xscale)
    self.ssx2 = (* (* (sin[]:int32 (/ self.siner (double 5s))) 1s) self.image_xscale)
    self.ssx3 = (* (* (cos[]:int32 (/ self.siner (double 6s))) 0.5d) self.image_xscale)
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) self.growth3 self.image_xscale self.y (+ (- self.x self.ssx3) 20s) self.image_index (var 2195s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) self.growth2 self.image_xscale self.y (- (- self.x self.ssx2) 20s) self.image_index (var 2194s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) self.growth self.image_xscale self.y (- self.x self.ssx) self.image_index (var 2193s))
0x0002C0:
    exit
