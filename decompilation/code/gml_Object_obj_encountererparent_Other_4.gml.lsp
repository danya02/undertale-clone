0x000000:
    push -5s
    if (== 8s:flag 1s) goto 0x000038
0x00001C:
    push -5s
    push (== 7s:flag 1s)
    goto 0x00003C
0x000038:
    push 1s
0x00003C:
    if !pop goto 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    exit
