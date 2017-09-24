0x000000:
    push -5s
    if !(== 7s:flag 1s) goto 0x000054
0x00001C:
    call (instance_create[]:int32 (var 789s) (+ self.y 56s) (+ self.x 3s))
    goto 0x0000A8
0x000054:
    call (instance_create[]:int32 (var 13s) (var 150s) (var 35s))
    call (instance_create[]:int32 (var 2s) (var 130s) (var 35s))
    call (instance_destroy[]:int32 )
0x0000A8:
    exit
