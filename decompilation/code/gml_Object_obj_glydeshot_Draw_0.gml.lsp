0x000000:
    self.siner = (+ self.siner 1s)
    self.image_angle = (+ self.image_angle self.aa)
    call (draw_sprite_ext[]:int32 (+ 0.7d (sin[]:int32 (/ self.siner (double 3s)))) self.image_blend self.image_angle self.image_yscale self.image_xscale self.y self.x (var 0s) (var 241s))
    call (draw_sprite_ext[]:int32 (+ (- (sin[]:int32 (/ self.siner (double 3s)))) 0.7d) self.image_blend (+ self.image_angle 45s) self.image_yscale self.image_xscale self.y self.x (var 1s) (var 241s))
    if !(< self.image_xscale 3s) goto 0x000184
0x000144:
    self.image_xscale = (+ self.image_xscale 0.05d)
    self.image_yscale = (+ self.image_yscale 0.05d)
0x000184:
    if !(> self.y 500s) goto 0x0001A4
0x000198:
    call (instance_destroy[]:int32 )
0x0001A4:
    if !(< global.turntimer 2s) goto 0x0001C4
0x0001B8:
    call (instance_destroy[]:int32 )
0x0001C4:
    exit
