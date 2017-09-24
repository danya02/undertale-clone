0x000000:
    if !(== self.movement 1s) goto 0x0000D4
0x000014:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x000044
0x00002C:
    self.x = (- self.x 5s)
0x000044:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000074
0x00005C:
    self.x = (+ self.x 5s)
0x000074:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x0000A4
0x00008C:
    self.y = (+ self.y 5s)
0x0000A4:
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x0000D4
0x0000BC:
    self.y = (- self.y 5s)
0x0000D4:
    if !(== self.movement 2s) goto 0x0001B4
0x0000E8:
    self.hspeed = 0s
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x000124
0x00010C:
    self.x = (- self.x 5s)
0x000124:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000154
0x00013C:
    self.x = (+ self.x 5s)
0x000154:
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x0001B4
0x00016C:
    if !(== self.jumpstage 1s) goto 0x000194
0x000180:
    push (== self.vspeed 0s)
    goto 0x000198
0x000194:
    push 0s
0x000198:
    if !pop goto 0x0001B4
0x00019C:
    self.jumpstage = 2s
    self.vspeed = -6s
0x0001B4:
    if !(== self.movement 11s) goto 0x000294
0x0001C8:
    self.vspeed = 0s
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x000204
0x0001EC:
    self.y = (- self.y 5s)
0x000204:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x000234
0x00021C:
    self.y = (+ self.y 5s)
0x000234:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x000294
0x00024C:
    if !(== self.jumpstage 1s) goto 0x000274
0x000260:
    push (== self.hspeed 0s)
    goto 0x000278
0x000274:
    push 0s
0x000278:
    if !pop goto 0x000294
0x00027C:
    self.jumpstage = 2s
    self.hspeed = -6s
0x000294:
    if !(== self.movement 12s) goto 0x000374
0x0002A8:
    self.hspeed = 0s
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x0002E4
0x0002CC:
    self.x = (- self.x 5s)
0x0002E4:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000314
0x0002FC:
    self.x = (+ self.x 5s)
0x000314:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x000374
0x00032C:
    if !(== self.jumpstage 1s) goto 0x000354
0x000340:
    push (== self.vspeed 0s)
    goto 0x000358
0x000354:
    push 0s
0x000358:
    if !pop goto 0x000374
0x00035C:
    self.jumpstage = 2s
    self.vspeed = 6s
0x000374:
    if !(== self.movement 13s) goto 0x000454
0x000388:
    self.vspeed = 0s
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x0003C4
0x0003AC:
    self.y = (- self.y 5s)
0x0003C4:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x0003F4
0x0003DC:
    self.y = (+ self.y 5s)
0x0003F4:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000454
0x00040C:
    if !(== self.jumpstage 1s) goto 0x000434
0x000420:
    push (== self.hspeed 0s)
    goto 0x000438
0x000434:
    push 0s
0x000438:
    if !pop goto 0x000454
0x00043C:
    self.jumpstage = 2s
    self.hspeed = 6s
0x000454:
    if !(== self.jumpstage 2s) goto 0x00047C
0x000468:
    push (== self.movement 2s)
    goto 0x000480
0x00047C:
    push 0s
0x000480:
    if !pop goto 0x0005FC
0x000484:
    if !(== (keyboard_check_direct[]:int32 (var 38s)) 0s) goto 0x0004B4
0x0004A0:
    push (<= self.vspeed -1s)
    goto 0x0004B8
0x0004B4:
    push 0s
0x0004B8:
    if !pop goto 0x0004C8
0x0004BC:
    self.vspeed = -1s
0x0004C8:
    if !(> self.vspeed 0.5d) goto 0x0004F8
0x0004E4:
    push (< self.vspeed 8s)
    goto 0x0004FC
0x0004F8:
    push 0s
0x0004FC:
    if !pop goto 0x000520
0x000500:
    self.vspeed = (+ self.vspeed 0.6d)
0x000520:
    if !(> self.vspeed -1s) goto 0x000550
0x000534:
    push (<= self.vspeed 0.5d)
    goto 0x000554
0x000550:
    push 0s
0x000554:
    if !pop goto 0x000578
0x000558:
    self.vspeed = (+ self.vspeed 0.2d)
0x000578:
    if !(> self.vspeed -4s) goto 0x0005A0
0x00058C:
    push (<= self.vspeed -1s)
    goto 0x0005A4
0x0005A0:
    push 0s
0x0005A4:
    if !pop goto 0x0005C8
