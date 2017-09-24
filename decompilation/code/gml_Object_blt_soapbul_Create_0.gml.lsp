0x000000:
    self.angle = 0s
    self.angleadd = 0s
    self.dmg = 0s
    self.image_speed = 0s
    self.direction = (random[]:int32 (var 180s))
    if !(< self.direction 10s) goto 0x000074
0x00005C:
    self.direction = (+ self.direction 20s)
0x000074:
    if !(< (abs[]:int32 (- self.direction 90s)) 10s) goto 0x0000B0
0x000098:
    self.direction = (+ self.direction 30s)
0x0000B0:
    if !(< (abs[]:int32 (- self.direction 180s)) 10s) goto 0x0000EC
0x0000D4:
    self.direction = (- self.direction 20s)
0x0000EC:
    self.speed = 4s
    if !(< (abs[]:int32 self.hspeed) 0.2d) goto 0x000134
0x00011C:
    self.hspeed = (* self.hspeed 3s)
0x000134:
    if !(< (abs[]:int32 self.vspeed) 0.2d) goto 0x000170
0x000158:
    self.vspeed = (* self.vspeed 3s)
0x000170:
    self.friction = -0.04d
    self.blue = 0s
    stog.alarm[0s] = 4s
    self.offset = 0s
0x0001B0:
    exit
