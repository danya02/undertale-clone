0x000000:
    self.s = (+ self.s 1s)
    self.x = (+ self.x (* (sin[]:int32 (/ self.s self.sv)) self.sf))
    if !(> self.y (+ self.room_height 100s)) goto 0x000080
0x000074:
    call (instance_destroy[]:int32 )
0x000080:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x0000DC
0x0000C8:
    call (event_user[]:int32 (var 0s))
0x0000DC:
    exit
