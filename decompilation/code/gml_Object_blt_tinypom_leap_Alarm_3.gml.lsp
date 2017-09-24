0x000000:
    stog.alarm[3s] = 4s
    if !(bool (instance_exists[]:int32 (var 743s))) goto 0x00011C
0x00002C:
    if !(< 743.x self.x) goto 0x000068
0x000044:
    self.hspeed = (- self.hspeed 0.4d)
    goto 0x000088
0x000068:
    self.hspeed = (+ self.hspeed 0.4d)
0x000088:
    if !(== self.gravity 0s) goto 0x0000DC
0x00009C:
    if !(< 743.y self.y) goto 0x0000DC
0x0000B4:
    push (< (abs[]:int32 (- self.x 743.x)) 50s)
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x00011C
0x0000E4:
    self.gravity = 0.22d
    self.gravity_direction = 270s
    self.vspeed = -5s
    self.sprite_index = 104s
0x00011C:
    exit
