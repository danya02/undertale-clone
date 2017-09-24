0x000000:
    call (instance_create[]:int32 (var 682s) (+ self.y (- (/ self.sprite_width (double 2s)) 8s)) (+ self.x (- (/ self.sprite_width (double 2s)) 8s)))
    self.dmg = 4s
    if !(< global.hp 7s) goto 0x000090
0x000084:
    self.dmg = 2s
0x000090:
    self.image_speed = 0.5d
    push self.x
    if !(< -5s 0s:idealborder) goto 0x0000D0
0x0000C4:
    call (instance_destroy[]:int32 )
0x0000D0:
    stog.alarm[0s] = 40s
    stog.alarm[1s] = 45s
    self.bounced = 0s
0x000104:
    exit
