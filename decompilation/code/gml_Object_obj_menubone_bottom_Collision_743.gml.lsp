0x000000:
    if !(== 517.damageturn 0s) goto 0x000054
0x000014:
    pushenv 517s 0x000030
0x00001C:
    call (event_user[]:int32 (var 2s))
0x000030:
    popenv 0x00001C
0x000034:
    if !(< global.hp 1s) goto 0x000054
0x000048:
    global.hp = 1s
0x000054:
    exit
