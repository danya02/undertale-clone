0x000000:
    if !(< global.turntimer 1s) goto 0x000038
0x000014:
    global.turntimer = -1s
    global.mnfight = 3s
    call (instance_destroy[]:int32 )
0x000038:
    exit
