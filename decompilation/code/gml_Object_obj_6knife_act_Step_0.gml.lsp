0x000000:
    if !(== self.type 0s) goto 0x000030
0x000014:
    self.image_angle = (+ self.image_angle self.anger)
0x000030:
    if !(> self.x (- self.room_width 60s)) goto 0x000078
0x000050:
    if !(> self.hspeed 0s) goto 0x000078
0x000064:
    self.hspeed = (- self.hspeed)
0x000078:
    if !(< self.x 60s) goto 0x0000B4
0x00008C:
    if !(< self.hspeed 0s) goto 0x0000B4
0x0000A0:
    self.hspeed = (- self.hspeed)
0x0000B4:
    if !(< self.y 60s) goto 0x0000F0
0x0000C8:
    if !(< self.vspeed 0s) goto 0x0000F0
0x0000DC:
    self.vspeed = (- self.vspeed)
0x0000F0:
    if !(> self.y (- self.room_height 60s)) goto 0x000138
0x000110:
    if !(> self.vspeed 0s) goto 0x000138
0x000124:
    self.vspeed = (- self.vspeed)
0x000138:
    if !(== self.type 1s) goto 0x0001A0
0x00014C:
    if !(> self.speed 0s) goto 0x000180
0x000160:
    self.speed = (- self.speed 0.03d)
0x000180:
    if !(< self.speed 0s) goto 0x0001A0
0x000194:
    self.speed = 0s
0x0001A0:
    exit
