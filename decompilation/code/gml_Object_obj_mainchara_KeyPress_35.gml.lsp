0x000000:
    if !(== global.debug 1s) goto 0x000078
0x000014:
    global.border = 3s
    stog.flag[15s] = 1s
    stog.flag[16s] = 1s
    call (SCR_BORDERSETUP[]:int32 )
    call (instance_create[]:int32 (var 145s) (var 0s) (var 0s))
0x000078:
    exit
