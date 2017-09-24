0x000000:
    if !(== (instance_exists[]:int32 (var 1557s)) 0s) goto 0x00002C
0x00001C:
    call (instance_destroy[]:int32 )
    goto 0x000118
0x00002C:
    self.image_speed = 0s
    self.aa = (- (random[]:int32 (var 2s)) (random[]:int32 (var 2s)))
    self.x = (+ (- 1557.x (random[]:int32 (var 400s))) (random[]:int32 (var 90s)))
    self.y = (+ (- 1557.y (random[]:int32 (var 70s))) (random[]:int32 (var 40s)))
    self.siner = (random[]:int32 (var 40s))
    self.con = 0s
    self.ss = (+ 12s (random[]:int32 (var 4s)))
0x000118:
    exit
