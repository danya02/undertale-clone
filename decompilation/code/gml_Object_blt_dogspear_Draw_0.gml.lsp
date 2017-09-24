0x000000:
    call (draw_self_border[]:int32 )
    if !(< global.turntimer 1s) goto 0x000044
0x000020:
    global.turntimer = -1s
    global.mnfight = 3s
    call (instance_destroy[]:int32 )
0x000044:
    exit
