0x000000:
    call (draw_self_border[]:int32 )
    if !(< self.x 0s) goto 0x00002C
0x000020:
    call (instance_destroy[]:int32 )
0x00002C:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x000088
0x000074:
    call (event_user[]:int32 (var 1s))
0x000088:
    exit
