0x000000:
    call (action_set_relative[]:int32 (var 1s))
    push -5s
    self.mydirection = 0s:bulletvariable
    push -5s
    self.mydirectionalspeed = 1s:bulletvariable
    push -5s
    self.twdsX = 2s:bulletvariable
    push -5s
    self.twdsY = 3s:bulletvariable
    push -5s
    self.owngravity = 4s:bulletvariable
    push -5s
    self.owngravity_direction = 5s:bulletvariable
    push -5s
    self.friction = 6s:bulletvariable
    push -5s
    self.twdsXspeed = 7s:bulletvariable
    push -5s
    self.twdsYspeed = 8s:bulletvariable
    self.gravityincrement = 0s
    call (action_set_motion[]:int32 self.mydirectionalspeed self.mydirection)
    if !(== self.sprite_index 157s) goto 0x000134
0x000128:
    self.image_speed = 0s
0x000134:
    call (action_set_relative[]:int32 (var 0s))
0x000148:
    exit
