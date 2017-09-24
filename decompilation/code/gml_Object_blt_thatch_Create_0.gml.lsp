0x000000:
    call (action_set_relative[]:int32 (var 1s))
    self.sprite_index = global.bulletappearance
    push -5s
    self.mydirection = 6s:bulletvariable
    push -5s
    self.mydirectionalspeed = 7s:bulletvariable
    push -5s
    self.gravity = 3s:bulletvariable
    push -5s
    self.gravity_direction = 4s:bulletvariable
    push -5s
    self.friction = 5s:bulletvariable
    call (instance_create[]:int32 (var 682s) self.y self.x)
    call (action_set_motion[]:int32 self.mydirectionalspeed self.mydirection)
    if !(== self.sprite_index 157s) goto 0x0000FC
0x0000F0:
    self.image_speed = 0s
0x0000FC:
    call (action_set_relative[]:int32 (var 0s))
0x000110:
    exit
