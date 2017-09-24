0x000000:
    other.x = other.xprevious
    other.y = other.yprevious
    if !(== self.conversation 0s) goto 0x0000F4
0x000034:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    global.plot = 9s
    global.interact = 1s
    self.tor = (instance_create[]:int32 (var 862s) 874.y 874.x)
    pushenv 874s 0x0000AC
0x0000A0:
    call (instance_destroy[]:int32 )
0x0000AC:
    popenv 0x0000A0
0x0000B0:
    pushenv 862s 0x0000E4
0x0000B8:
    call (path_start[]:int32 (var 0s) (var 0s) (var 3s) (var 15s))
0x0000E4:
    popenv 0x0000B8
0x0000E8:
    self.conversation = 3s
0x0000F4:
    exit
