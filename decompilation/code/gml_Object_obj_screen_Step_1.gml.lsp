0x000000:
    if !(== global.inbattle 0s) goto 0x000030
0x000014:
    push -5s
    push (== 18s:flag 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x00004C
0x000038:
    call (script_execute[]:int32 (var 103s))
0x00004C:
    exit
