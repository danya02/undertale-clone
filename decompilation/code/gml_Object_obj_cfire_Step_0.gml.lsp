0x000000:
    self.r = (- self.r self.rspeed)
    self.ang = (+ self.ang self.angspeed)
    if !(<= self.r 0.5d) goto 0x000060
0x000054:
    call (instance_destroy[]:int32 )
0x000060:
    self.x = (+ self.centerx (lengthdir_x[]:int32 self.ang self.r))
    self.y = (+ self.centery (lengthdir_y[]:int32 self.ang self.r))
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x000114
0x000100:
    call (event_user[]:int32 (var 0s))
0x000114:
    exit
