0x000000:
    self.dmg = 0s
    self.bullettype = 0s
    self.image_speed = 0.5d
    self.gravity = 0.06d
    self.gravity_direction = 270s
    self.vspeed = (abs[]:int32 (* (sin[]:int32 (/ 1569.time (double 20s))) 0.95d))
    self.r = (round[]:int32 (random[]:int32 (var 1s)))
    stog.alarm[0s] = 10s
    stog.alarm[1s] = 1s
    stog.alarm[2s] = 4s
    stog.alarm[3s] = 8s
    self.sterile = 0s
    self.h = 0s
    self.dink = 0s
0x00011C:
    exit
