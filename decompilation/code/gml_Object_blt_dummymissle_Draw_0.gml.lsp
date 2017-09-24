0x000000:
    if !(== self.normal 1s) goto 0x0000C4
0x000014:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.image_angle (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.image_angle (var 1s) (var 1s) self.y self.x self.image_index (var 108s))
0x0000C4:
    if !(< self.create 6s) goto 0x000170
0x0000D8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.image_angle (var 1s) (var 1s) self.y self.x (- 6s self.create) (var 109s))
    self.create = (+ self.create 1s)
    if !(>= self.create 6s) goto 0x000170
0x000164:
    self.normal = 1s
0x000170:
    if !(>= self.destroy 1s) goto 0x0002E0
0x000184:
    self.x = (+ self.x (- (random[]:int32 (var 2s)) (random[]:int32 (var 2s))))
    self.y = (+ self.y (- (random[]:int32 (var 2s)) (random[]:int32 (var 2s))))
    if !(>= self.destroy 2s) goto 0x000248
0x000208:
    self.image_xscale = (+ self.image_xscale 0.25d)
    self.image_yscale = (+ self.image_yscale 0.25d)
0x000248:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) self.image_angle self.image_yscale self.image_xscale self.y self.x (- self.destroy 1s) (var 109s))
    self.destroy = (+ self.destroy 1s)
    if !(>= self.destroy 8s) goto 0x0002E0
0x0002D4:
    call (instance_destroy[]:int32 )
0x0002E0:
    exit
