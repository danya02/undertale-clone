0x000000:
    call (instance_create[]:int32 (var 682s) (+ self.y (- (/ self.sprite_width (double 2s)) 8s)) (+ self.x (- (/ self.sprite_width (double 2s)) 8s)))
    self.dmg = 5s
    if !(< global.hp 7s) goto 0x000090
0x000084:
    self.dmg = 2s
0x000090:
    self.image_speed = 0.5d
    self.goof = 0s
0x0000B0:
    exit
