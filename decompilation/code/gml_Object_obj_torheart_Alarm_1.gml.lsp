0x000000:
    call (snd_play[]:int32 (var 30s))
    self.visible = 0s
    call (instance_create[]:int32 (var 747s) self.y (- self.x 2s))
    call (instance_create[]:int32 (var 747s) (+ self.y 3s) self.x)
    call (instance_create[]:int32 (var 747s) (+ self.y 6s) (+ self.x 2s))
    call (instance_create[]:int32 (var 747s) self.y (+ self.x 8s))
    call (instance_create[]:int32 (var 747s) (+ self.y 3s) (+ self.x 10s))
    call (instance_create[]:int32 (var 747s) (+ self.y 6s) (+ self.x 12s))
    stog.alarm[2s] = 180s
0x000154:
    exit
