0x000000:
    if !(!= global.mnfight 2s) goto 0x000024
0x000014:
    self.movement = 0s
    goto 0x000044
0x000024:
    if !(== self.movement 0s) goto 0x000044
0x000038:
    self.movement = 1s
0x000044:
    global.invc = (- global.invc 1s)
    if (> global.invc 0s) goto 0x000084
0x000070:
    push (== 154.runaway 1s)
    goto 0x000088
0x000084:
    push 1s
0x000088:
    if !pop goto 0x0000A4
0x00008C:
    self.image_speed = 0.5d
    goto 0x0000BC
0x0000A4:
    self.image_index = 0s
    self.image_speed = 0s
0x0000BC:
    self.charge = (- self.charge 1s)
    if !(== self.shot 1s) goto 0x000114
0x0000E8:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000114
0x000100:
    push (== global.mnfight 2s)
    goto 0x000118
0x000114:
    push 0s
0x000118:
    if !pop goto 0x0001A8
0x00011C:
    if (== (instance_number[]:int32 (var 739s)) 0s) goto 0x00014C
0x000138:
    push (< self.charge 0s)
    goto 0x000150
0x00014C:
    push 1s
0x000150:
    if !pop goto 0x0001A8
0x000154:
    self.charge = 14s
    call (instance_create[]:int32 (var 739s) (+ self.y 2s) (+ self.x 4s))
    call (snd_play[]:int32 (var 116s))
0x0001A8:
    if !(== self.sprite_index 35s) goto 0x0001D4
0x0001BC:
    self.image_angle = (+ self.image_angle 6s)
0x0001D4:
    if !(== self.confuse 1s) goto 0x0001FC
0x0001E8:
    push (== global.mnfight 2s)
    goto 0x000200
0x0001FC:
    push 0s
0x000200:
    if !pop goto 0x0002E4
0x000204:
    if !(< self.x (+ 758.x 8s)) goto 0x00023C
0x000224:
    self.x = (+ 758.x 8s)
0x00023C:
    if !(< self.y (+ 759.x 8s)) goto 0x000274
0x00025C:
    self.y = (+ 759.x 8s)
0x000274:
    if !(> self.x (- 760.x 8s)) goto 0x0002AC
0x000294:
    self.x = (- 760.x 8s)
0x0002AC:
    if !(> self.y (- 761.y 8s)) goto 0x0002E4
0x0002CC:
    self.y = (- 761.y 8s)
0x0002E4:
    if !(== self.movement 11s) goto 0x0003CC
0x0002F8:
    self.vspeed = 0s
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x000338
0x00031C:
    self.y = (- self.y global.sp)
0x000338:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x00036C
0x000350:
    self.y = (+ self.y global.sp)
0x00036C:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x0003CC
0x000384:
    if !(== self.jumpstage 1s) goto 0x0003AC
0x000398:
    push (== self.hspeed 0s)
    goto 0x0003B0
0x0003AC:
    push 0s
0x0003B0:
    if !pop goto 0x0003CC
0x0003B4:
    self.jumpstage = 2s
    self.hspeed = -6s
0x0003CC:
    if !(== self.movement 12s) goto 0x0004B4
0x0003E0:
    self.hspeed = 0s
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x000420
0x000404:
    self.x = (- self.x global.sp)
0x000420:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000454
0x000438:
    self.x = (+ self.x global.sp)
0x000454:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x0004B4
0x00046C:
    if !(== self.jumpstage 1s) goto 0x000494
0x000480:
    push (== self.vspeed 0s)
    goto 0x000498
0x000494:
    push 0s
0x000498:
    if !pop goto 0x0004B4
0x00049C:
    self.jumpstage = 2s
    self.vspeed = 6s
0x0004B4:
    if !(== self.movement 13s) goto 0x00059C
0x0004C8:
    self.vspeed = 0s
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x000508
0x0004EC:
    self.y = (- self.y global.sp)
0x000508:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x00053C
0x000520:
    self.y = (+ self.y global.sp)
0x00053C:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x00059C
0x000554:
    if !(== self.jumpstage 1s) goto 0x00057C
