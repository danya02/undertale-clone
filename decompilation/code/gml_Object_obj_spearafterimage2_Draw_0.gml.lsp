0x000000:
    self.alpha = (- self.alpha 0.05d)
    if !(< self.alpha 0.13d) goto 0x000048
0x00003C:
    call (instance_destroy[]:int32 )
0x000048:
    self.image_angle = self.angle
    self.image_blend = self.color
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.image_alpha = self.alpha
    call (draw_sprite_ext[]:int32 self.alpha self.color self.angle (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
0x0000E4:
    exit
