0x000000:
    if !(> self.vspeed 0s) goto 0x000024
0x000014:
    self.image_index = 0s
    goto 0x000030
0x000024:
    self.image_index = 1s
0x000030:
    call (draw_self_border[]:int32 )
    push self.y
    if !(> -5s (+ 3s:idealborder 60s)) goto 0x000070
0x000064:
    call (instance_destroy[]:int32 )
0x000070:
    exit
