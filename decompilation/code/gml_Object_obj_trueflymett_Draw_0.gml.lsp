0x000000:
    if !(== self.mode 0s) goto 0x000204
0x000014:
    self.siner = (+ self.siner 1s)
    self.y = (+ self.y (cos[]:int32 (/ self.siner (double 3s))))
    call (draw_sprite[]:int32 self.y self.x (var 0s) (var 1696s))
    call (draw_sprite[]:int32 (- self.y 12s) (+ self.x 11s) (var 0s) (var 1717s))
    if !(== self.con 0s) goto 0x000110
0x0000D8:
    push -1s
    self.x = (+ 0s:view_xview 350s)
    self.hspeed = -6s
    self.con = 1s
0x000110:
    if !(== self.con 1s) goto 0x000178
0x000124:
    push self.x
    if !(< -1s (+ 0s:view_xview 280s)) goto 0x000178
0x00014C:
    self.hspeed = 0s
    self.con = 2s
    stog.alarm[4s] = 40s
0x000178:
    if !(== self.con 3s) goto 0x0001A4
0x00018C:
    self.con = 4s
    self.hspeed = 10s
0x0001A4:
    if !(== self.con 4s) goto 0x000204
0x0001B8:
    push self.x
    if !(> -1s (+ 0s:view_xview 360s)) goto 0x000204
0x0001E0:
    self.hspeed = 0s
    self.con = 5s
    self.setmode = 1s
0x000204:
    if !(== self.mode 1s) goto 0x000620
0x000218:
    self.modetime = (+ self.modetime (+ 1s (/ self.insanity 2.7d)))
    if !(> self.modetime 20s) goto 0x000274
0x000260:
    push (< self.modetime 170s)
    goto 0x000278
0x000274:
    push 0s
0x000278:
    if !pop goto 0x000304
0x00027C:
    push self.x
    if !(> -1s (+ 0s:view_xview 300s)) goto 0x0002C4
0x0002A4:
    self.hspeed = (- -5s (* self.insanity 2s))
0x0002C4:
    push self.x
    if !(< -1s 0s:view_xview) goto 0x000304
0x0002E4:
    self.hspeed = (+ 5s (* self.insanity 2s))
0x000304:
    if !(>= self.modetime 170s) goto 0x0003E8
0x000318:
    push self.x
    if !(<= -1s (+ 0s:view_xview 150s)) goto 0x00034C
0x000340:
    self.hspeed = -6s
0x00034C:
    push self.x
    if !(>= -1s (+ 0s:view_xview 150s)) goto 0x000380
0x000374:
    self.hspeed = 6s
0x000380:
    push self.x
    if !(> -1s (+ 0s:view_xview 350s)) goto 0x0003B4
0x0003A8:
    self.setmode = 2s
0x0003B4:
    push self.x
    if !(< -1s (- 0s:view_xview 40s)) goto 0x0003E8
0x0003DC:
    self.setmode = 2s
0x0003E8:
    self.y = (+ self.y (cos[]:int32 (/ self.siner (double 3s))))
    self.sx = (* (sin[]:int32 (/ self.siner 1.5d)) 2s)
    self.sy = (* (cos[]:int32 (/ self.siner 1.2d)) 3s)
    self.siner = (+ self.siner 1s)
    call (draw_sprite[]:int32 (+ (+ self.y self.sy) 5s) (+ (- self.x 30s) self.sx) (var 0s) (var 1699s))
    call (draw_sprite[]:int32 (- self.y 12s) (+ self.x 11s) (var 0s) (var 1717s))
    call (draw_sprite[]:int32 self.y self.x (var 0s) (var 1698s))
    self.eggtimer = (+ self.eggtimer 1s)
    if !(>= self.eggtimer (- 4s self.insanity)) goto 0x000598
0x000584:
    push (== 1185.eligible 1s)
    goto 0x00059C
0x000598:
    push 0s
0x00059C:
    if !pop goto 0x000620
0x0005A0:
    self.egg = (instance_create[]:int32 (var 1181s) (+ (+ (+ self.y self.sy) 5s) 22s) (+ (+ (+ (- self.x 30s) self.sx) 5s) (random[]:int32 (var 13s))))
    self.eggtimer = 0s
0x000620:
    if !(== self.mode 2s) goto 0x000948
0x000634:
    self.modetime = (+ self.modetime (+ 1s (/ self.insanity 2.7d)))
    if !(> self.modetime 20s) goto 0x000690
0x00067C:
    push (< self.modetime 170s)
    goto 0x000694
0x000690:
    push 0s
0x000694:
    if !pop goto 0x0006F8
0x000698:
    push self.x
    if !(> -1s (+ 0s:view_xview 300s)) goto 0x0006CC
0x0006C0:
    self.hspeed = -3s
0x0006CC:
    push self.x
    if !(< -1s 0s:view_xview) goto 0x0006F8
0x0006EC:
    self.hspeed = 3s
0x0006F8:
    if !(>= self.modetime 170s) goto 0x0007DC
0x00070C:
    push self.x
    if !(<= -1s (+ 0s:view_xview 150s)) goto 0x000740
0x000734:
    self.hspeed = -8s
0x000740:
    push self.x
    if !(>= -1s (+ 0s:view_xview 150s)) goto 0x000774
0x000768:
    self.hspeed = 8s
0x000774:
    push self.x
    if !(> -1s (+ 0s:view_xview 350s)) goto 0x0007A8
0x00079C:
    self.setmode = 3s
