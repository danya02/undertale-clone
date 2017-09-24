0x000000:
    if !(== self.active 1s) goto 0x0000F8
0x000014:
    global.border = 3s
    stog.flag[15s] = 1s
    stog.flag[16s] = 1s
    stog.flag[370s] = 1s
    call (SCR_BORDERSETUP[]:int32 )
    call (instance_create[]:int32 (var 144s) (var 0s) (var 0s))
    [obj_undynespear].active = 2s
    if !(bool (instance_exists[]:int32 (var 1036s))) goto 0x0000BC
0x0000B0:
    [obj_undyneencounter1].stopper = 1s
0x0000BC:
    if !(bool (instance_exists[]:int32 (var 1045s))) goto 0x0000F8
0x0000D4:
    push 1045s
    push 0s
    push 1045s
    stog.alarm[] = (+ 0s:alarm 20s)
0x0000F8:
    exit
