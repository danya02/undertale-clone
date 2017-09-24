0x000000:
    if !(== self.type 0s) goto 0x00003C
0x000014:
    push self.y
    push (> -5s (- 3s:idealborder 10s))
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x0000CC
0x000044:
    if !(== self.bounce 1s) goto 0x00007C
0x000058:
    self.on = 1s
    self.gravity = 0s
    self.vspeed = 0s
0x00007C:
    if !(== self.bounce 0s) goto 0x0000CC
0x000090:
    self.y = (- self.y self.vspeed)
    self.vspeed = -1.5d
    self.bounce = 1s
0x0000CC:
    if !(== self.type 1s) goto 0x000108
0x0000E0:
    push self.x
    push (> -5s (- 1s:idealborder 10s))
    goto 0x00010C
0x000108:
    push 0s
0x00010C:
    if !pop goto 0x000198
0x000110:
    if !(== self.bounce 1s) goto 0x000148
0x000124:
    self.on = 1s
    self.gravity = 0s
    self.hspeed = 0s
0x000148:
    if !(== self.bounce 0s) goto 0x000198
0x00015C:
    self.x = (- self.x self.hspeed)
    self.hspeed = -1.5d
    self.bounce = 1s
0x000198:
    if !(== self.type 2s) goto 0x0001D4
0x0001AC:
    push self.y
    push (< -5s (+ 2s:idealborder 10s))
    goto 0x0001D8
0x0001D4:
    push 0s
0x0001D8:
    if !pop goto 0x000264
0x0001DC:
    if !(== self.bounce 1s) goto 0x000214
0x0001F0:
    self.on = 1s
    self.gravity = 0s
    self.vspeed = 0s
0x000214:
    if !(== self.bounce 0s) goto 0x000264
0x000228:
    self.y = (- self.y self.vspeed)
    self.vspeed = 1.5d
    self.bounce = 1s
0x000264:
    if !(== self.type 3s) goto 0x0002A0
0x000278:
    push self.x
    push (< -5s (+ 0s:idealborder 10s))
    goto 0x0002A4
0x0002A0:
    push 0s
0x0002A4:
    if !pop goto 0x000330
0x0002A8:
    if !(== self.bounce 1s) goto 0x0002E0
0x0002BC:
    self.on = 1s
    self.gravity = 0s
    self.hspeed = 0s
0x0002E0:
    if !(== self.bounce 0s) goto 0x000330
0x0002F4:
    self.x = (- self.x self.hspeed)
    self.hspeed = 1.5d
    self.bounce = 1s
0x000330:
    if (== self.type 0s) goto 0x000358
0x000344:
    push (== self.type 2s)
    goto 0x00035C
0x000358:
    push 1s
0x00035C:
    if !pop goto 0x0003DC
0x000360:
    push self.x
    if (> -5s (- 1s:idealborder 15s)) goto 0x0003B0
0x000388:
    push self.x
    push (< -5s (+ 0s:idealborder 15s))
    goto 0x0003B4
0x0003B0:
    push 1s
0x0003B4:
    if !pop goto 0x0003DC
0x0003B8:
    self.x = self.xprevious
    self.hspeed = (- self.hspeed)
0x0003DC:
    if (== self.type 1s) goto 0x000404
0x0003F0:
    push (== self.type 3s)
    goto 0x000408
0x000404:
    push 1s
0x000408:
    if !pop goto 0x000488
0x00040C:
    push self.y
    if (> -5s (- 3s:idealborder 15s)) goto 0x00045C
0x000434:
    push self.y
    push (< -5s (+ 2s:idealborder 15s))
    goto 0x000460
0x00045C:
    push 1s
0x000460:
    if !pop goto 0x000488
0x000464:
    self.y = self.yprevious
    self.vspeed = (- self.vspeed)
0x000488:
    if !(== self.bounce 1s) goto 0x000538
0x00049C:
    self.flash = (+ self.flash 1s)
    if !(> self.flash 14s) goto 0x000508
0x0004C8:
    self.flash = 14s
    if !(== self.expl 0s) goto 0x000508
0x0004E8:
    stog.alarm[0s] = 15s
    self.expl = 1s
0x000508:
    self.image_speed = (/ (double 1s) (- 3s (/ self.flash (double 10s))))
0x000538:
    exit