0x0007A8:
    push self.x
    if !(< -1s (- 0s:view_xview 40s)) goto 0x0007DC
0x0007D0:
    self.setmode = 3s
0x0007DC:
    self.y = (+ self.y (cos[]:int32 (/ self.siner (double 3s))))
    self.siner = (+ self.siner 1s)
    self.sugartimer = (+ self.sugartimer 1s)
    call (draw_sprite[]:int32 self.y self.x (var 0s) (var 1696s))
    call (draw_sprite[]:int32 self.y (- self.x 11s) (/ self.sugartimer (double 4s)) (var 1697s))
    call (draw_sprite[]:int32 (- self.y 12s) (+ self.x 11s) (var 0s) (var 1717s))
    if !(>= self.sugartimer (- 20s (* self.insanity 3s))) goto 0x000920
0x00090C:
    push (== 1185.eligible 1s)
    goto 0x000924
0x000920:
    push 0s
0x000924:
    if !pop goto 0x000948
0x000928:
    call (event_user[]:int32 (var 0s))
    self.sugartimer = 0s
0x000948:
    if !(== self.mode 3s) goto 0x000CBC
0x00095C:
    self.modetime = (+ self.modetime (+ 1s (/ self.insanity 2.7d)))
    if !(> self.modetime 20s) goto 0x0009B8
0x0009A4:
    push (< self.modetime 170s)
    goto 0x0009BC
0x0009B8:
    push 0s
0x0009BC:
    if !pop goto 0x000A38
0x0009C0:
    push self.x
    if !(> -1s (+ 0s:view_xview 300s)) goto 0x000A00
0x0009E8:
    self.hspeed = (- -6s self.insanity)
0x000A00:
    push self.x
    if !(< -1s 0s:view_xview) goto 0x000A38
0x000A20:
    self.hspeed = (+ 6s self.insanity)
0x000A38:
    if !(>= self.modetime 170s) goto 0x000B1C
0x000A4C:
    push self.x
    if !(<= -1s (+ 0s:view_xview 150s)) goto 0x000A80
0x000A74:
    self.hspeed = -8s
0x000A80:
    push self.x
    if !(>= -1s (+ 0s:view_xview 150s)) goto 0x000AB4
0x000AA8:
    self.hspeed = 8s
0x000AB4:
    push self.x
    if !(> -1s (+ 0s:view_xview 350s)) goto 0x000AE8
0x000ADC:
    self.setmode = 1s
0x000AE8:
    push self.x
    if !(< -1s (- 0s:view_xview 40s)) goto 0x000B1C
0x000B10:
    self.setmode = 1s
0x000B1C:
    self.siner = (+ self.siner 1s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (- 100s (* (sin[]:int32 (/ self.siner (double 2s))) 10s)) (var 1s) (var 1s) (+ self.y 31s) self.x (var 0s) (var 1692s))
    call (draw_sprite[]:int32 self.y self.x (var 0s) (var 1693s))
    call (draw_sprite[]:int32 (- self.y 13s) (+ self.x 2s) (var 0s) (var 1717s))
    self.milktimer = (+ self.milktimer 1s)
    if !(>= self.milktimer (- 10s (* self.insanity 2s))) goto 0x000C74
0x000C60:
    push (== 1185.eligible 1s)
    goto 0x000C78
0x000C74:
    push 0s
0x000C78:
    if !pop goto 0x000CBC
0x000C7C:
    call (instance_create[]:int32 (var 1179s) (+ self.y 37s) (- self.x 16s))
    self.milktimer = 0s
0x000CBC:
    if !(== self.mode 4s) goto 0x000D9C
0x000CD0:
    self.speed = 0s
    self.siner = (+ self.siner 1s)
    call (draw_sprite[]:int32 (+ self.y (cos[]:int32 (/ self.siner (double 3s)))) self.x (var 0s) (var 1696s))
    call (draw_sprite[]:int32 (+ (- self.y 12s) (cos[]:int32 (/ self.siner (double 3s)))) (+ self.x 11s) (var 0s) (var 1717s))
0x000D9C:
    if !(== self.setmode 1s) goto 0x000E70
0x000DB0:
    push -1s
    self.x = (+ 0s:view_xview 350s)
    push -1s
    self.y = (+ 0s:view_yview 20s)
    self.siner = 0s
    self.mode = 1s
    self.modetime = 0s
    self.modecon = 0s
    self.hspeed = -5s
    self.setmode = 0s
    if !(<= self.insanity 3s) goto 0x000E64
0x000E4C:
    self.insanity = (+ self.insanity 1s)
0x000E64:
    self.eggtimer = 0s
0x000E70:
    if !(== self.setmode 2s) goto 0x000F18
0x000E84:
    push -1s
    self.x = (+ 0s:view_xview 350s)
    push -1s
    self.y = (+ 0s:view_yview 20s)
    self.siner = 0s
    self.mode = 2s
    self.modetime = 0s
    self.modecon = 0s
    self.hspeed = -5s
    self.setmode = 0s
    self.sugartimer = 0s
0x000F18:
    if !(== self.setmode 3s) goto 0x000FC0
0x000F2C:
    push -1s
    self.x = (+ 0s:view_xview 420s)
    push -1s
    self.y = (+ 0s:view_yview 20s)
    self.siner = 0s
    self.mode = 3s
    self.modetime = 0s
    self.modecon = 0s
    self.hspeed = -5s
    self.setmode = 0s
    self.milktimer = 0s
0x000FC0:
    exit
