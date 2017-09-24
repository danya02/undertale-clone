0x000000:
    if !(== self.conversation 1s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x0000A8
0x000038:
    global.interact = 0s
    self.conversation = 2s
    pushenv (int32 self.toriel) 0x00008C
0x000060:
    call (path_start[]:int32 (var 0s) (var 0s) (var 4s) (var 41s))
0x00008C:
    popenv 0x000060
0x000090:
    global.plot = 18s
    call (instance_destroy[]:int32 )
0x0000A8:
    exit
