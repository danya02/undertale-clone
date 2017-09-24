0x000000:
    if !(== self.con 1s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000050
0x000038:
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000050:
    exit
