0x000000:
    self.touched = 0s
    if !(== self.room 43s) goto 0x0000B8
0x000020:
    push -5s
    if !(== 7s:flag 1s) goto 0x000070
0x00003C:
    call (instance_create[]:int32 (var 789s) self.y self.x)
    call (instance_destroy[]:int32 )
    goto 0x0000B8
0x000070:
    call (instance_create[]:int32 (var 2s) (var 400s) (var 140s))
    call (instance_create[]:int32 (var 2s) (var 400s) (var 160s))
0x0000B8:
    exit
