0x000000:
    if !(== global.debug 1s) goto 0x000050
0x000014:
    global.interact = 0s
    if !(== global.phasing 0s) goto 0x000044
0x000034:
    global.phasing = 1s
    goto 0x000050
0x000044:
    global.phasing = 0s
0x000050:
    exit
