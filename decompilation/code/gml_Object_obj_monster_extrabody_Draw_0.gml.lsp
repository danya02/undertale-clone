0x000000:
    if !(== self.active 1s) goto 0x000E14
0x000014:
    if !(== self.type 2s) goto 0x0000B0
0x000028:
    self.siner = (+ self.siner 1s)
    self.y = (+ self.y (sin[]:int32 (/ self.siner (double 6s))))
    call (draw_sprite[]:int32 self.y self.x (floor[]:int32 (/ self.siner (double 6s))) (var 180s))
0x0000B0:
    if !(== self.type 3s) goto 0x0001A4
0x0000C4:
    self.siner = (+ self.siner 1s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (- 1s (* (sin[]:int32 (/ self.siner (double 4s))) 0.05d)) (var 1s) (+ (+ self.y (* (sin[]:int32 (/ self.siner (double 4s))) 10s)) 20s) self.x (floor[]:int32 (/ self.siner (double 6s))) (var 182s))
0x0001A4:
    if !(== self.type 4s) goto 0x000324
0x0001B8:
    self.siner = (+ self.siner 1s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y 6s) (- self.x 2s) (floor[]:int32 (/ self.siner (double 4s))) (var 185s))
    push self.y
    if !(< -1s (+ 0s:view_yview 240s)) goto 0x000290
0x000274:
    push -5s
    push (> 36s:flag 0s)
    goto 0x000294
0x000290:
    push 0s
0x000294:
    if !pop goto 0x000324
0x000298:
    self.siner2 = (+ self.siner2 1s)
    call (draw_sprite_ext[]:int32 (/ self.siner2 (double 100s)) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y 32s) (+ self.x 34s) (var 5s) (var 183s))
0x000324:
    if !(== self.type 5s) goto 0x000504
0x000338:
    self.siner = (+ self.siner 1s)
    self.gosp = 186s
    push self.y
    if !(< -1s (+ 0s:view_yview 240s)) goto 0x000390
0x000384:
    self.gosp = 188s
0x000390:
    if !(< self.siner 15s) goto 0x0003D0
0x0003A4:
    call (draw_sprite[]:int32 self.y self.x (var 0s) self.gosp)
0x0003D0:
    if !(>= self.siner 15s) goto 0x0003F8
0x0003E4:
    push (<= self.siner 18s)
    goto 0x0003FC
0x0003F8:
    push 0s
0x0003FC:
    if !pop goto 0x00042C
0x000400:
    call (draw_sprite[]:int32 self.y self.x (var 1s) self.gosp)
0x00042C:
    if !(>= self.siner 19s) goto 0x000454
0x000440:
    push (<= self.siner 21s)
    goto 0x000458
0x000454:
    push 0s
0x000458:
    if !pop goto 0x000488
0x00045C:
    call (draw_sprite[]:int32 self.y self.x (var 0s) self.gosp)
0x000488:
    if !(>= self.siner 22s) goto 0x0004B0
0x00049C:
    push (<= self.siner 25s)
    goto 0x0004B4
0x0004B0:
    push 0s
0x0004B4:
    if !pop goto 0x0004E4
0x0004B8:
    call (draw_sprite[]:int32 self.y self.x (var 1s) self.gosp)
0x0004E4:
    if !(>= self.siner 25s) goto 0x000504
0x0004F8:
    self.siner = 0s
0x000504:
    if !(== self.type 6s) goto 0x0005D0
0x000518:
    self.siner = (+ self.siner 1s)
    if !(> self.siner 30s) goto 0x000588
0x000544:
    self.siner2 = (+ self.siner2 1s)
    if !(> self.siner2 9s) goto 0x000588
0x000570:
    self.siner2 = 0s
    self.siner = 0s
0x000588:
    call (draw_sprite[]:int32 (- self.y 10s) self.x (floor[]:int32 (/ self.siner2 (double 2s))) (var 189s))
0x0005D0:
    if !(== self.type 7s) goto 0x00063C
0x0005E4:
    self.siner = (+ self.siner 1s)
    call (draw_sprite[]:int32 self.y self.x (floor[]:int32 (/ self.siner (double 6s))) (var 191s))
0x00063C:
    if !(== self.type 8s) goto 0x000704
0x000650:
    self.siner = (+ self.siner 1s)
    call (draw_sprite[]:int32 self.y self.x (floor[]:int32 (/ self.siner (double 10s))) (var 198s))
    push self.y
    if !(< -1s (+ 0s:view_yview 240s)) goto 0x000704
0x0006D0:
    push -5s
    if !(== 55s:flag 2s) goto 0x000704
0x0006EC:
    self.mercymod = (+ self.mercymod 2s)
0x000704:
    if !(== self.type 9s) goto 0x00079C
0x000718:
    self.siner = (+ self.siner 1s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (floor[]:int32 (/ self.siner (double 10s))) (var 224s))
0x00079C:
    if !(== self.type 10s) goto 0x000810
