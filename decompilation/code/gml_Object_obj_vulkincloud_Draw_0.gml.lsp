0x000000:
    self.image_alpha = (- self.image_alpha 0.02d)
    if !(< self.image_alpha 0.05d) goto 0x000048
0x00003C:
    call (instance_destroy[]:int32 )
0x000048:
    self.rot = (+ self.rot 2s)
    self.size = (+ self.size 0.07d)
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) self.rot self.size self.size self.y self.x (var 9s) self.sprite_index)
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner (double 5s))) 2s))
0x000128:
    exit
