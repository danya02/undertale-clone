0x000000:
    call (caster_free[]:int32 (var -3s))
    self.visible = 1s
    self.type = (floor[]:int32 (random[]:int32 (var 8s)))
    self.image_xscale = 2s
    self.image_yscale = 2s
    if !(== self.type 7s) goto 0x000128
0x00006C:
    self.x = (/ self.room_width (double 2s))
    self.y = (/ self.room_height (double 2s))
    self.sprite_index = 1518s
    self.thissong = (caster_load[]:int32 (var "music/sigh_of_dog.ogg"))
    call (caster_loop[]:int32 (+ 0.8d (random[]:int32 (var 0.2d))) (var 1s) self.thissong)
    self.image_speed = 0.05d
    goto 0x000204
0x000128:
    self.x = (- (/ self.room_width (double 2s)) (/ self.sprite_width (double 2s)))
    self.y = (- (/ self.room_height (double 2s)) (/ self.sprite_height (double 2s)))
    self.thissong = (caster_load[]:int32 (var "music/dance_of_dog.ogg"))
    call (caster_loop[]:int32 (+ 0.95d (random[]:int32 (var 0.1d))) (var 1s) self.thissong)
    self.image_speed = 0.15d
0x000204:
    exit
