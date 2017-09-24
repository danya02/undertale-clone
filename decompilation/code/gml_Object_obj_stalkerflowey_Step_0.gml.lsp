0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 18s) (var 37s) (var 112s))
    if !(== self.onscreen 1s) goto 0x00009C
0x00006C:
    push -1s
    if !(== 0s:alarm -1s) goto 0x00009C
0x000088:
    stog.alarm[0s] = 1s
0x00009C:
    exit
