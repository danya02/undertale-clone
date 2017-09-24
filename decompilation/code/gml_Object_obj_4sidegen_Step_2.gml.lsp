0x000000:
    if !(< global.turntimer 1s) goto 0x00005C
0x000014:
    global.turntimer = -1s
    global.mnfight = 3s
    if !(bool (instance_exists[]:int32 (var 272s))) goto 0x000050
0x000044:
    global.mnfight = 4s
0x000050:
    call (instance_destroy[]:int32 )
0x00005C:
    exit
