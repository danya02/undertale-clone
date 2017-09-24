0x000000:
    if !(< global.turntimer 1s) goto 0x00004C
0x000014:
    global.turntimer = -1s
    if !(== global.mnfight 2s) goto 0x000040
0x000034:
    global.mnfight = 3s
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    exit
