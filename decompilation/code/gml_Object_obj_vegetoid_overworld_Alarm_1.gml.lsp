0x000000:
    global.battlegroup = 18s
    push -5s
    if !(== 6s:flag 1s) goto 0x000034
0x000028:
    global.battlegroup = 122s
0x000034:
    stog.flag[200s] = 202s
    global.interact = 0s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    call (instance_destroy[]:int32 )
0x000084:
    exit
