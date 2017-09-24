0x000000:
    if !(> global.turntimer 1s) goto 0x00002C
0x000014:
    global.turntimer = (+ global.turntimer 60s)
0x00002C:
    exit
