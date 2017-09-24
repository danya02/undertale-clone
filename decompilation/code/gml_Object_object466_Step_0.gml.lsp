0x000000:
    if !(== self.falling 0s) goto 0x00004C
0x000014:
    self.depth = (- 50000 (+ (* self.y 10s) (* self.sprite_height 4s)))
0x00004C:
    if !(> self.vspeed 0.1d) goto 0x000080
0x000068:
    self.depth = (- 1570.depth 1s)
0x000080:
    if !(< self.vspeed -0.1d) goto 0x0000B4
0x00009C:
    self.depth = (+ 1570.depth 1s)
0x0000B4:
    if !(> self.falling 0s) goto 0x0000D4
0x0000C8:
    self.depth = 1000s
0x0000D4:
    self.xchange = (abs[]:int32 self.hspeed)
    self.ychange = (abs[]:int32 self.vspeed)
    self.tchange = (+ self.xchange self.ychange)
    self.angle = (+ self.angle (/ (* self.tchange 30s) (* self.size 10s)))
    self.image_xscale = self.size
    self.image_yscale = self.size
    if !(== self.falling 1s) goto 0x0001B8
0x00018C:
    self.friction = -0.1d
    self.vspeed = 3s
    self.falling = 2s
0x0001B8:
    if !(== self.falling 2s) goto 0x0001E4
0x0001CC:
    push (> self.y self.specialy)
    goto 0x0001E8
0x0001E4:
    push 0s
0x0001E8:
    if !pop goto 0x000228
0x0001EC:
    self.y = self.specialy
    self.friction = 0.1d
    self.vspeed = 0s
    self.falling = 0s
0x000228:
    if (== self.t 1s) goto 0x000250
0x00023C:
    push (== self.t 2s)
    goto 0x000254
0x000250:
    push 1s
0x000254:
    if !pop goto 0x0002A4
0x000258:
    if !(== self.hspeed 0s) goto 0x000280
0x00026C:
    push (== self.vspeed 0s)
    goto 0x000284
0x000280:
    push 0s
0x000284:
    if !pop goto 0x000298
0x000288:
    self.t = 1s
    goto 0x0002A4
0x000298:
    self.t = 2s
0x0002A4:
    self.golf = 0s
    if !(== self.t 1s) goto 0x0002E4
0x0002C4:
    self.size = (- self.size 0.01d)
0x0002E4:
    if !(< self.size 0.2d) goto 0x00032C
0x000300:
    call (instance_destroy[]:int32 )
    pushenv 1014s 0x000328
0x000314:
    stog.alarm[0s] = 10s
0x000328:
    popenv 0x000314
0x00032C:
    exit