0x000568:
    push (== self.hspeed 0s)
    goto 0x000580
0x00057C:
    push 0s
0x000580:
    if !pop goto 0x00059C
0x000584:
    self.jumpstage = 2s
    self.hspeed = 6s
0x00059C:
    if !(== self.jumpstage 2s) goto 0x0005C4
0x0005B0:
    push (== self.movement 2s)
    goto 0x0005C8
0x0005C4:
    push 0s
0x0005C8:
    if !pop goto 0x0007B0
0x0005CC:
    if !(== global.osflavor 1s) goto 0x000624
0x0005E0:
    if !(== (keyboard_check_direct[]:int32 (var 38s)) 0s) goto 0x000610
0x0005FC:
    push (<= self.vspeed -1s)
    goto 0x000614
0x000610:
    push 0s
0x000614:
    if !pop goto 0x000624
0x000618:
    self.vspeed = -1s
0x000624:
    if !(== global.osflavor 2s) goto 0x00067C
0x000638:
    if !(== (keyboard_check[]:int32 (var 38s)) 0s) goto 0x000668
0x000654:
    push (<= self.vspeed -1s)
    goto 0x00066C
0x000668:
    push 0s
0x00066C:
    if !pop goto 0x00067C
0x000670:
    self.vspeed = -1s
0x00067C:
    if !(> self.vspeed 0.5d) goto 0x0006AC
0x000698:
    push (< self.vspeed 8s)
    goto 0x0006B0
0x0006AC:
    push 0s
0x0006B0:
    if !pop goto 0x0006D4
0x0006B4:
    self.vspeed = (+ self.vspeed 0.6d)
0x0006D4:
    if !(> self.vspeed -1s) goto 0x000704
0x0006E8:
    push (<= self.vspeed 0.5d)
    goto 0x000708
0x000704:
    push 0s
0x000708:
    if !pop goto 0x00072C
0x00070C:
    self.vspeed = (+ self.vspeed 0.2d)
0x00072C:
    if !(> self.vspeed -4s) goto 0x000754
0x000740:
    push (<= self.vspeed -1s)
    goto 0x000758
0x000754:
    push 0s
0x000758:
    if !pop goto 0x00077C
0x00075C:
    self.vspeed = (+ self.vspeed 0.5d)
0x00077C:
    if !(<= self.vspeed -4s) goto 0x0007B0
0x000790:
    self.vspeed = (+ self.vspeed 0.2d)
0x0007B0:
    if !(== self.jumpstage 2s) goto 0x0007D8
0x0007C4:
    push (== self.movement 11s)
    goto 0x0007DC
0x0007D8:
    push 0s
0x0007DC:
    if !pop goto 0x0009C4
0x0007E0:
    if !(== global.osflavor 1s) goto 0x000838
0x0007F4:
    if !(== (keyboard_check_direct[]:int32 (var 37s)) 0s) goto 0x000824
0x000810:
    push (<= self.hspeed -1s)
    goto 0x000828
0x000824:
    push 0s
0x000828:
    if !pop goto 0x000838
0x00082C:
    self.hspeed = -1s
0x000838:
    if !(== global.osflavor 2s) goto 0x000890
0x00084C:
    if !(== (keyboard_check[]:int32 (var 37s)) 0s) goto 0x00087C
0x000868:
    push (<= self.hspeed -1s)
    goto 0x000880
0x00087C:
    push 0s
0x000880:
    if !pop goto 0x000890
0x000884:
    self.hspeed = -1s
0x000890:
    if !(> self.hspeed 0.5d) goto 0x0008C0
0x0008AC:
    push (< self.hspeed 8s)
    goto 0x0008C4
0x0008C0:
    push 0s
0x0008C4:
    if !pop goto 0x0008E8
0x0008C8:
    self.hspeed = (+ self.hspeed 0.6d)
0x0008E8:
    if !(> self.hspeed -1s) goto 0x000918
0x0008FC:
    push (<= self.hspeed 0.5d)
    goto 0x00091C
0x000918:
    push 0s
0x00091C:
    if !pop goto 0x000940
