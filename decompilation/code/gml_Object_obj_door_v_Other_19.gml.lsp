0x000000:
    push -5s
    if !(== 7s:flag 0s) goto 0x000040
0x00001C:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
0x000040:
    global.interact = 3s
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    push -5s
    if !(== 7s:flag 0s) goto 0x0000B0
0x00008C:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
0x0000B0:
    if !(== self.touched 0s) goto 0x0000E4
0x0000C4:
    stog.alarm[2s] = 14s
    self.touched = 1s
0x0000E4:
    exit
