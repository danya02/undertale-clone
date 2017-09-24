0x000000:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x000054
0x000048:
    call (room_restart[]:int32 )
0x000054:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 22s) (+ self.x 22s) (+ self.y 2s) (+ self.x 2s))) goto 0x00016C
0x0000BC:
    if !(> self.vspeed 0.5d) goto 0x0000E4
0x0000D8:
    self.vspeed = 2s
0x0000E4:
    self.g = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 22s) (+ self.x 22s) (+ self.y 2s) (+ self.x 2s))
    pushenv (int32 self.g) 0x000168
0x00015C:
    call (instance_destroy[]:int32 )
0x000168:
    popenv 0x00015C
0x00016C:
    self.s = (+ self.s 1s)
    self.x = (+ self.xstart (* (sin[]:int32 (/ self.s self.sp)) self.sf))
0x0001C0:
    exit
