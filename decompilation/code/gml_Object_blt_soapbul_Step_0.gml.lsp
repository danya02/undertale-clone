0x000000:
    if !(<= global.turntimer 2s) goto 0x000040
0x000014:
    if !(== global.mnfight 2s) goto 0x000034
0x000028:
    global.mnfight = 3s
0x000034:
    call (instance_destroy[]:int32 )
0x000040:
    exit
