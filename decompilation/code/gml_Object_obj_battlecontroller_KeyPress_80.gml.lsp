0x000000:
    if !(bool (keyboard_check[]:int32 (var 79s))) goto 0x00002C
0x000018:
    push (== global.debug 1s)
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x000050
0x000034:
    [obj_monsterparent].mercymod = 999999
    global.mercy = 0s
0x000050:
    exit
