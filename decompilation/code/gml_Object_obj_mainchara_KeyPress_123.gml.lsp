0x000000:
    if !(== global.debug 1s) goto 0x000034
0x000014:
    stog.flag[7s] = 1s
    call (room_restart[]:int32 )
0x000034:
    exit
