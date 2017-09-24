0x000000:
    global.facing = (+ global.facing 1s)
    stog.alarm[5s] = 10s
    if !(> global.facing 3s) goto 0x00004C
0x000040:
    global.facing = 0s
0x00004C:
    exit
