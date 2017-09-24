0x000000:
    if !(== self.dooract 1s) goto 0x000070
0x000014:
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 0s) (var 1570s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x000070
0x00005C:
    call (event_user[]:int32 (var 2s))
0x000070:
    exit
