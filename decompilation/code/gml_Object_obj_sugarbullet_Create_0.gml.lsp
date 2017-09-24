0x000000:
    self.size = 0.2d
    self.ang = (+ 2s (* (random[]:int32 (var 2s)) (choose[]:int32 (var -1s) (var 1s))))
    self.idealspot = 1s
    stog.alarm[0s] = 1s
    self.vspeed = (- -4s (random[]:int32 (var 1s)))
    self.gravity = (+ 0.25d (random[]:int32 (var 0.02d)))
    self.image_xscale = self.size
    self.image_yscale = self.size
0x0000E0:
    exit
