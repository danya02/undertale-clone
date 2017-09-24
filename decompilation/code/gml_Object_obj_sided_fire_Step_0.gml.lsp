0x000000:
    push self.y
    if !(> -5s 3s:idealborder) goto 0x000034
0x000020:
    push (> self.vspeed 0s)
    goto 0x000038
0x000034:
    push 0s
0x000038:
    if !pop goto 0x000048
0x00003C:
    call (instance_destroy[]:int32 )
0x000048:
    push self.y
    if !(< -5s (- 2s:idealborder self.sprite_height)) goto 0x000088
0x000074:
    push (< self.vspeed 0s)
    goto 0x00008C
0x000088:
    push 0s
0x00008C:
    if !pop goto 0x00009C
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x0000F8
0x0000E4:
    call (event_user[]:int32 (var 0s))
0x0000F8:
    exit