0x000920:
    self.hspeed = (+ self.hspeed 0.2d)
0x000940:
    if !(> self.hspeed -4s) goto 0x000968
0x000954:
    push (<= self.hspeed -1s)
    goto 0x00096C
0x000968:
    push 0s
0x00096C:
    if !pop goto 0x000990
0x000970:
    self.hspeed = (+ self.hspeed 0.5d)
0x000990:
    if !(<= self.hspeed -4s) goto 0x0009C4
0x0009A4:
    self.hspeed = (+ self.hspeed 0.2d)
0x0009C4:
    if !(== self.jumpstage 2s) goto 0x0009EC
0x0009D8:
    push (== self.movement 12s)
    goto 0x0009F0
0x0009EC:
    push 0s
0x0009F0:
    if !pop goto 0x000BD8
0x0009F4:
    if !(== global.osflavor 1s) goto 0x000A4C
0x000A08:
    if !(== (keyboard_check_direct[]:int32 (var 40s)) 0s) goto 0x000A38
0x000A24:
    push (>= self.vspeed 1s)
    goto 0x000A3C
0x000A38:
    push 0s
0x000A3C:
    if !pop goto 0x000A4C
0x000A40:
    self.vspeed = 1s
0x000A4C:
    if !(== global.osflavor 2s) goto 0x000AA4
0x000A60:
    if !(== (keyboard_check[]:int32 (var 40s)) 0s) goto 0x000A90
0x000A7C:
    push (>= self.vspeed 1s)
    goto 0x000A94
0x000A90:
    push 0s
0x000A94:
    if !pop goto 0x000AA4
0x000A98:
    self.vspeed = 1s
0x000AA4:
    if !(< self.vspeed -0.5d) goto 0x000AD4
0x000AC0:
    push (> self.vspeed -8s)
    goto 0x000AD8
0x000AD4:
    push 0s
0x000AD8:
    if !pop goto 0x000AFC
0x000ADC:
    self.vspeed = (- self.vspeed 0.6d)
0x000AFC:
    if !(< self.vspeed 1s) goto 0x000B2C
0x000B10:
    push (>= self.vspeed -0.5d)
    goto 0x000B30
0x000B2C:
    push 0s
0x000B30:
    if !pop goto 0x000B54
0x000B34:
    self.vspeed = (- self.vspeed 0.2d)
0x000B54:
    if !(< self.vspeed 4s) goto 0x000B7C
0x000B68:
    push (>= self.vspeed 1s)
    goto 0x000B80
0x000B7C:
    push 0s
0x000B80:
    if !pop goto 0x000BA4
0x000B84:
    self.vspeed = (- self.vspeed 0.5d)
0x000BA4:
    if !(>= self.vspeed 4s) goto 0x000BD8
0x000BB8:
    self.vspeed = (- self.vspeed 0.2d)
0x000BD8:
    if !(== self.jumpstage 2s) goto 0x000C00
0x000BEC:
    push (== self.movement 13s)
    goto 0x000C04
0x000C00:
    push 0s
0x000C04:
    if !pop goto 0x000DEC
0x000C08:
    if !(== global.osflavor 1s) goto 0x000C60
0x000C1C:
    if !(== (keyboard_check_direct[]:int32 (var 39s)) 0s) goto 0x000C4C
0x000C38:
    push (>= self.hspeed 1s)
    goto 0x000C50
0x000C4C:
    push 0s
0x000C50:
    if !pop goto 0x000C60
0x000C54:
    self.hspeed = 1s
0x000C60:
    if !(== global.osflavor 2s) goto 0x000CB8
0x000C74:
    if !(== (keyboard_check[]:int32 (var 39s)) 0s) goto 0x000CA4
0x000C90:
    push (>= self.hspeed 1s)
    goto 0x000CA8
0x000CA4:
    push 0s
0x000CA8:
    if !pop goto 0x000CB8
0x000CAC:
    self.hspeed = 1s
0x000CB8:
    if !(< self.hspeed -0.5d) goto 0x000CE8
0x000CD4:
    push (> self.hspeed -8s)
    goto 0x000CEC
0x000CE8:
    push 0s
