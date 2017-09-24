0x000000:
    if !(> self.speed 6s) goto 0x000020
0x000014:
    self.friction = 0s
0x000020:
    if !(> self.juice 0s) goto 0x00031C
0x000034:
    self.image_angle = self.direction
    self.curdir = self.direction
    self.idealdir = (point_direction[]:int32 (+ 743.y 10s) (+ 743.x 10s) self.y self.x)
    self.facingMinusTarget = (- self.curdir self.idealdir)
    self.angleDiff = self.facingMinusTarget
    if !(> (abs[]:int32 self.facingMinusTarget) 180s) goto 0x000148
0x0000DC:
    if !(> self.curdir self.idealdir) goto 0x000124
0x0000F4:
    self.angleDiff = (* -1s (+ (- 360s self.curdir) self.idealdir))
    goto 0x000148
0x000124:
    self.angleDiff = (+ (- 360s self.idealdir) self.curdir)
0x000148:
    self.leastAccurateAim = 4s
    if !(> (abs[]:int32 self.angleDiff) self.leastAccurateAim) goto 0x00031C
0x000174:
    self.dirspeed = 1s
    self.angleDiff2 = (abs[]:int32 self.angleDiff)
    if !(> self.angleDiff2 10s) goto 0x0001B8
0x0001AC:
    self.dirspeed = 2s
0x0001B8:
    if !(> self.angleDiff2 20s) goto 0x0001D8
0x0001CC:
    self.dirspeed = 3s
0x0001D8:
    if !(> self.angleDiff2 30s) goto 0x0001F8
0x0001EC:
    self.dirspeed = 4s
0x0001F8:
    if !(> self.angleDiff2 40s) goto 0x000218
0x00020C:
    self.dirspeed = 5s
0x000218:
    if !(> self.angleDiff2 50s) goto 0x000238
0x00022C:
    self.dirspeed = 6s
0x000238:
    if !(> self.angleDiff2 60s) goto 0x000258
0x00024C:
    self.dirspeed = 7s
0x000258:
    if !(> self.angleDiff2 70s) goto 0x000278
0x00026C:
    self.dirspeed = 8s
0x000278:
    if !(> self.angleDiff2 80s) goto 0x000298
0x00028C:
    self.dirspeed = 9s
0x000298:
    if !(> self.angleDiff2 90s) goto 0x0002B8
0x0002AC:
    self.dirspeed = 10s
0x0002B8:
    if !(> self.angleDiff2 100s) goto 0x0002D8
0x0002CC:
    self.dirspeed = 11s
0x0002D8:
    if !(< self.angleDiff 0s) goto 0x000300
0x0002EC:
    self.dirspeed = (- self.dirspeed)
0x000300:
    self.direction = (- self.direction self.dirspeed)
0x00031C:
    self.juice = (- self.juice 1s)
    if !(< self.juice 60s) goto 0x000354
0x000348:
    self.image_index = 1s
0x000354:
    if !(< self.juice 30s) goto 0x000374
0x000368:
    self.image_index = 2s
0x000374:
    if !(< self.juice 0s) goto 0x000394
0x000388:
    self.image_index = 3s
0x000394:
    if !(< self.juice -60s) goto 0x0003BC
0x0003A8:
    push (== self.destroy 0s)
    goto 0x0003C0
0x0003BC:
    push 0s
0x0003C0:
    if !pop goto 0x0003D0
0x0003C4:
    self.destroy = 1s
0x0003D0:
    exit
