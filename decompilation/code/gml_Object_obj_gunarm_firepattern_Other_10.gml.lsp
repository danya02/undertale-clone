0x000000:
    if !(== self.lock 0s) goto 0x0000E0
0x000014:
    self.gravity_direction = (- self.image_angle 90s)
    self.direction = (+ self.image_angle 90s)
    self.txspeed = (lengthdir_x[]:int32 (+ self.image_angle 90s) (var 7s))
    self.tyspeed = (lengthdir_y[]:int32 (+ self.image_angle 90s) (var 7s))
    call (caster_stop[]:int32 self.sfx_b)
    call (caster_play[]:int32 (var 1s) (var 0.8d) self.sfx_b)
    self.bb = 1s
0x0000E0:
    self.image_index = 2s
    call (event_user[]:int32 (var 1s))
0x000100:
    exit
