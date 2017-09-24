0x000000:
    self.dmg = 10s
    self.height = 86s
    self.length = 65s
    self.leg1 = (instance_create[]:int32 (var 663s) (+ self.y self.height) (+ self.x 20s))
    self.leg2 = (instance_create[]:int32 (var 663s) (+ self.y self.height) (+ self.x 30s))
    push 6.28318530717959d
    stog.siner* = (int32 self.leg2)
    self.leg3 = (instance_create[]:int32 (var 663s) (+ self.y self.height) (+ (+ self.x 40s) self.length))
    self.leg4 = (instance_create[]:int32 (var 663s) (+ self.y self.height) (+ (+ self.x 50s) self.length))
    push 6.28318530717959d
    stog.siner* = (int32 self.leg4)
    push 20s
    stog.length* = (int32 self.leg3)
    push 20s
    stog.length* = (int32 self.leg4)
    [obj_temleg].height = self.height
    [obj_temleg].dmg = (- self.dmg 3s)
    self.control = 0s
    self.adjustspeed = 0.15d
    self.siner = 0s
0x0001F0:
    exit
