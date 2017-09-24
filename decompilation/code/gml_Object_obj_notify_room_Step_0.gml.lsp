0x000000:
    if !(== self.t 1s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x00009C
0x000038:
    call (instance_destroy[]:int32 )
    global.interact = 0s
    if !(== self.donotcall 0s) goto 0x00009C
0x000064:
    if !(bool (instance_exists[]:int32 self.mb)) goto 0x00009C
0x00007C:
    pushenv (int32 self.mb) 0x000098
0x00008C:
    call (instance_destroy[]:int32 )
0x000098:
    popenv 0x00008C
0x00009C:
    exit
