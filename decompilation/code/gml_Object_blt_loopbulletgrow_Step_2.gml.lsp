0x000000:
    push self.x
    if !(>= -5s 1s:idealborder) goto 0x00002C
0x000020:
    call (instance_destroy[]:int32 )
0x00002C:
    if !(< global.turntimer 1s) goto 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    exit
