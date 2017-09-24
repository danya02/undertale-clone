0x000000:
    if !(<= global.turntimer 2s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    if !(!= global.mnfight 2s) goto 0x000040
0x000034:
    call (instance_destroy[]:int32 )
0x000040:
    exit
