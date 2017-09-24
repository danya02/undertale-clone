0x000000:
    if !(== self.falling 0s) goto 0x00004C
0x000014:
    self.depth = (- 50000 (+ (* self.y 10s) (* self.sprite_height 4s)))
0x00004C:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x0000CC
0x000064:
    if !(> self.vspeed 0.1d) goto 0x000098
0x000080:
    self.depth = (- 1570.depth 1s)
0x000098:
    if !(< self.vspeed -0.1d) goto 0x0000CC
0x0000B4:
    self.depth = (+ 1570.depth 1s)
0x0000CC:
    if !(> self.falling 0s) goto 0x0000EC
0x0000E0:
    self.depth = 1000s
0x0000EC:
    self.xchange = (abs[]:int32 self.hspeed)
    self.ychange = (abs[]:int32 self.vspeed)
    self.tchange = (+ self.xchange self.ychange)
    self.angle = (+ self.angle (/ (* self.tchange 30s) (* self.size 10s)))
    self.image_xscale = self.size
    self.image_yscale = self.size
    if !(== self.falling 1s) goto 0x0001D0
0x0001A4:
    self.friction = -0.1d
    self.vspeed = 3s
    self.falling = 2s
0x0001D0:
    if !(== self.falling 2s) goto 0x0001FC
0x0001E4:
    push (> self.y self.specialy)
    goto 0x000200
0x0001FC:
    push 0s
0x000200:
    if !pop goto 0x000240
0x000204:
    self.y = self.specialy
    self.friction = 0.1d
    self.vspeed = 0s
    self.falling = 0s
0x000240:
    if (== self.t 1s) goto 0x000268
0x000254:
    push (== self.t 2s)
    goto 0x00026C
0x000268:
    push 1s
0x00026C:
    if !pop goto 0x0002BC
0x000270:
    if !(== self.hspeed 0s) goto 0x000298
0x000284:
    push (== self.vspeed 0s)
    goto 0x00029C
0x000298:
    push 0s
0x00029C:
    if !pop goto 0x0002B0
0x0002A0:
    self.t = 1s
    goto 0x0002BC
0x0002B0:
    self.t = 2s
0x0002BC:
    self.golf = 0s
    if !(== self.t 1s) goto 0x00032C
0x0002DC:
    if !(> self.shrinko 0s) goto 0x00030C
0x0002F0:
    self.shrinko = (- self.shrinko 1s)
    goto 0x00032C
0x00030C:
    self.size = (- self.size 0.01d)
0x00032C:
    if !(< self.size 0.2d) goto 0x000374
0x000348:
    call (instance_destroy[]:int32 )
    pushenv 1014s 0x000370
0x00035C:
    stog.alarm[0s] = 10s
0x000370:
    popenv 0x00035C
0x000374:
    if !(== self.timeincrease 1s) goto 0x0003A0
0x000388:
    self.rolltime = (+ self.rolltime 1s)
0x0003A0:
    if !(== self.falling 5s) goto 0x0003D0
0x0003B4:
    push (>= self.size 0.2d)
    goto 0x0003D4
0x0003D0:
    push 0s
0x0003D4:
    if !pop goto 0x000408
0x0003D8:
    self.size = (- self.size 0.05d)
    self.depth = 900000
0x000408:
    exit
