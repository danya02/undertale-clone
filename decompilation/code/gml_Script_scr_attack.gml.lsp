0x000000:
    if (== global.weapon 3s) goto 0x000064
0x000014:
    if (== global.weapon 13s) goto 0x000064
0x000028:
    if (== global.weapon 14s) goto 0x000064
0x00003C:
    if (== global.weapon 51s) goto 0x000064
0x000050:
    push (== global.weapon 52s)
    goto 0x000068
0x000064:
    push 1s
0x000068:
    if !pop goto 0x0000B0
0x00006C:
    push (var 738s)
    push -5s
    call (instance_create[]:int32 (+ 2s:idealborder 6s) -5s (+ 0s:idealborder 6s))
0x0000B0:
    if (== global.weapon 25s) goto 0x000100
0x0000C4:
    if (== global.weapon 49s) goto 0x000100
0x0000D8:
    if (== global.weapon 47s) goto 0x000100
0x0000EC:
    push (== global.weapon 45s)
    goto 0x000104
0x000100:
    push 1s
0x000104:
    if !pop goto 0x00014C
0x000108:
    push (var 725s)
    push -5s
    call (instance_create[]:int32 (+ 2s:idealborder 6s) -5s (+ 0s:idealborder 6s))
0x00014C:
    exit
