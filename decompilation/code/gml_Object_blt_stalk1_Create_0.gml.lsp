0x000000:
    self.sum = (scr_monstersum[]:int32 )
    self.image_index = 1s
    self.image_speed = 0s
    if !(== self.sum 1s) goto 0x000108
0x00003C:
    self.vspeed = -4s
    self.a = (instance_create[]:int32 (var 669s) (+ self.y 25s) self.x)
    push 1s
    stog.c* = (int32 self.a)
    self.a = (instance_create[]:int32 (var 669s) (+ self.y 50s) self.x)
    self.a = (instance_create[]:int32 (var 669s) (+ self.y 75s) self.x)
    push 1s
    stog.c* = (int32 self.a)
0x000108:
    if !(> self.sum 1s) goto 0x0001F0
0x00011C:
    self.vspeed = 4.2d
    self.a = (instance_create[]:int32 (var 669s) (- self.y 25s) self.x)
    push 1s
    stog.c* = (int32 self.a)
    self.a = (instance_create[]:int32 (var 669s) (- self.y 50s) self.x)
    self.a = (instance_create[]:int32 (var 669s) (- self.y 75s) self.x)
    push 1s
    stog.c* = (int32 self.a)
0x0001F0:
    self.xx = 0s
    self.dmg = 6s
    self.friction = 0.1d
    stog.alarm[0s] = 40s
    self.sinr = 0s
0x00023C:
    exit