0x0005A8:
    self.vspeed = (+ self.vspeed 0.5d)
0x0005C8:
    if !(<= self.vspeed -4s) goto 0x0005FC
0x0005DC:
    self.vspeed = (+ self.vspeed 0.2d)
0x0005FC:
    if !(== self.jumpstage 2s) goto 0x000624
0x000610:
    push (== self.movement 11s)
    goto 0x000628
0x000624:
    push 0s
0x000628:
    if !pop goto 0x0007A4
0x00062C:
    if !(== (keyboard_check_direct[]:int32 (var 37s)) 0s) goto 0x00065C
0x000648:
    push (<= self.hspeed -1s)
    goto 0x000660
0x00065C:
    push 0s
0x000660:
    if !pop goto 0x000670
0x000664:
    self.hspeed = -1s
0x000670:
    if !(> self.hspeed 0.5d) goto 0x0006A0
0x00068C:
    push (< self.hspeed 8s)
    goto 0x0006A4
0x0006A0:
    push 0s
0x0006A4:
    if !pop goto 0x0006C8
0x0006A8:
    self.hspeed = (+ self.hspeed 0.6d)
0x0006C8:
    if !(> self.hspeed -1s) goto 0x0006F8
0x0006DC:
    push (<= self.hspeed 0.5d)
    goto 0x0006FC
0x0006F8:
    push 0s
0x0006FC:
    if !pop goto 0x000720
0x000700:
    self.hspeed = (+ self.hspeed 0.2d)
0x000720:
    if !(> self.hspeed -4s) goto 0x000748
0x000734:
    push (<= self.hspeed -1s)
    goto 0x00074C
0x000748:
    push 0s
0x00074C:
    if !pop goto 0x000770
0x000750:
    self.hspeed = (+ self.hspeed 0.5d)
0x000770:
    if !(<= self.hspeed -4s) goto 0x0007A4
0x000784:
    self.hspeed = (+ self.hspeed 0.2d)
0x0007A4:
    if !(== self.jumpstage 2s) goto 0x0007CC
0x0007B8:
    push (== self.movement 12s)
    goto 0x0007D0
0x0007CC:
    push 0s
0x0007D0:
    if !pop goto 0x00094C
0x0007D4:
    if !(== (keyboard_check_direct[]:int32 (var 40s)) 0s) goto 0x000804
0x0007F0:
    push (>= self.vspeed 1s)
    goto 0x000808
0x000804:
    push 0s
0x000808:
    if !pop goto 0x000818
0x00080C:
    self.vspeed = 1s
0x000818:
    if !(< self.vspeed -0.5d) goto 0x000848
0x000834:
    push (> self.vspeed -8s)
    goto 0x00084C
0x000848:
    push 0s
0x00084C:
    if !pop goto 0x000870
0x000850:
    self.vspeed = (- self.vspeed 0.6d)
0x000870:
    if !(< self.vspeed 1s) goto 0x0008A0
0x000884:
    push (>= self.vspeed -0.5d)
    goto 0x0008A4
0x0008A0:
    push 0s
0x0008A4:
    if !pop goto 0x0008C8
0x0008A8:
    self.vspeed = (- self.vspeed 0.2d)
0x0008C8:
    if !(< self.vspeed 4s) goto 0x0008F0
0x0008DC:
    push (>= self.vspeed 1s)
    goto 0x0008F4
0x0008F0:
    push 0s
0x0008F4:
    if !pop goto 0x000918
0x0008F8:
    self.vspeed = (- self.vspeed 0.5d)
0x000918:
    if !(>= self.vspeed 4s) goto 0x00094C
0x00092C:
    self.vspeed = (- self.vspeed 0.2d)
0x00094C:
    if !(== self.jumpstage 2s) goto 0x000974
0x000960:
    push (== self.movement 13s)
    goto 0x000978
0x000974:
    push 0s
0x000978:
    if !pop goto 0x000AF4
0x00097C:
    if !(== (keyboard_check_direct[]:int32 (var 39s)) 0s) goto 0x0009AC
0x000998:
    push (>= self.hspeed 1s)
    goto 0x0009B0
0x0009AC:
    push 0s
0x0009B0:
    if !pop goto 0x0009C0
0x0009B4:
    self.hspeed = 1s
0x0009C0:
    if !(< self.hspeed -0.5d) goto 0x0009F0
0x0009DC:
    push (> self.hspeed -8s)
    goto 0x0009F4
0x0009F0:
    push 0s
0x0009F4:
    if !pop goto 0x000A18
