0x000000:
    if !(== self.conversation 0s) goto 0x000044
0x000014:
    if (> 1570.x 140s) goto 0x00003C
0x000028:
    push (< 1570.y 170s)
    goto 0x000040
0x00003C:
    push 1s
0x000040:
    goto 0x000048
0x000044:
    push 0s
0x000048:
    if !pop goto 0x0000AC
0x00004C:
    global.msc = 204s
    global.typer = 4s
    global.interact = 1s
    global.facechoice = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 1s
0x0000AC:
    if !(== self.conversation 1s) goto 0x0000DC
0x0000C0:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x00013C
0x0000E4:
    global.interact = 0s
    self.conversation = 2s
    pushenv 862s 0x000138
0x000104:
    call (path_start[]:int32 (var 1s) (var 0s) (var 3.25d) (var 8s))
0x000138:
    popenv 0x000104
0x00013C:
    if !(bool (instance_exists[]:int32 (var 862s))) goto 0x00020C
0x000154:
    if !(== self.conversation 2s) goto 0x00017C
0x000168:
    push (== 862.path_position 1s)
    goto 0x000180
0x00017C:
    push 0s
0x000180:
    if !pop goto 0x00020C
0x000184:
    self.conversation = 2.5d
    pushenv 862s 0x0001AC
0x0001A0:
    call (path_end[]:int32 )
0x0001AC:
    popenv 0x0001A0
0x0001B0:
    if !(< global.plot 4s) goto 0x00020C
0x0001C4:
    global.plot = 4s
    call (instance_create[]:int32 (var 867s) 862.y 862.x)
    pushenv 862s 0x000208
0x0001FC:
    call (instance_destroy[]:int32 )
0x000208:
    popenv 0x0001FC
0x00020C:
    if !(== self.conversation 2.5d) goto 0x000244
0x000228:
    push (== global.plot 4.5d)
    goto 0x000248
0x000244:
    push 0s
0x000248:
    if !pop goto 0x0002E4
0x00024C:
    self.conversation = 3s
    if !(bool (instance_exists[]:int32 (var 867s))) goto 0x0002AC
0x000270:
    call (instance_create[]:int32 (var 862s) 867.y 867.x)
    pushenv 867s 0x0002A8
0x00029C:
    call (instance_destroy[]:int32 )
0x0002A8:
    popenv 0x00029C
0x0002AC:
    pushenv 862s 0x0002E0
0x0002B4:
    call (path_start[]:int32 (var 1s) (var 0s) (var 3s) (var 9s))
0x0002E0:
    popenv 0x0002B4
0x0002E4:
    if !(bool (instance_exists[]:int32 (var 862s))) goto 0x00038C
0x0002FC:
    if !(== self.conversation 3s) goto 0x000324
0x000310:
    push (== 862.path_position 1s)
    goto 0x000328
0x000324:
    push 0s
0x000328:
    if !pop goto 0x00038C
0x00032C:
    self.conversation = 4s
    pushenv 862s 0x00034C
0x000340:
    call (path_end[]:int32 )
0x00034C:
    popenv 0x000340
0x000350:
    call (instance_create[]:int32 (var 870s) 862.y 862.x)
    pushenv 862s 0x000388
0x00037C:
    call (instance_destroy[]:int32 )
0x000388:
    popenv 0x00037C
0x00038C:
    if !(== self.conversation 4s) goto 0x0003D0
0x0003A0:
    if !(== global.plot 5s) goto 0x0003D0
0x0003B4:
    push (== (instance_exists[]:int32 (var 184s)) 0s)
    goto 0x0003D4
0x0003D0:
    push 0s
0x0003D4:
    if !pop goto 0x0004C0
0x0003D8:
    if !(bool (instance_exists[]:int32 (var 870s))) goto 0x000460
0x0003F0:
    call (instance_create[]:int32 (var 862s) 870.y 870.x)
    pushenv 870s 0x000428
0x00041C:
    call (instance_destroy[]:int32 )
0x000428:
    popenv 0x00041C
0x00042C:
    pushenv 862s 0x000440
0x000434:
    self.facing = 3s
0x000440:
    popenv 0x000434
0x000444:
    pushenv 862s 0x00045C
0x00044C:
    self.sprite_index = self.lsprite
0x00045C:
    popenv 0x00044C
0x000460:
    global.msc = 210s
    global.typer = 4s
    global.interact = 1s
    global.facechoice = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 5s
0x0004C0:
    if !(== self.conversation 5s) goto 0x0004F0
0x0004D4:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x0004F4
0x0004F0:
    push 0s
0x0004F4:
    if !pop goto 0x000554
0x0004F8:
    self.conversation = 6s
    global.interact = 0s
    pushenv 862s 0x000544
0x000518:
    call (path_start[]:int32 (var 0s) (var 0s) (var 3s) (var 41s))
0x000544:
    popenv 0x000518
0x000548:
    call (instance_destroy[]:int32 )
0x000554:
    exit
