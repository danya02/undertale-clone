0x000000:
    self.dmg = 0s
    self.bullettype = 0s
    self.image_speed = 0.5d
    self.gravity = 0.12d
    self.gravity_direction = 270s
    self.vspeed = 0.7d
    self.r = (round[]:int32 (random[]:int32 (var 1s)))
    stog.alarm[0s] = 10s
    stog.alarm[1s] = 1s
    stog.alarm[2s] = 4s
    stog.alarm[3s] = 8s
    self.sterile = 0s
    push self.y
    if !(> -5s (- 3s:idealborder 20s)) goto 0x00011C
0x000104:
    self.y = (- self.y 20s)
0x00011C:
    push self.y
    if !(< -5s (+ 2s:idealborder 20s)) goto 0x00015C
0x000144:
    self.y = (+ self.y 20s)
0x00015C:
    self.h = 0s
0x000168:
    exit
