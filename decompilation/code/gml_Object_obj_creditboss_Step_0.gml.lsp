0x000000:
    if !(== self.active 1s) goto 0x000A38
0x000014:
    self.timer = (+ self.timer 1s)
    if (== self.truetype 0s) goto 0x000054
0x000040:
    push (== self.truetype 1s)
    goto 0x000058
0x000054:
    push 1s
0x000058:
    if !pop goto 0x000520
0x00005C:
    if !(== self.timer 50s) goto 0x0000E8
0x000070:
    self.i = 0s
    if !(< self.i 5s) goto 0x0000E8
0x000090:
    push -1s
    pushenv (int32 (int32 self.i):cb_a) 0x0000C8
0x0000B0:
    self.speed = 0s
    self.direction = 0s
0x0000C8:
    popenv 0x0000B0
0x0000CC:
    self.i = (+ self.i 1s)
    goto 0x00007C
0x0000E8:
    if !(>= self.timer 50s) goto 0x000110
0x0000FC:
    push (<= self.timer 70s)
    goto 0x000114
0x000110:
    push 0s
0x000114:
    if !pop goto 0x000460
0x000118:
    self.i = 0s
    if !(< self.i 5s) goto 0x000460
0x000138:
    push -1s
    pushenv (int32 (int32 self.i):cb_a) 0x000440
0x000158:
    self.image_angle = self.direction
    self.curdir = self.direction
    self.idealdir = (point_direction[]:int32 (+ 1699.y 8s) (+ 1699.x 8s) self.y self.x)
    self.facingMinusTarget = (- self.curdir self.idealdir)
    self.angleDiff = self.facingMinusTarget
    if !(> (abs[]:int32 self.facingMinusTarget) 180s) goto 0x00026C
0x000200:
    if !(> self.curdir self.idealdir) goto 0x000248
0x000218:
    self.angleDiff = (* -1s (+ (- 360s self.curdir) self.idealdir))
    goto 0x00026C
0x000248:
    self.angleDiff = (+ (- 360s self.idealdir) self.curdir)
0x00026C:
    self.leastAccurateAim = 3s
    if !(> (abs[]:int32 self.angleDiff) self.leastAccurateAim) goto 0x000440
0x000298:
    self.dirspeed = 1s
    self.angleDiff2 = (abs[]:int32 self.angleDiff)
    if !(> self.angleDiff2 10s) goto 0x0002DC
0x0002D0:
    self.dirspeed = 2s
0x0002DC:
    if !(> self.angleDiff2 20s) goto 0x0002FC
0x0002F0:
    self.dirspeed = 5s
0x0002FC:
    if !(> self.angleDiff2 30s) goto 0x00031C
0x000310:
    self.dirspeed = 15s
0x00031C:
    if !(> self.angleDiff2 40s) goto 0x00033C
0x000330:
    self.dirspeed = 16s
0x00033C:
    if !(> self.angleDiff2 50s) goto 0x00035C
0x000350:
    self.dirspeed = 17s
0x00035C:
    if !(> self.angleDiff2 60s) goto 0x00037C
0x000370:
    self.dirspeed = 18s
0x00037C:
    if !(> self.angleDiff2 70s) goto 0x00039C
0x000390:
    self.dirspeed = 20s
0x00039C:
    if !(> self.angleDiff2 80s) goto 0x0003BC
0x0003B0:
    self.dirspeed = 22s
0x0003BC:
    if !(> self.angleDiff2 90s) goto 0x0003DC
0x0003D0:
    self.dirspeed = 24s
0x0003DC:
    if !(> self.angleDiff2 100s) goto 0x0003FC
0x0003F0:
    self.dirspeed = 25s
0x0003FC:
    if !(< self.angleDiff 0s) goto 0x000424
0x000410:
    self.dirspeed = (- self.dirspeed)
0x000424:
    self.direction = (- self.direction self.dirspeed)
0x000440:
    popenv 0x000158
0x000444:
    self.i = (+ self.i 1s)
    goto 0x000124
0x000460:
    if !(== self.timer 75s) goto 0x000500
0x000474:
    self.i = 0s
    if !(< self.i 5s) goto 0x000500
0x000494:
    push -1s
    pushenv (int32 (int32 self.i):cb_a) 0x0004E0
0x0004B4:
    self.speed = 3s
    self.friction = -0.5d
    self.action = 0s
0x0004E0:
    popenv 0x0004B4
0x0004E4:
    self.i = (+ self.i 1s)
    goto 0x000480
