0x000000:
    self.green = 1s
    self.kid = (instance_create[]:int32 (var 320s) (- self.y 5s) (- self.x 10s))
    push self.parent
    stog.parent* = (int32 self.kid)
    self.vspeed = (/ self.vspeed 1.3d)
0x000080:
    exit
