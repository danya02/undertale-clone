0x000000:
    self.friction = 0.025d
    self.dirdir = (point_direction[]:int32 (+ 1581.y 8s) (+ 1581.x 8s) self.y self.x)
    self.hspeed = (+ self.hspeed (lengthdir_x[]:int32 self.dirdir (var 0.13d)))
    self.vspeed = (+ self.vspeed (lengthdir_y[]:int32 self.dirdir (var 0.13d)))
    self.size = (+ self.size 0.02d)
    self.image_xscale = self.size
    self.image_yscale = self.size
    if !(> self.size 1s) goto 0x000158
0x000110:
    self.image_alpha = (- self.image_alpha 0.15d)
    if !(< self.image_alpha 0.2d) goto 0x000158
0x00014C:
    call (instance_destroy[]:int32 )
0x000158:
    exit
