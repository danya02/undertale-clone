0x000000:
    global.interact = 3s
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    if (== self.room 38s) goto 0x000058
0x000044:
    push (== self.room 32s)
    goto 0x00005C
0x000058:
    push 1s
0x00005C:
    if !pop goto 0x0000A0
0x000060:
    push -5s
    if !(== 7s:flag 0s) goto 0x0000A0
0x00007C:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
0x0000A0:
    if !(== self.touched 0s) goto 0x0000D4
0x0000B4:
    stog.alarm[2s] = 14s
    self.touched = 1s
0x0000D4:
    exit
