0x000000:
    self.image_angle = (random[]:int32 (var 360s))
    self.aa = (* (choose[]:int32 (var -1s) (var 1s)) (+ (random[]:int32 (var 4s)) 1s))
    self.vspeed = -12s
    if !(< self.x 320s) goto 0x000094
0x000074:
    self.hspeed = (+ 1s (random[]:int32 (var 1s)))
0x000094:
    if !(> self.x 320s) goto 0x0000B4
0x0000A8:
    self.hspeed = -10s
0x0000B4:
    call (random[]:int32 (var 1s))
    self.gravity_direction = (+ 260s (random[]:int32 (var 20s)))
    self.gravity = (+ 0.5d (random[]:int32 (var 0.2d)))
    self.visible = 0s
    stog.alarm[0s] = 1s
    self.stop = 0s
    self.deactivate = 0s
    if !(< self.hspeed -2s) goto 0x000170
0x000164:
    self.hspeed = -2s
0x000170:
    if !(> self.hspeed 2s) goto 0x000190
0x000184:
    self.hspeed = 2s
0x000190:
    self.dmg = 9s
0x00019C:
    exit
