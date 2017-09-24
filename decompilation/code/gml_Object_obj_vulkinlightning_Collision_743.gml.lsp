0x000000:
    if !(< global.sp 8s) goto 0x00002C
0x000014:
    global.sp = (+ global.sp 2s)
0x00002C:
    call (scr_damagestandard_x[]:int32 )
    call (instance_destroy[]:int32 )
0x000044:
    exit
