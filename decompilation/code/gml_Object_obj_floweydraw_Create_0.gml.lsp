0x000000:
    global.inbattle = 1s
    stog.flag[201s] = global.kills
    if !(== self.room 308s) goto 0x000044
0x000038:
    global.border = 1s
0x000044:
    exit
