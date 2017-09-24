0x000000:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x000054
0x000048:
    call (room_restart[]:int32 )
0x000054:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 22s) (+ self.x 22s) (+ self.y 2s) (+ self.x 2s))) goto 0x000184
0x0000BC:
    if !(> self.vspeed 0.5d) goto 0x0000F0
0x0000D8:
    self.vspeed = 0.5d
    goto 0x0000FC
0x0000F0:
    self.vspeed = 4s
0x0000FC:
    self.g = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 22s) (+ self.x 22s) (+ self.y 2s) (+ self.x 2s))
    pushenv (int32 self.g) 0x000180
0x000174:
    call (instance_destroy[]:int32 )
0x000180:
    popenv 0x000174
0x000184:
    self.s = (+ self.s 1s)
    self.x = (+ self.xstart (* (sin[]:int32 (/ self.s self.sp)) self.sf))
0x0001D8:
    exit
