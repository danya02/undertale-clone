0x000000:
    self.noarm = 1s
    self.fallarml = (instance_create[]:int32 (var 407s) (+ (+ (- self.y self.legh) 80s) (* (cos[]:int32 (/ self.siner 3.5d)) 2s)) (+ (+ self.x 36s) (sin[]:int32 (/ self.siner 3.5d))))
    push 2s
    stog.image_xscale* = (int32 self.fallarml)
    push 2s
    stog.image_yscale* = (int32 self.fallarml)
    push self.armlsprite
    stog.sprite_index* = (int32 self.fallarml)
    self.fallarmr = (instance_create[]:int32 (var 407s) (+ (+ (- self.y self.legh) 80s) (* (cos[]:int32 (/ self.siner 3.5d)) 2s)) (+ (+ self.x 110s) (sin[]:int32 (/ self.siner 3.5d))))
    push -2s
    stog.image_xscale* = (int32 self.fallarmr)
    push 2s
    stog.image_yscale* = (int32 self.fallarmr)
    push self.armrsprite
    stog.sprite_index* = (int32 self.fallarmr)
0x0001CC:
    exit
