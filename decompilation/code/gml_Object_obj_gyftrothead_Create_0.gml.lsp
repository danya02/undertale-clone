0x000000:
    stog.alarm[2s] = (+ (random[]:int32 (var 60s)) 40s)
    self.image_xscale = 2s
    self.image_yscale = 2s
    stog.alarm[1s] = 45s
    call (instance_create[]:int32 (var 238s) (+ self.y 96s) (+ self.x 50s))
    self.image_speed = 0s
0x000094:
    exit
