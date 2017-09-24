0x000000:
    call (event_inherited[]:int32 )
    self.image_speed = 0s
    self.image_index = 0s
    stog.alarm[0s] = (+ 20s (round[]:int32 (random[]:int32 (var 30s))))
    if !(bool (instance_exists[]:int32 (var 776s))) goto 0x000084
0x00006C:
    pushenv 776s 0x000080
0x000074:
    call (instance_destroy[]:int32 )
0x000080:
    popenv 0x000074
0x000084:
    if !(bool (instance_exists[]:int32 (var 777s))) goto 0x0000B4
0x00009C:
    pushenv 777s 0x0000B0
0x0000A4:
    call (instance_destroy[]:int32 )
0x0000B0:
    popenv 0x0000A4
0x0000B4:
    if !(bool (instance_exists[]:int32 (var 775s))) goto 0x0000E4
0x0000CC:
    pushenv 775s 0x0000E0
0x0000D4:
    call (instance_destroy[]:int32 )
0x0000E0:
    popenv 0x0000D4
0x0000E4:
    if !(bool (instance_exists[]:int32 (var 770s))) goto 0x000114
0x0000FC:
    pushenv 770s 0x000110
0x000104:
    call (instance_destroy[]:int32 )
0x000110:
    popenv 0x000104
0x000114:
    if !(bool (instance_exists[]:int32 (var 771s))) goto 0x000144
0x00012C:
    pushenv 771s 0x000140
0x000134:
    call (instance_destroy[]:int32 )
0x000140:
    popenv 0x000134
0x000144:
    if !(== global.faceemotion 99s) goto 0x000188
0x000158:
    call (instance_create[]:int32 (var 766s) self.y self.x)
    global.faceemotion = 0s
0x000188:
    if !(== global.faceemotion 0s) goto 0x0001B0
0x00019C:
    push (!= self.sprite_index 2005s)
    goto 0x0001B4
0x0001B0:
    push 0s
0x0001B4:
    if !pop goto 0x0001C4
0x0001B8:
    self.sprite_index = 2005s
0x0001C4:
    if !(== global.faceemotion 1s) goto 0x0001EC
0x0001D8:
    push (!= self.sprite_index 2007s)
    goto 0x0001F0
0x0001EC:
    push 0s
0x0001F0:
    if !pop goto 0x000200
0x0001F4:
    self.sprite_index = 2007s
0x000200:
    if !(== global.faceemotion 2s) goto 0x000228
0x000214:
    push (!= self.sprite_index 2006s)
    goto 0x00022C
0x000228:
    push 0s
0x00022C:
    if !pop goto 0x00023C
0x000230:
    self.sprite_index = 2006s
0x00023C:
    if !(== global.faceemotion 3s) goto 0x000270
0x000250:
    push (!= self.sprite_index (real[]:int32 (var 1999s)))
    goto 0x000274
0x000270:
    push 0s
0x000274:
    if !pop goto 0x000290
0x000278:
    self.sprite_index = (real[]:int32 (var 1999s))
0x000290:
    if !(== global.faceemotion 4s) goto 0x0002C4
0x0002A4:
    push (!= self.sprite_index (real[]:int32 (var 2000s)))
    goto 0x0002C8
0x0002C4:
    push 0s
0x0002C8:
    if !pop goto 0x0002E4
0x0002CC:
    self.sprite_index = (real[]:int32 (var 2000s))
0x0002E4:
    if !(== global.faceemotion 6s) goto 0x000318
0x0002F8:
    push (!= self.sprite_index (real[]:int32 (var 1991s)))
    goto 0x00031C
0x000318:
    push 0s
0x00031C:
    if !pop goto 0x000338
0x000320:
    self.sprite_index = (real[]:int32 (var 1991s))
0x000338:
    if !(== global.faceemotion 7s) goto 0x00036C
0x00034C:
    push (!= self.sprite_index (real[]:int32 (var 1993s)))
    goto 0x000370
0x00036C:
    push 0s
0x000370:
    if !pop goto 0x00038C
0x000374:
    self.sprite_index = (real[]:int32 (var 1993s))
0x00038C:
    if !(== global.faceemotion 8s) goto 0x0003C0
0x0003A0:
    push (!= self.sprite_index (real[]:int32 (var 1996s)))
    goto 0x0003C4
0x0003C0:
    push 0s
0x0003C4:
    if !pop goto 0x0003E0
0x0003C8:
    self.sprite_index = (real[]:int32 (var 1996s))
0x0003E0:
    if !(== global.faceemotion 9s) goto 0x000414
0x0003F4:
    push (!= self.sprite_index (real[]:int32 (var 1987s)))
    goto 0x000418
0x000414:
    push 0s
0x000418:
    if !pop goto 0x000434
0x00041C:
    self.sprite_index = (real[]:int32 (var 1987s))
0x000434:
    exit
