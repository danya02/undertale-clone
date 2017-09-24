0x000000:
    global.interact = 3s
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    self.ok = 1s
    if !(== self.room 137s) goto 0x00006C
0x000050:
    push (== (instance_exists[]:int32 (var 1118s)) 1s)
    goto 0x000070
0x00006C:
    push 0s
0x000070:
    if !pop goto 0x000080
0x000074:
    self.ok = 0s
0x000080:
    push -5s
    if !(== 7s:flag 0s) goto 0x0000D4
0x00009C:
    if !(== self.ok 1s) goto 0x0000D4
0x0000B0:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
0x0000D4:
    if !(== self.touched 0s) goto 0x000108
0x0000E8:
    stog.alarm[2s] = 13s
    self.touched = 1s
0x000108:
    push -5s
    if !(== 7s:flag 0s) goto 0x00014C
0x000124:
    if !(== self.room 32s) goto 0x00014C
0x000138:
    call (caster_free[]:int32 global.currentsong2)
0x00014C:
    exit
