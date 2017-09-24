0x000000:
    global.facing = (+ global.facing 1s)
    if !(> global.facing 3s) goto 0x000038
0x00002C:
    global.facing = 0s
0x000038:
    stog.alarm[3s] = 4s
0x00004C:
    exit
