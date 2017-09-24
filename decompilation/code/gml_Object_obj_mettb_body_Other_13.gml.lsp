0x000000:
    self.dance = 0s
    self.noleg = 1s
    self.falllegl = (instance_create[]:int32 (var 407s) (- (- (+ (+ self.y 120s) self.yoffl) self.legh) (* (sin[]:int32 (/ self.siner (double 2s))) 0.05d)) (- (- (+ self.x 90s) self.xoffl) 32s))
    push 2s
    stog.image_xscale* = (int32 self.falllegl)
    push 2s
    stog.image_yscale* = (int32 self.falllegl)
    push self.leglsprite
    stog.sprite_index* = (int32 self.falllegl)
    self.falllegr = (instance_create[]:int32 (var 407s) (- (- (+ (+ self.y 120s) self.yoffr) self.legh) (* (sin[]:int32 (/ self.siner (double 2s))) 0.05d)) (- (+ (+ self.x 90s) self.xoffr) 200s))
    push -2s
    stog.image_xscale* = (int32 self.falllegr)
    push 2s
    stog.image_yscale* = (int32 self.falllegr)
    stog.x* = (+ (int32 self.falllegr):x 200s)
    push self.legrsprite
    stog.sprite_index* = (int32 self.falllegr)
0x000200:
    exit
