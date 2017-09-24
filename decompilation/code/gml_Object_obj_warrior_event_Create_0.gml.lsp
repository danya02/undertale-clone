0x000000:
    self.con = 0s
    stog.flag[200s] = 205s
    push -5s
    if !(== 419s:flag 1s) goto 0x000048
0x00003C:
    call (instance_destroy[]:int32 )
0x000048:
    push -5s
    if (== 8s:flag 1s) goto 0x000080
0x000064:
    push -5s
    push (== 7s:flag 1s)
    goto 0x000084
0x000080:
    push 1s
0x000084:
    if !pop goto 0x000094
0x000088:
    call (instance_destroy[]:int32 )
0x000094:
    exit
