0x000000:
    if !(== self.conversation 1s) goto 0x00002C
0x000014:
    push (bool (instance_exists[]:int32 (var 862s)))
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x0000A8
0x000034:
    push 0s
    stog.facing* = (int32 self.tor)
    global.msc = 211s
    global.typer = 4s
    global.facechoice = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 1.5d
0x0000A8:
    if !(== self.conversation 1.5d) goto 0x0000E0
0x0000C4:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x0000E4
0x0000E0:
    push 0s
0x0000E4:
    if !pop goto 0x000140
0x0000E8:
    pushenv (int32 self.tor) 0x000124
0x0000F8:
    call (path_start[]:int32 (var 0s) (var 0s) (var 4s) (var 11s))
0x000124:
    popenv 0x0000F8
0x000128:
    global.interact = 0s
    self.conversation = 2s
0x000140:
    if !(== self.conversation 2s) goto 0x00016C
0x000154:
    push (bool (instance_exists[]:int32 (var 862s)))
    goto 0x000170
0x00016C:
    push 0s
0x000170:
    if !pop goto 0x000220
0x000174:
    if !(== 862.path_position 1s) goto 0x000220
0x000188:
    self.tor2 = (instance_create[]:int32 (var 872s) (int32 self.tor):y (int32 self.tor):x)
    pushenv (int32 self.tor2) 0x0001E4
0x0001D8:
    self.direction = 270s
0x0001E4:
    popenv 0x0001D8
0x0001E8:
    pushenv 862s 0x0001FC
0x0001F0:
    call (instance_destroy[]:int32 )
0x0001FC:
    popenv 0x0001F0
0x000200:
    global.plot = 5.5d
    self.conversation = 3s
0x000220:
    if !(== global.plot 6s) goto 0x000248
0x000234:
    push (== self.conversation 3s)
    goto 0x00024C
0x000248:
    push 0s
0x00024C:
    if !pop goto 0x0002F4
0x000250:
    push -5s
    if (== 10s:flag 1s) goto 0x0002C0
0x00026C:
    push -5s
    if (== 11s:flag 1s) goto 0x0002C0
0x000288:
    push -5s
    if (== 12s:flag 1s) goto 0x0002C0
0x0002A4:
    push -5s
    push (== 13s:flag 1s)
    goto 0x0002C4
0x0002C0:
    push 1s
0x0002C4:
    if !pop goto 0x0002F4
0x0002C8:
    global.interact = 1s
    stog.alarm[7s] = 15s
    self.conversation = 4s
0x0002F4:
    if !(== self.conversation 4s) goto 0x000314
0x000308:
    global.interact = 1s
0x000314:
    if !(== self.conversation 6s) goto 0x000344
0x000328:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000348
0x000344:
    push 0s
0x000348:
    if !pop goto 0x0003BC
0x00034C:
    pushenv (int32 self.tor3) 0x000388
0x00035C:
    call (path_start[]:int32 (var 0s) (var 0s) (var 3s) (var 12s))
0x000388:
    popenv 0x00035C
0x00038C:
    global.plot = 7s
    self.conversation = 8s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x0003BC:
    exit
