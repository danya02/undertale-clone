0x000000:
    self.x = (- (+ self.nowx (random[]:int32 (var 3s))) (random[]:int32 (var 3s)))
    self.y = (- (+ self.nowy (random[]:int32 (var 3s))) (random[]:int32 (var 3s)))
    if !(== self.factor 1s) goto 0x000090
0x000084:
    self.visible = 1s
0x000090:
    self.factor = (+ self.factor 1s)
    if !(> self.factor 20s) goto 0x000110
0x0000BC:
    self.image_alpha = (- self.image_alpha 0.1d)
    if !(< self.image_alpha 0.2d) goto 0x000110
0x0000F8:
    call (instance_destroy[]:int32 )
    [obj_floweyx_flipeye].con = 6s
0x000110:
    if !(bool (instance_exists[]:int32 (var 1582s))) goto 0x00014C
0x000128:
    call (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
0x00014C:
    exit
