0x000000:
    call (snd_play[]:int32 (var 154s))
    self.image_alpha = 0s
    call (instance_create[]:int32 (var 746s) self.y (- self.x 2s))
    call (instance_create[]:int32 (var 746s) (+ self.y 3s) self.x)
    call (instance_create[]:int32 (var 746s) (+ self.y 6s) (+ self.x 2s))
    call (instance_create[]:int32 (var 746s) self.y (+ self.x 8s))
    call (instance_create[]:int32 (var 746s) (+ self.y 3s) (+ self.x 10s))
    call (instance_create[]:int32 (var 746s) (+ self.y 6s) (+ self.x 12s))
    stog.alarm[2s] = 50s
0x000154:
    exit
