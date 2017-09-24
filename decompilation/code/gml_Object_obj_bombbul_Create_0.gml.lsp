0x000000:
    self.type = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    if (== self.type 0s) goto 0x000058
0x000044:
    push (== self.type 2s)
    goto 0x00005C
0x000058:
    push 1s
0x00005C:
    if !pop goto 0x000138
0x000060:
    self.hspeed = (+ 2s (random[]:int32 (var 3s)))
    self.hspeed = (* self.hspeed (choose[]:int32 (var 1s) (var -1s)))
    if !(== self.type 0s) goto 0x0000EC
0x0000C0:
    self.gravity_direction = 270s
    push -5s
    self.y = (- 2s:idealborder 20s)
0x0000EC:
    if !(== self.type 2s) goto 0x000138
0x000100:
    self.image_angle = 180s
    self.gravity_direction = 90s
    push -5s
    self.y = (+ 3s:idealborder 20s)
0x000138:
    if (== self.type 1s) goto 0x000160
0x00014C:
    push (== self.type 3s)
    goto 0x000164
0x000160:
    push 1s
0x000164:
    if !pop goto 0x0002A0
0x000168:
    push -5s
    push 2s:idealborder
    self.y = (- (+ (/ (+ -5s 3s:idealborder) (double 2s)) 50s) (random[]:int32 (var 100s)))
    self.vspeed = (+ 2s (random[]:int32 (var 4s)))
    self.vspeed = (* self.vspeed (choose[]:int32 (var 1s) (var -1s)))
    if !(== self.type 1s) goto 0x000254
0x00021C:
    self.image_angle = 90s
    self.gravity_direction = 0s
    push -5s
    self.x = (- 0s:idealborder 20s)
0x000254:
    if !(== self.type 3s) goto 0x0002A0
0x000268:
    self.image_angle = 270s
    self.gravity_direction = 180s
    push -5s
    self.x = (+ 1s:idealborder 20s)
0x0002A0:
    self.gravity = 0.18d
    self.friction = 0.03d
    self.bounce = 0s
    self.on = 0s
    self.flash = 0s
    self.expl = 0s
    self.image_speed = 0s
0x000304:
    exit
