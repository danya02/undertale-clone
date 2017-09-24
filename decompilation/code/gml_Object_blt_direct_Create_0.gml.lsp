0x000000:
    call (action_set_relative[]:int32 (var 0s))
    self.sprite_index = global.bulletappearance
    push -5s
    self.myspeed = 0s:bulletvariable
    push -5s
    self.mydirection = 6s:bulletvariable
    push -5s
    self.mydirectionalspeed = 7s:bulletvariable
    push -5s
    self.myrandomspeed = 1s:bulletvariable
    push -5s
    self.mydirectionrandom = 2s:bulletvariable
    push -5s
    self.gravity = 3s:bulletvariable
    push -5s
    self.gravity_direction = 4s:bulletvariable
    push -5s
    self.friction = 5s:bulletvariable
    call (instance_create[]:int32 (var 682s) (+ self.y (- (/ self.sprite_width (double 2s)) 8s)) (+ self.x (- (/ self.sprite_width (double 2s)) 8s)))
    self.dmg = 0s
    call (action_move_point[]:int32 (- (+ self.myspeed (* (random[]:int32 self.myrandomspeed) 2s)) self.myrandomspeed) 743.y 743.x)
    call (action_set_relative[]:int32 (var 1s))
    call (action_set_motion[]:int32 (- (+ self.mydirectionalspeed (* (random[]:int32 self.myrandomspeed) 2s)) self.myrandomspeed) self.mydirection)
    call (action_set_relative[]:int32 (var 0s))
    self.direction = (+ self.direction (- (* (random[]:int32 self.mydirectionrandom) 2s) self.mydirectionrandom))
    if !(== self.sprite_index 157s) goto 0x000264
0x000258:
    self.image_speed = 0s
0x000264:
    call (action_set_relative[]:int32 (var 0s))
0x000278:
    exit
