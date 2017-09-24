0x000000:
    call (scr_damagestandard_x[]:int32 )
    if !(<= global.hp 0s) goto 0x000040
0x000020:
    [obj_heart].x = 363.x
    [obj_heart].y = 363.y
0x000040:
    exit
