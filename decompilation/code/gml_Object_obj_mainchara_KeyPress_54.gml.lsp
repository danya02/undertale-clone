0x000000:
    if !(== global.debug 1s) goto 0x00011C
0x000014:
    if !(bool (keyboard_check[]:int32 (var 70s))) goto 0x000040
0x00002C:
    call (room_goto[]:int32 (var 138s))
0x000040:
    if !(bool (keyboard_check[]:int32 (var 84s))) goto 0x00006C
0x000058:
    call (room_goto[]:int32 (var 44s))
0x00006C:
    if !(bool (keyboard_check[]:int32 (var 87s))) goto 0x000098
0x000084:
    call (room_goto[]:int32 (var 82s))
0x000098:
    if !(bool (keyboard_check[]:int32 (var 69s))) goto 0x0000C4
0x0000B0:
    call (room_goto[]:int32 (var 219s))
0x0000C4:
    if !(bool (keyboard_check[]:int32 (var 82s))) goto 0x0000F0
0x0000DC:
    call (room_goto[]:int32 (var 7s))
0x0000F0:
    if !(bool (keyboard_check[]:int32 (var 89s))) goto 0x00011C
0x000108:
    call (room_goto[]:int32 (var 244s))
0x00011C:
    exit
