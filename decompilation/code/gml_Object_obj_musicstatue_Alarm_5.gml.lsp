0x000000:
    call (instance_create[]:int32 (var 1152s) (- -8s (random[]:int32 (var 20s))) (+ (+ self.x 2s) (random[]:int32 (- self.sprite_width 6s))))
    stog.alarm[5s] = 3s
0x00006C:
    exit
