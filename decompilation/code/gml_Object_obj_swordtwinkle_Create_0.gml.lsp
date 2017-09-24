0x000000:
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.gravity = (+ 0.05d (random[]:int32 (var 0.1d)))
    self.gravity_direction = (+ (- 180s (random[]:int32 (var 40s))) (random[]:int32 (var 40s)))
    self.vspeed = (- (+ 1s (random[]:int32 (var 1s))) (random[]:int32 (var 2s)))
    if !(< self.x (/ self.room_width (double 2s))) goto 0x0000EC
0x0000D4:
    self.gravity = (* self.gravity -1s)
0x0000EC:
    self.fade = 0s
    stog.alarm[0s] = 40s
0x00010C:
    exit