0x000CEC:
    if !pop goto 0x000D10
0x000CF0:
    self.hspeed = (- self.hspeed 0.6d)
0x000D10:
    if !(< self.hspeed 1s) goto 0x000D40
0x000D24:
    push (>= self.hspeed -0.5d)
    goto 0x000D44
0x000D40:
    push 0s
0x000D44:
    if !pop goto 0x000D68
0x000D48:
    self.hspeed = (- self.hspeed 0.2d)
0x000D68:
    if !(< self.hspeed 4s) goto 0x000D90
0x000D7C:
    push (>= self.hspeed 1s)
    goto 0x000D94
0x000D90:
    push 0s
0x000D94:
    if !pop goto 0x000DB8
0x000D98:
    self.hspeed = (- self.hspeed 0.5d)
0x000DB8:
    if !(>= self.hspeed 4s) goto 0x000DEC
0x000DCC:
    self.hspeed = (- self.hspeed 0.2d)
0x000DEC:
    if !(== self.ignore_border 0s) goto 0x000E2C
0x000E00:
    if !(bool (instance_exists[]:int32 (var 517s))) goto 0x000E2C
0x000E18:
    push (== global.mnfight 2s)
    goto 0x000E30
0x000E2C:
    push 0s
0x000E30:
    if !pop goto 0x0010A4
0x000E34:
    push self.x
    if !(< -5s (+ 0s:idealborder 4s)) goto 0x000ED0
0x000E5C:
    push -5s
    self.x = (+ 0s:idealborder 4s)
    call (event_user[]:int32 (var 7s))
    if !(< self.hspeed 0s) goto 0x000EB0
0x000EA4:
    self.hspeed = 0s
0x000EB0:
    if !(== self.movement 13s) goto 0x000ED0
0x000EC4:
    self.jumpstage = 1s
0x000ED0:
    push self.y
    if !(< -5s (+ 2s:idealborder 4s)) goto 0x000F6C
0x000EF8:
    push -5s
    self.y = (+ 2s:idealborder 4s)
    call (event_user[]:int32 (var 7s))
    if !(< self.vspeed 0s) goto 0x000F4C
0x000F40:
    self.vspeed = 0s
0x000F4C:
    if !(== self.movement 12s) goto 0x000F6C
0x000F60:
    self.jumpstage = 1s
0x000F6C:
    push self.x
    if !(> -5s (- 1s:idealborder 16s)) goto 0x001008
0x000F94:
    push -5s
    self.x = (- 1s:idealborder 16s)
    call (event_user[]:int32 (var 7s))
    if !(> self.hspeed 0s) goto 0x000FE8
0x000FDC:
    self.hspeed = 0s
0x000FE8:
    if !(== self.movement 11s) goto 0x001008
0x000FFC:
    self.jumpstage = 1s
0x001008:
    push self.y
    if !(> -5s (- 3s:idealborder 16s)) goto 0x0010A4
0x001030:
    push -5s
    self.y = (- 3s:idealborder 16s)
    call (event_user[]:int32 (var 7s))
    if !(> self.vspeed 0s) goto 0x001084
0x001078:
    self.vspeed = 0s
0x001084:
    if !(== self.movement 2s) goto 0x0010A4
0x001098:
    self.jumpstage = 1s
0x0010A4:
    if !(bool (instance_exists[]:int32 (var 154s))) goto 0x001198
0x0010BC:
    if !(== 154.runaway 1s) goto 0x0010E4
0x0010D0:
    push (< self.x -20s)
    goto 0x0010E8
0x0010E4:
    push 0s
0x0010E8:
    if !pop goto 0x001198
0x0010EC:
    if !(== (instance_exists[]:int32 (var 149s)) 0s) goto 0x00112C
0x001108:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
0x00112C:
    if !(< self.x -60s) goto 0x001198
0x001140:
    push -5s
    if !(== 15s:flag 0s) goto 0x001184
0x00115C:
    call (caster_stop[]:int32 global.batmusic)
    call (caster_free[]:int32 global.batmusic)
0x001184:
    call (room_goto[]:int32 global.currentroom)
0x001198:
    exit
