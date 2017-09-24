0x000000:
    self.x = (random[]:int32 self.room_width)
    self.gravity = 0.02d
    self.vspeed = 1s
    self.image_alpha = 0.5d
    self.rotspeed = (* (choose[]:int32 (var -1s) (var 1s)) (+ 2s (random[]:int32 (var 4s))))
    self.hspeed = (* (choose[]:int32 (var -1s) (var 1s)) (+ 1s (random[]:int32 (var 1s))))
    self.siner = 0s
    self.sinerfactor = (* (choose[]:int32 (var -1s) (var 1s)) (random[]:int32 (var 1s)))
0x000104:
    exit
