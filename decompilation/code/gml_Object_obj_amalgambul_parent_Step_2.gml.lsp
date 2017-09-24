0x000000:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x00005C
0x000048:
    call (event_user[]:int32 (var 6s))
0x00005C:
    if !(<= global.turntimer 0s) goto 0x000094
0x000070:
    global.turntimer = -1s
    global.mnfight = 3s
    call (instance_destroy[]:int32 )
0x000094:
    exit
