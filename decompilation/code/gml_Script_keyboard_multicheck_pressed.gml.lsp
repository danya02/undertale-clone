0x000000:
    if (== self.argument0 0s) goto 0x000028
0x000014:
    push (== self.argument0 13s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x000074
0x000030:
    if (bool (keyboard_check_pressed[]:int32 (var 13s))) goto 0x000060
0x000048:
    push (bool (keyboard_check_pressed[]:int32 (var 90s)))
    goto 0x000064
0x000060:
    push 1s
0x000064:
    if !pop goto 0x000074
0x000068:
    ret var (var 1s)
0x000074:
    if (== self.argument0 1s) goto 0x00009C
0x000088:
    push (== self.argument0 16s)
    goto 0x0000A0
0x00009C:
    push 1s
0x0000A0:
    if !pop goto 0x0000E8
0x0000A4:
    if (bool (keyboard_check_pressed[]:int32 (var 16s))) goto 0x0000D4
0x0000BC:
    push (bool (keyboard_check_pressed[]:int32 (var 88s)))
    goto 0x0000D8
0x0000D4:
    push 1s
0x0000D8:
    if !pop goto 0x0000E8
0x0000DC:
    ret var (var 1s)
0x0000E8:
    if (== self.argument0 2s) goto 0x000110
0x0000FC:
    push (== self.argument0 17s)
    goto 0x000114
0x000110:
    push 1s
0x000114:
    if !pop goto 0x00015C
0x000118:
    if (bool (keyboard_check_pressed[]:int32 (var 17s))) goto 0x000148
0x000130:
    push (bool (keyboard_check_pressed[]:int32 (var 67s)))
    goto 0x00014C
0x000148:
    push 1s
0x00014C:
    if !pop goto 0x00015C
0x000150:
    ret var (var 1s)
0x00015C:
    exit
