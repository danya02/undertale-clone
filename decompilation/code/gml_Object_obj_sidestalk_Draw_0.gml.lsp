0x000000:
    if !(== self.frozen 0s) goto 0x00002C
0x000014:
    self.siner = (+ self.siner 1s)
0x00002C:
    self.growth = (+ 1s (* (cos[]:int32 (/ self.siner (double 5s))) 0.01d))
    self.ssx = (* (* (sin[]:int32 (/ self.siner (double 3s))) 2s) self.image_xscale)
    self.ssy = (* (cos[]:int32 (/ self.siner (double 3s))) 2s)
    if !(!= self.frozen 0s) goto 0x0000EC
0x0000E0:
    self.image_speed = 1s
0x0000EC:
    if !(== self.frozen 0s) goto 0x00010C
0x000100:
    self.image_speed = 3s
0x00010C:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) self.growth self.image_xscale (+ self.y self.ssy) (- self.x self.ssx) self.image_index self.sprite_index)
0x000178:
    exit
