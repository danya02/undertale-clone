0x000000:
    call (instance_create[]:int32 (var 682s) (+ self.y (- (/ self.sprite_width (double 2s)) 8s)) (+ self.x (- (/ self.sprite_width (double 2s)) 8s)))
    self.dmg = 0s
    self.image_speed = 0.5d
    call (move_towards_point[]:int32 (var 2.5d) (+ 743.y 2s) (+ 743.x 2s))
    stog.alarm[0s] = 30s
    stog.alarm[1s] = 45s
0x0000E8:
    exit
