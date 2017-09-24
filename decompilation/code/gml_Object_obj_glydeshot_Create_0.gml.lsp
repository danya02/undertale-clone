0x000000:
    self.siner = 0s
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.aa = (choose[]:int32 (var -2s) (var 2s))
    self.direction = (- 300s (random[]:int32 (var 60s)))
    self.speed = 7s
    self.friction = (random[]:int32 (var -0.1d))
    self.dmg = 9s
    if !(bool (instance_exists[]:int32 (var 228s))) goto 0x0000D4
0x0000B4:
    push -5s
    self.dmg = (int32 228.myself):monsteratk
0x0000D4:
    exit
