0x000000:
    if !(== self.frozen 0s) goto 0x00002C
0x000014:
    self.siner = (+ self.siner 1s)
0x00002C:
    self.msin = (* (sin[]:int32 (/ self.siner (double 9s))) 2s)
    self.ysin = (* (cos[]:int32 (/ self.siner (double 8s))) 1s)
    self.growth = (* (sin[]:int32 (/ self.siner (double 7s))) 0.012d)
    self.msin2 = (* (sin[]:int32 (/ self.siner (double 10s))) 1.5d)
    self.ysin2 = (* (cos[]:int32 (/ self.siner (double 9s))) 0.8d)
    self.growth2 = (* (sin[]:int32 (/ self.siner (double 8s))) 0.01d)
    self.msin3 = (* (sin[]:int32 (/ self.siner (double 11s))) 1s)
    self.ysin3 = (* (cos[]:int32 (/ self.siner (double 10s))) 0.5d)
    self.growth3 = (* (sin[]:int32 (/ self.siner (double 9s))) 0.005d)
    self.blend3 = (merge_color[]:int32 (var 0.4d) (var 0s) self.image_blend)
    call (draw_sprite_ext[]:int32 (var 1s) self.blend3 (var 0s) (var 1s) (+ self.growth3 self.image_xscale) (- (+ self.y self.ysin3) 20s) (+ self.x (* (- self.msin3 60s) self.image_xscale)) self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) self.blend3 (var 0s) (var 1s) (+ self.growth2 self.image_xscale) (- (+ self.y self.ysin2) 10s) (+ self.x (* (- self.msin2 40s) self.image_xscale)) self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 1s) (+ self.growth self.image_xscale) (+ self.y self.ysin) (+ self.x (* self.msin self.image_xscale)) self.image_index self.sprite_index)
0x0003C4:
    exit
