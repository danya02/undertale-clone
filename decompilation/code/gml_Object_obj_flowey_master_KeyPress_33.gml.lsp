0x000000:
    if !(== global.debug 1s) goto 0x000044
0x000014:
    global.battlephase = (+ global.battlephase 1s)
    global.soul_rescue = (+ global.soul_rescue 1s)
0x000044:
    exit
