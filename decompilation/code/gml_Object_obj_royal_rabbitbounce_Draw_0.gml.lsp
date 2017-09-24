0x000000:
    if !(!= self.myinteract 0s) goto 0x0000E8
0x000014:
    self.siner = (+ self.siner 1s)
    self.y = (- self.y (* (cos[]:int32 (/ self.siner (double 3s))) 0.6d))
    self.image_yscale = (+ 1s (* (sin[]:int32 (/ self.siner (double 3s))) 0.1d))
    self.image_xscale = (- 1s (* (sin[]:int32 (/ self.siner (double 3s))) 0.05d))
    goto 0x00011C
0x0000E8:
    self.siner = 0s
    self.image_yscale = 1s
    self.image_xscale = 1s
    self.y = self.ystart
0x00011C:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) self.image_yscale self.image_xscale self.y self.x self.image_index self.sprite_index)
0x000174:
    exit
