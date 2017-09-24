0x000000:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x00005C
0x000048:
    call (event_user[]:int32 (var 0s))
0x00005C:
    self.speed = (- self.speed self.negaspeed)
0x000078:
    exit
