0x000000:
    if !(== 517.damageturn 0s) goto 0x000080
0x000014:
    if !(>= global.hp 60s) goto 0x000040
0x000028:
    global.km = (+ global.km 1s)
0x000040:
    pushenv 517s 0x00005C
0x000048:
    call (event_user[]:int32 (var 2s))
0x00005C:
    popenv 0x000048
0x000060:
    if !(< global.hp 1s) goto 0x000080
0x000074:
    global.hp = 1s
0x000080:
    exit
