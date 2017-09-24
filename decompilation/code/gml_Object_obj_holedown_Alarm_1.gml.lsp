0x000000:
    if !(== global.phasing 1s) goto 0x000060
0x000014:
    global.facing = (+ global.facing 1s)
    if !(> global.facing 3s) goto 0x00004C
0x000040:
    global.facing = 0s
0x00004C:
    stog.alarm[1s] = 4s
0x000060:
    exit