0x000500:
    if !(== self.timer 85s) goto 0x000520
0x000514:
    call (instance_destroy[]:int32 )
0x000520:
    if !(== self.truetype 2s) goto 0x0007D4
0x000534:
    if !(> self.timer 50s) goto 0x00055C
0x000548:
    push (< self.timer 70s)
    goto 0x000560
0x00055C:
    push 0s
0x000560:
    if !pop goto 0x00057C
0x000564:
    self.x = (+ self.x 4s)
0x00057C:
    if !(> self.timer 80s) goto 0x0005A4
0x000590:
    push (< self.timer 100s)
    goto 0x0005A8
0x0005A4:
    push 0s
0x0005A8:
    if !pop goto 0x0005C4
0x0005AC:
    self.x = (- self.x 4s)
0x0005C4:
    if !(> self.timer 130s) goto 0x0005EC
0x0005D8:
    push (< self.timer 150s)
    goto 0x0005F0
0x0005EC:
    push 0s
0x0005F0:
    if !pop goto 0x00060C
0x0005F4:
    self.x = (- self.x 4s)
0x00060C:
    if !(> self.timer 160s) goto 0x000634
0x000620:
    push (< self.timer 180s)
    goto 0x000638
0x000634:
    push 0s
0x000638:
    if !pop goto 0x000654
0x00063C:
    self.x = (+ self.x 4s)
0x000654:
    if !(> self.timer 210s) goto 0x00067C
0x000668:
    push (< self.timer 230s)
    goto 0x000680
0x00067C:
    push 0s
0x000680:
    if !pop goto 0x00069C
0x000684:
    self.x = (+ self.x 4s)
0x00069C:
    if !(> self.timer 230s) goto 0x0006C4
0x0006B0:
    push (< self.timer 250s)
    goto 0x0006C8
0x0006C4:
    push 0s
0x0006C8:
    if !pop goto 0x0006E4
0x0006CC:
    self.x = (- self.x 4s)
0x0006E4:
    if !(== self.timer 250s) goto 0x000710
0x0006F8:
    self.siner = 0s
    self.sf = 5s
0x000710:
    if !(> self.timer 250s) goto 0x000738
0x000724:
    push (< self.timer 420s)
    goto 0x00073C
0x000738:
    push 0s
0x00073C:
    if !pop goto 0x0007B4
0x000740:
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner (double 7s))) self.sf))
    self.sf = (+ self.sf 0.02d)
0x0007B4:
    if !(== self.timer 420s) goto 0x0007D4
0x0007C8:
    call (instance_destroy[]:int32 )
0x0007D4:
    if !(== self.truetype 3s) goto 0x000A38
0x0007E8:
    self.i = 0s
    if !(< self.i 10s) goto 0x0009FC
0x000808:
    if !(> self.hspeed 0s) goto 0x000854
0x00081C:
    push -1s
    pushenv (int32 (int32 self.i):cb_a) 0x000850
0x00083C:
    self.hspeed = 0.1d
0x000850:
    popenv 0x00083C
0x000854:
    if !(< self.hspeed 0s) goto 0x0008A0
0x000868:
    push -1s
    pushenv (int32 (int32 self.i):cb_a) 0x00089C
0x000888:
    self.hspeed = -0.1d
0x00089C:
    popenv 0x000888
0x0008A0:
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.i):cb_a)) goto 0x000920
0x0008C8:
    push self.x
    push -1s
    stog.x* = (int32 (int32 self.i):cb_a)
    push self.y
    push -1s
    stog.y* = (int32 (int32 self.i):cb_a)
0x000920:
    push -1s
    pushenv (int32 (int32 self.i):cb_a) 0x0009DC
0x000940:
    if !(< (abs[]:int32 self.aa) 1.7d) goto 0x000984
0x000964:
    self.aa = (* self.aa 1.02d)
0x000984:
    self.x = (+ self.x (lengthdir_x[]:int32 self.image_angle (var 85s)))
    self.y = (+ self.y (lengthdir_y[]:int32 self.image_angle (var 85s)))
0x0009DC:
    popenv 0x000940
0x0009E0:
    self.i = (+ self.i 1s)
    goto 0x0007F4
0x0009FC:
    if (> self.x 1000s) goto 0x000A24
0x000A10:
    push (< self.x -400s)
    goto 0x000A28
0x000A24:
    push 1s
0x000A28:
    if !pop goto 0x000A38
0x000A2C:
    call (instance_destroy[]:int32 )
0x000A38:
    exit
