0x000000:
    if !(< global.turntimer 1s) goto 0x000028
0x000014:
    push (> global.turntimer -200s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00003C
0x000030:
    call (instance_destroy[]:int32 )
0x00003C:
    exit
