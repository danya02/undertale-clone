0x000000:
    if !(== self.noke 0s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x00007C
0x000038:
    global.interact = 1s
    call (instance_create[]:int32 (var 789s) (+ 1570.y 15s) 1570.x)
    self.noke = 1s
0x00007C:
    exit
