0x000000:
    if !(== global.debug 1s) goto 0x00004C
0x000014:
    global.soul_rescue = (+ global.soul_rescue 1s)
    if !(== global.soul_rescue 7s) goto 0x00004C
0x000040:
    global.soul_rescue = 0s
0x00004C:
    exit