0x0007B0:
    self.siner = (+ self.siner 1s)
    call (draw_sprite[]:int32 (+ self.y 16s) self.x (floor[]:int32 (/ self.siner (double 10s))) (var 202s))
0x000810:
    if !(== self.type 13s) goto 0x000884
0x000824:
    push self.y
    if !(< -1s (+ 0s:view_yview 240s)) goto 0x000884
0x00084C:
    push 220s
    stog.sprite_index* = (int32 self.part1)
    push 0.1d
    stog.image_speed* = (int32 self.part1)
0x000884:
    if !(== self.type 17s) goto 0x0008E0
0x000898:
    push self.y
    if !(< -1s (+ 0s:view_yview 240s)) goto 0x0008E0
0x0008C0:
    if !(== self.emotion 1s) goto 0x0008E0
0x0008D4:
    self.emotion = 2s
0x0008E0:
    if !(== self.type 19s) goto 0x000954
0x0008F4:
    push self.y
    if !(< -1s (+ 0s:view_yview 260s)) goto 0x000954
0x00091C:
    if !(== (int32 self.msx):stage 0s) goto 0x000954
0x00093C:
    push 1s
    stog.stage* = (int32 self.msx)
0x000954:
    if !(== self.type 20s) goto 0x0009FC
0x000968:
    push self.y
    if !(< -1s (+ 0s:view_yview 240s)) goto 0x0009FC
0x000990:
    global.faceemotion = 3s
    stog.rotmod* = (+ (int32 self.dummy):rotmod 0.04d)
    stog.speedmod* = (+ (int32 self.dummy):speedmod 0.03d)
0x0009FC:
    push (int32 self.dummy)
    push (int32 self.dummy)
    if !(== self.type 21s) goto 0x000A88
0x000A10:
    push self.y
    if !(< -1s (+ 0s:view_yview 240s)) goto 0x000A4C
0x000A38:
    push (== self.bd 0s)
    goto 0x000A50
0x000A4C:
    push 0s
0x000A50:
    if !pop goto 0x000A88
0x000A54:
    self.bd = 1s
    pushenv (int32 self.bara1) 0x000A84
0x000A70:
    call (event_user[]:int32 (var 2s))
0x000A84:
    popenv 0x000A70
0x000A88:
    if !(== self.type 22s) goto 0x000AD0
0x000A9C:
    push self.y
    if !(< -1s (+ 0s:view_yview 240s)) goto 0x000AD0
0x000AC4:
    [obj_vulkinbody].face = 390s
0x000AD0:
    if !(== self.type 27s) goto 0x000B7C
0x000AE4:
    push self.y
    if !(< -1s (+ 0s:view_yview 300s)) goto 0x000B7C
0x000B0C:
    self.siner2 = (+ self.siner2 1s)
    if !(> self.siner2 25s) goto 0x000B50
0x000B38:
    push 1s
    stog.asleep* = (int32 self.knight)
0x000B50:
    if !(> self.siner2 50s) goto 0x000B7C
0x000B64:
    push 2s
    stog.asleep* = (int32 self.knight)
0x000B7C:
    if !(== self.type 30s) goto 0x000C0C
0x000B90:
    push self.y
    if !(< -1s (+ 0s:view_yview 260s)) goto 0x000BF4
0x000BB8:
    if !(< (int32 self.eye):anim 230s) goto 0x000BF0
0x000BD8:
    push 235s
    stog.anim* = (int32 self.eye)
0x000BF0:
    goto 0x000C0C
0x000BF4:
    push 20s
    stog.anim* = (int32 self.eye)
0x000C0C:
    if !(== self.type 31s) goto 0x000CEC
0x000C20:
    push self.y
    if !(< -1s (+ 0s:view_yview 200s)) goto 0x000CEC
0x000C48:
    if !(== (int32 self.aa):mega 0s) goto 0x000CEC
0x000C68:
    push 1s
    stog.mega* = (int32 self.aa)
    stog.alarm[(int32 self.aa)] = 0s
    stog.alarm[(int32 self.aa)] = 1s
    stog.alarm[(int32 self.aa)] = 2s
    push 1s
    stog.on* = (int32 self.aa)
0x000CEC:
    if !(== self.type 32s) goto 0x000D40
0x000D00:
    push self.y
    if !(< -1s (+ 0s:view_yview 200s)) goto 0x000D40
0x000D28:
    push 2s
    stog.stretchup* = (int32 self.aa)
0x000D40:
    if !(== self.type 33s) goto 0x000DA0
0x000D54:
    push self.y
    if !(< -1s (+ 0s:view_yview 200s)) goto 0x000DA0
0x000D7C:
    self.graze = 3s
    push 1s
    stog.fader* = (int32 self.aa)
0x000DA0:
    if !(== self.type 34s) goto 0x000E14
0x000DB4:
    push self.y
    if !(< -1s (+ 0s:view_yview 200s)) goto 0x000E14
0x000DDC:
    if !(== (int32 self.aa):melting 0s) goto 0x000E14
0x000DFC:
    push 1s
    stog.melting* = (int32 self.aa)
0x000E14:
    exit
