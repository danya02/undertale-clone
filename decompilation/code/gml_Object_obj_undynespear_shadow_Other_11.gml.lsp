0x000000:
    global.border = 3s
    stog.flag[15s] = 1s
    stog.flag[16s] = 1s
    stog.flag[370s] = 1s
    call (SCR_BORDERSETUP[]:int32 )
    call (instance_create[]:int32 (var 144s) (var 0s) (var 0s))
    [obj_undynespear].active = 2s
    if !(bool (instance_exists[]:int32 (var 1045s))) goto 0x0000C0
0x00009C:
    push 1045s
    push 0s
    push 1045s
    stog.alarm[] = (+ 0s:alarm 30s)
0x0000C0:
    exit
