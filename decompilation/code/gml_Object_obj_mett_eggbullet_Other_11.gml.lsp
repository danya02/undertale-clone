0x000000:
    if !(== self.col 0s) goto 0x0000E4
0x000014:
    self.egg = (instance_create[]:int32 (var 1175s) self.y self.x)
    push self.image_angle
    stog.image_angle* = (int32 self.egg)
    push self.ang
    stog.ang* = (int32 self.egg)
    push self.vspeed
    stog.vspeed* = (int32 self.egg)
    push self.hspeed
    stog.hspeed* = (int32 self.egg)
    push 0.05d
    stog.friction* = (int32 self.egg)
    self.sprite_index = 1701s
    self.col = 1s
0x0000E4:
    exit