0x0009F8:
    self.hspeed = (- self.hspeed 0.6d)
0x000A18:
    if !(< self.hspeed 1s) goto 0x000A48
0x000A2C:
    push (>= self.hspeed -0.5d)
    goto 0x000A4C
0x000A48:
    push 0s
0x000A4C:
    if !pop goto 0x000A70
0x000A50:
    self.hspeed = (- self.hspeed 0.2d)
0x000A70:
    if !(< self.hspeed 4s) goto 0x000A98
0x000A84:
    push (>= self.hspeed 1s)
    goto 0x000A9C
0x000A98:
    push 0s
0x000A9C:
    if !pop goto 0x000AC0
0x000AA0:
    self.hspeed = (- self.hspeed 0.5d)
0x000AC0:
    if !(>= self.hspeed 4s) goto 0x000AF4
0x000AD4:
    self.hspeed = (- self.hspeed 0.2d)
0x000AF4:
    if !(!= self.movement 20s) goto 0x000D90
0x000B08:
    if !(== self.ignore_border 0s) goto 0x000D8C
0x000B1C:
    push self.x
    if !(< -5s (+ 0s:idealborder 4s)) goto 0x000BB8
0x000B44:
    push -5s
    self.x = (+ 0s:idealborder 4s)
    call (event_user[]:int32 (var 7s))
    if !(< self.hspeed 0s) goto 0x000B98
0x000B8C:
    self.hspeed = 0s
0x000B98:
    if !(== self.movement 13s) goto 0x000BB8
0x000BAC:
    self.jumpstage = 1s
0x000BB8:
    push self.y
    if !(< -5s (+ 2s:idealborder 4s)) goto 0x000C54
0x000BE0:
    push -5s
    self.y = (+ 2s:idealborder 4s)
    call (event_user[]:int32 (var 7s))
    if !(< self.vspeed 0s) goto 0x000C34
0x000C28:
    self.vspeed = 0s
0x000C34:
    if !(== self.movement 12s) goto 0x000C54
0x000C48:
    self.jumpstage = 1s
0x000C54:
    push self.x
    if !(> -5s (- 1s:idealborder 16s)) goto 0x000CF0
0x000C7C:
    push -5s
    self.x = (- 1s:idealborder 16s)
    call (event_user[]:int32 (var 7s))
    if !(> self.hspeed 0s) goto 0x000CD0
0x000CC4:
    self.hspeed = 0s
0x000CD0:
    if !(== self.movement 11s) goto 0x000CF0
0x000CE4:
    self.jumpstage = 1s
0x000CF0:
    push self.y
    if !(> -5s (- 3s:idealborder 16s)) goto 0x000D8C
0x000D18:
    push -5s
    self.y = (- 3s:idealborder 16s)
    call (event_user[]:int32 (var 7s))
    if !(> self.vspeed 0s) goto 0x000D6C
0x000D60:
    self.vspeed = 0s
0x000D6C:
    if !(== self.movement 2s) goto 0x000D8C
0x000D80:
    self.jumpstage = 1s
0x000D8C:
    goto 0x000F44
0x000D90:
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x000DC0
0x000DA8:
    self.mv20x = (+ self.mv20x 1s)
0x000DC0:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x000DF0
0x000DD8:
    self.mv20x = (- self.mv20x 1s)
0x000DF0:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x000E14
0x000E08:
    self.mv20y = 0s
0x000E14:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x000E38
0x000E2C:
    self.mv20y = 1s
0x000E38:
    if !(< self.mv20x 0s) goto 0x000E58
0x000E4C:
    self.mv20x = 3s
0x000E58:
    if !(> self.mv20x 3s) goto 0x000E78
0x000E6C:
    self.mv20x = 0s
0x000E78:
    if !(== self.mv20y 0s) goto 0x000EA4
0x000E8C:
    self.x = 64s
    self.y = 278s
0x000EA4:
    if !(== self.mv20y 1s) goto 0x000F44
0x000EB8:
    self.y = 444s
    if !(== self.mv20x 0s) goto 0x000EE4
0x000ED8:
    self.x = 40s
0x000EE4:
    if !(== self.mv20x 1s) goto 0x000F04
0x000EF8:
    self.x = 196s
0x000F04:
    if !(== self.mv20x 2s) goto 0x000F24
0x000F18:
    self.x = 354s
0x000F24:
    if !(== self.mv20x 3s) goto 0x000F44
0x000F38:
    self.x = 508s
0x000F44:
    exit
