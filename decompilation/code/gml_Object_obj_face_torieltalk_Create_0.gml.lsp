0x000000:
    call (event_inherited[]:int32 )
    self.image_speed = 0.25d
    if !(bool (instance_exists[]:int32 (var 776s))) goto 0x000050
0x000038:
    pushenv 776s 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    popenv 0x000040
0x000050:
    if !(bool (instance_exists[]:int32 (var 777s))) goto 0x000080
0x000068:
    pushenv 777s 0x00007C
0x000070:
    call (instance_destroy[]:int32 )
0x00007C:
    popenv 0x000070
0x000080:
    if !(bool (instance_exists[]:int32 (var 775s))) goto 0x0000B0
0x000098:
    pushenv 775s 0x0000AC
0x0000A0:
    call (instance_destroy[]:int32 )
0x0000AC:
    popenv 0x0000A0
0x0000B0:
    if !(bool (instance_exists[]:int32 (var 770s))) goto 0x0000E0
0x0000C8:
    pushenv 770s 0x0000DC
0x0000D0:
    call (instance_destroy[]:int32 )
0x0000DC:
    popenv 0x0000D0
0x0000E0:
    if !(bool (instance_exists[]:int32 (var 771s))) goto 0x000110
0x0000F8:
    pushenv 771s 0x00010C
0x000100:
    call (instance_destroy[]:int32 )
0x00010C:
    popenv 0x000100
0x000110:
    if !(== global.faceemotion 99s) goto 0x000154
0x000124:
    call (instance_create[]:int32 (var 766s) self.y self.x)
    global.faceemotion = 0s
0x000154:
    if !(== global.faceemotion 0s) goto 0x000188
0x000168:
    push (!= self.sprite_index (real[]:int32 (var 1986s)))
    goto 0x00018C
0x000188:
    push 0s
0x00018C:
    if !pop goto 0x0001A8
0x000190:
    self.sprite_index = (real[]:int32 (var 1986s))
0x0001A8:
    if !(== global.faceemotion 1s) goto 0x0001DC
0x0001BC:
    push (!= self.sprite_index (real[]:int32 (var 2004s)))
    goto 0x0001E0
0x0001DC:
    push 0s
0x0001E0:
    if !pop goto 0x0001FC
0x0001E4:
    self.sprite_index = (real[]:int32 (var 2004s))
0x0001FC:
    if !(== global.faceemotion 2s) goto 0x000230
0x000210:
    push (!= self.sprite_index (real[]:int32 (var 1990s)))
    goto 0x000234
0x000230:
    push 0s
0x000234:
    if !pop goto 0x000250
0x000238:
    self.sprite_index = (real[]:int32 (var 1990s))
0x000250:
    if !(== global.faceemotion 3s) goto 0x000284
0x000264:
    push (!= self.sprite_index (real[]:int32 (var 1999s)))
    goto 0x000288
0x000284:
    push 0s
0x000288:
    if !pop goto 0x0002A4
0x00028C:
    self.sprite_index = (real[]:int32 (var 1999s))
0x0002A4:
    if !(== global.faceemotion 4s) goto 0x0002D8
0x0002B8:
    push (!= self.sprite_index (real[]:int32 (var 2000s)))
    goto 0x0002DC
0x0002D8:
    push 0s
0x0002DC:
    if !pop goto 0x0002F8
0x0002E0:
    self.sprite_index = (real[]:int32 (var 2000s))
0x0002F8:
    if !(== global.faceemotion 6s) goto 0x00032C
0x00030C:
    push (!= self.sprite_index (real[]:int32 (var 1991s)))
    goto 0x000330
0x00032C:
    push 0s
0x000330:
    if !pop goto 0x00034C
0x000334:
    self.sprite_index = (real[]:int32 (var 1991s))
0x00034C:
    if !(== global.faceemotion 7s) goto 0x000380
0x000360:
    push (!= self.sprite_index (real[]:int32 (var 1993s)))
    goto 0x000384
0x000380:
    push 0s
0x000384:
    if !pop goto 0x0003A0
0x000388:
    self.sprite_index = (real[]:int32 (var 1993s))
0x0003A0:
    if !(== global.faceemotion 8s) goto 0x0003D4
0x0003B4:
    push (!= self.sprite_index (real[]:int32 (var 1996s)))
    goto 0x0003D8
0x0003D4:
    push 0s
0x0003D8:
    if !pop goto 0x0003F4
0x0003DC:
    self.sprite_index = (real[]:int32 (var 1996s))
0x0003F4:
    if !(== global.faceemotion 9s) goto 0x000428
0x000408:
    push (!= self.sprite_index (real[]:int32 (var 1987s)))
    goto 0x00042C
0x000428:
    push 0s
0x00042C:
    if !pop goto 0x000448
0x000430:
    self.sprite_index = (real[]:int32 (var 1987s))
0x000448:
    exit
