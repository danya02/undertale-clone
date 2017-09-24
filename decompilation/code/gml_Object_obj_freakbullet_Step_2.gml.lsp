0x000000:
    if !(>= self.image_index 3s) goto 0x000028
0x000014:
    push (<= self.image_index 8s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00008C
0x000030:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x00008C
0x000078:
    call (event_user[]:int32 (var 6s))
0x00008C:
    if !(<= global.turntimer 0s) goto 0x0000C4
0x0000A0:
    global.turntimer = -1s
    global.mnfight = 3s
    call (instance_destroy[]:int32 )
0x0000C4:
    exit
