0x000000:
    self.inv_check = 0s
    self.inv_timer = (+ self.inv_timer 1s)
    if !(>= global.inv 45s) goto 0x00004C
0x000038:
    push (>= self.inv_timer 5s)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x00006C
0x000054:
    self.inv_check = 1s
    self.inv_timer = 0s
0x00006C:
    if !(>= global.inv 60s) goto 0x000094
0x000080:
    push (>= self.inv_timer 4s)
    goto 0x000098
0x000094:
    push 0s
0x000098:
    if !pop goto 0x0000B4
0x00009C:
    self.inv_check = 1s
    self.inv_timer = 0s
0x0000B4:
    if !(>= global.inv 75s) goto 0x0000DC
0x0000C8:
    push (>= self.inv_timer 3s)
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x0000FC
0x0000E4:
    self.inv_check = 1s
    self.inv_timer = 0s
0x0000FC:
    if !(>= self.lac 4s) goto 0x000138
0x000110:
    if !(<= global.hp 10s) goto 0x000138
0x000124:
    push (>= self.inv_timer 2s)
    goto 0x00013C
0x000138:
    push 0s
0x00013C:
    if !pop goto 0x000158
0x000140:
    self.inv_check = 1s
    self.inv_timer = 0s
0x000158:
    if !(== self.inv_check 0s) goto 0x000178
0x00016C:
    self.damageturn = 0s
0x000178:
    push -5s
    self.y = (- 2s:idealborder 130s)
    if !(== self.bounce 3s) goto 0x0001F0
0x0001AC:
    self.siner = (+ self.siner 1s)
    self.yoff = (* (sin[]:int32 (/ self.siner (double 18s))) 2s)
0x0001F0:
    if !(== self.bounce 2s) goto 0x000248
0x000204:
    self.siner = (+ self.siner 1s)
    self.yoff = (* (sin[]:int32 (/ self.siner (double 15s))) 4s)
0x000248:
    if !(== self.bounce 1s) goto 0x0002BC
0x00025C:
    self.siner = (+ self.siner 1s)
    self.yoff = (sin[]:int32 (/ self.siner (double 3s)))
    self.xoff = (cos[]:int32 (/ self.siner (double 6s)))
0x0002BC:
    if !(== self.bounce 0s) goto 0x0002F4
0x0002D0:
    self.siner = 0s
    self.yoff = 0s
    self.xoff = 0s
0x0002F4:
    if !(== self.deadtest 0s) goto 0x000D2C
0x000308:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 90s) self.x (var 0s) (var 675s))
    if !(== self.movearm 0s) goto 0x00040C
0x00037C:
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 42s) (/ self.yoff 1.5d)) (+ self.x self.xoff) -5s 20s:flag (var 677s))
0x00040C:
    if !(== self.movearm 1s) goto 0x000574
0x000420:
    if !(>= self.arm_i 11s) goto 0x000440
0x000434:
    self.arm_i = 11s
0x000440:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 42s) self.x (floor[]:int32 (/ self.arm_i (double 2s))) (var 681s))
    if !(== self.arm_i 2s) goto 0x0004D4
0x0004C8:
    self.headx = -4s
0x0004D4:
    if !(== self.arm_i 4s) goto 0x0004F4
0x0004E8:
    self.headx = -8s
0x0004F4:
    if !(== self.arm_i 6s) goto 0x000514
0x000508:
    self.headx = 10s
0x000514:
    if !(== self.arm_i 8s) goto 0x000534
0x000528:
    self.headx = 4s
0x000534:
    if !(< self.arm_i 11s) goto 0x000568
0x000548:
    self.arm_i = (+ self.arm_i self.aspeed)
    goto 0x000574
0x000568:
    self.arm_i = 11s
0x000574:
    if !(== self.movearm 2s) goto 0x0006FC
0x000588:
    if !(>= self.arm_i 11s) goto 0x0005A8
0x00059C:
    self.arm_i = 11s
0x0005A8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 42s) self.x (floor[]:int32 (/ self.arm_i (double 2s))) (var 683s))
    if !(== self.arm_i 0s) goto 0x00063C
0x000630:
    self.heady = 4s
0x00063C:
    if !(== self.arm_i 2s) goto 0x00065C
0x000650:
    self.heady = 10s
0x00065C:
    if !(== self.arm_i 4s) goto 0x00067C
0x000670:
    self.heady = 4s
0x00067C:
    if !(== self.arm_i 6s) goto 0x00069C
0x000690:
    self.heady = -4s
0x00069C:
    if !(== self.arm_i 8s) goto 0x0006BC
0x0006B0:
    self.heady = 0s
0x0006BC:
    if !(< self.arm_i 11s) goto 0x0006F0
0x0006D0:
    self.arm_i = (+ self.arm_i self.aspeed)
    goto 0x0006FC
0x0006F0:
    self.arm_i = 11s
0x0006FC:
    if !(== self.movearm 3s) goto 0x000864
0x000710:
    if !(>= self.arm_i 9s) goto 0x000730
0x000724:
    self.arm_i = 9s
0x000730:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 42s) self.x (floor[]:int32 (/ self.arm_i (double 2s))) (var 682s))
    if !(== self.arm_i 0s) goto 0x0007C4
0x0007B8:
    self.heady = 0s
0x0007C4:
    if !(== self.arm_i 2s) goto 0x0007E4
0x0007D8:
    self.heady = 0s
0x0007E4:
    if !(== self.arm_i 4s) goto 0x000804
0x0007F8:
    self.heady = 6s
0x000804:
    if !(== self.arm_i 6s) goto 0x000824
0x000818:
    self.heady = 10s
0x000824:
    if !(< self.arm_i 9s) goto 0x000858
0x000838:
    self.arm_i = (+ self.arm_i self.aspeed)
    goto 0x000864
0x000858:
    self.arm_i = 9s
0x000864:
    if !(== self.movearm 4s) goto 0x0009F4
0x000878:
    if !(>= self.arm_i 10s) goto 0x000898
0x00088C:
    self.arm_i = 10s
0x000898:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 42s) self.x (floor[]:int32 (- 5s (/ self.arm_i (double 2s)))) (var 681s))
    if !(>= self.arm_i 10s) goto 0x000934
0x000928:
    self.headx = 0s
0x000934:
    if !(== self.arm_i 8s) goto 0x000954
0x000948:
    self.headx = -4s
0x000954:
    if !(== self.arm_i 6s) goto 0x000974
0x000968:
    self.headx = -8s
0x000974:
    if !(== self.arm_i 4s) goto 0x000994
0x000988:
    self.headx = 10s
0x000994:
    if !(== self.arm_i 2s) goto 0x0009B4
0x0009A8:
    self.headx = 4s
0x0009B4:
    if !(< self.arm_i 10s) goto 0x0009E8
0x0009C8:
    self.arm_i = (+ self.arm_i self.aspeed)
    goto 0x0009F4
0x0009E8:
    self.arm_i = 10s
0x0009F4:
    if !(== self.facetype 0s) goto 0x000A90
0x000A08:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y self.yoff) self.heady) (+ (+ self.x self.xoff) self.headx) global.faceemotion (var 679s))
0x000A90:
    if !(== self.sweat 1s) goto 0x000B2C
0x000AA4:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y self.yoff) self.heady) (+ (+ self.x self.xoff) self.headx) (var 0s) (var 680s))
0x000B2C:
    if !(== self.sweat 2s) goto 0x000BC8
0x000B40:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y self.yoff) self.heady) (+ (+ self.x self.xoff) self.headx) (var 1s) (var 680s))
0x000BC8:
    if !(== self.sweat 3s) goto 0x000C64
0x000BDC:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y self.yoff) self.heady) (+ (+ self.x self.xoff) self.headx) (var 2s) (var 680s))
0x000C64:
    if !(== self.facetype 1s) goto 0x000D2C
0x000C78:
    self.f_i = (+ self.f_i 1s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y self.yoff) self.heady) (+ (+ self.x self.xoff) self.headx) (floor[]:int32 (/ self.f_i (double 2s))) (var 678s))
0x000D2C:
    if !(== self.deadtest 1s) goto 0x000EC0
0x000D40:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 100s) self.legy) (+ self.x self.legx) (var 0s) (var 676s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 62s) (/ self.yoff 1.5d)) (+ self.x self.xoff) -5s 20s:flag (var 677s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y self.yoff) 30s) (+ self.x self.xoff) global.faceemotion (var 679s))
0x000EC0:
    if !(== self.drawborder 1s) goto 0x000FAC
0x000ED4:
    call (draw_set_color[]:int32 (var 16777215))
    self.i = 0s
    if !(< self.i 5s) goto 0x000FAC
0x000F0C:
    push (var 1s)
    push -5s
    push (+ 3s:idealborder self.i)
    push -5s
    call (draw_rectangle[]:int32 (+ 1s:idealborder self.i) -5s (+ 2s:idealborder self.i) -5s (+ 0s:idealborder self.i))
    self.i = (+ self.i 1s)
    goto 0x000EF8
0x000FAC:
    if !(== self.fac 1s) goto 0x00109C
0x000FC0:
    self.intensity = 25s
    stog.idealborder[0s] = 240s
    stog.idealborder[1s] = 400s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 160s)
    self.bounce = 0s
    self.facetype = 1s
    self.movearm = 3s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
    pushenv 519s 0x001078
0x00106C:
    self.p_cut = 1s
0x001078:
    popenv 0x00106C
0x00107C:
    self.fac = 2s
    stog.alarm[7s] = 7s
0x00109C:
    if !(== self.fac 3s) goto 0x0010E4
0x0010B0:
    call (event_user[]:int32 (var 10s))
    self.fac = 4s
    stog.alarm[7s] = 14s
0x0010E4:
    if !(== self.fac 5s) goto 0x001320
0x0010F8:
    self.fac = 6s
    stog.alarm[7s] = 10s
    self.movearm = 2s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
    self.facetype = 0s
    self.bs = (instance_create[]:int32 (var 502s) (var 0s) (var 0s))
    push 0s
    stog.dir* = (int32 self.bs)
    push 55s
    stog.height* = (int32 self.bs)
    push 6s
    stog.warning* = (int32 self.bs)
    push 30s
    stog.retain* = (int32 self.bs)
    self.i = 0s
    if !(< self.i 20s) goto 0x001320
0x0011FC:
    call (scr_sbo[]:int32 (var 2s) (+ 40s (* self.i 2s)) (var 12s) (- 135s (* (sin[]:int32 (/ self.i (double 3s))) 28s)))
    push (* self.i 3s)
    stog.siner* = (int32 self.bone)
    call (scr_sbo[]:int32 (var 0s) (+ 40s (* self.i 2s)) (var 12s) (- 90s (* (sin[]:int32 (/ self.i (double 3s))) 28s)))
    push (* self.i 3s)
    stog.siner* = (int32 self.bone)
    self.i = (+ self.i 1s)
    goto 0x0011E8
0x001320:
    if !(== self.fac 7s) goto 0x001360
0x001334:
    self.intensity = 15s
    self.fac = 8s
    stog.alarm[7s] = 10s
0x001360:
    if !(== self.fac 9s) goto 0x001404
0x001374:
    self.movearm = 1s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
    self.fac = 9.1d
    stog.alarm[7s] = 8s
    [obj_heart].movement = 1s
    [obj_heart].speed = 0s
    [obj_heart].sprite_index = 674s
    call (snd_play[]:int32 (var 28s))
0x001404:
    if !(== self.fac 10.1d) goto 0x001458
0x001420:
    pushenv 519s 0x001434
0x001428:
    self.p_cut = 1s
0x001434:
    popenv 0x001428
0x001438:
    self.fac = 10s
    stog.alarm[7s] = 37s
0x001458:
    if !(== self.fac 11s) goto 0x0017F4
0x00146C:
    self.movearm = 0s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
    self.gb = (instance_create[]:int32 (var 498s) (var 0s) (var 0s))
    push 90s
    stog.idealrot* = (int32 self.gb)
    push -5s
    push (- 0s:idealborder 50s)
    stog.idealx* = (int32 self.gb)
    push -5s
    push (+ 2s:idealborder 20s)
    stog.idealy* = (int32 self.gb)
    push 2s
    stog.image_xscale* = (int32 self.gb)
    push 2s
    stog.image_yscale* = (int32 self.gb)
    self.gb = (instance_create[]:int32 (var 498s) (var 480s) (var 640s))
    push -90s
    stog.idealrot* = (int32 self.gb)
    push -5s
    push (+ 1s:idealborder 50s)
    stog.idealx* = (int32 self.gb)
    push -5s
    push (- 3s:idealborder 20s)
    stog.idealy* = (int32 self.gb)
    push 2s
    stog.image_xscale* = (int32 self.gb)
    push 2s
    stog.image_yscale* = (int32 self.gb)
    self.gb = (instance_create[]:int32 (var 498s) (var 0s) (var 0s))
    push 0s
    stog.idealrot* = (int32 self.gb)
    push -5s
    push (+ 0s:idealborder 20s)
    stog.idealx* = (int32 self.gb)
    push -5s
    push (- 2s:idealborder 60s)
    stog.idealy* = (int32 self.gb)
    push 2s
    stog.image_xscale* = (int32 self.gb)
    push 2s
    stog.image_yscale* = (int32 self.gb)
    self.gb = (instance_create[]:int32 (var 498s) (var 480s) (var 640s))
    push 180s
    stog.idealrot* = (int32 self.gb)
    push -5s
    push (- 1s:idealborder 20s)
    stog.idealx* = (int32 self.gb)
    push -5s
    push (+ 3s:idealborder 60s)
    stog.idealy* = (int32 self.gb)
    push 2s
    stog.image_xscale* = (int32 self.gb)
    push 2s
    stog.image_yscale* = (int32 self.gb)
    [obj_gasterblaster].pause = 10s
    [obj_gasterblaster].terminal = 8s
    self.fac = 12s
    stog.alarm[7s] = 25s
0x0017F4:
    if !(== self.fac 13s) goto 0x001B90
0x001808:
    self.movearm = 0s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
    self.gb = (instance_create[]:int32 (var 498s) (var 0s) (var 0s))
    push 45s
    stog.idealrot* = (int32 self.gb)
    push -5s
    push (- 0s:idealborder 50s)
    stog.idealx* = (int32 self.gb)
    push -5s
    push (- 2s:idealborder 50s)
    stog.idealy* = (int32 self.gb)
    push 2s
    stog.image_xscale* = (int32 self.gb)
    push 2s
    stog.image_yscale* = (int32 self.gb)
    self.gb = (instance_create[]:int32 (var 498s) (var 0s) (var 640s))
    push -45s
    stog.idealrot* = (int32 self.gb)
    push -5s
    push (+ 1s:idealborder 50s)
    stog.idealx* = (int32 self.gb)
    push -5s
    push (- 2s:idealborder 50s)
    stog.idealy* = (int32 self.gb)
    push 2s
    stog.image_xscale* = (int32 self.gb)
    push 2s
    stog.image_yscale* = (int32 self.gb)
    self.gb = (instance_create[]:int32 (var 498s) (var 480s) (var 0s))
    push 135s
    stog.idealrot* = (int32 self.gb)
    push -5s
    push (- 0s:idealborder 50s)
    stog.idealx* = (int32 self.gb)
    push -5s
    push (+ 3s:idealborder 50s)
    stog.idealy* = (int32 self.gb)
    push 2s
    stog.image_xscale* = (int32 self.gb)
    push 2s
    stog.image_yscale* = (int32 self.gb)
    self.gb = (instance_create[]:int32 (var 498s) (var 480s) (var 640s))
    push -135s
    stog.idealrot* = (int32 self.gb)
    push -5s
    push (+ 1s:idealborder 50s)
    stog.idealx* = (int32 self.gb)
    push -5s
    push (+ 3s:idealborder 50s)
    stog.idealy* = (int32 self.gb)
    push 2s
    stog.image_xscale* = (int32 self.gb)
    push 2s
    stog.image_yscale* = (int32 self.gb)
    [obj_gasterblaster].pause = 10s
    [obj_gasterblaster].terminal = 8s
    self.fac = 14s
    stog.alarm[7s] = 25s
0x001B90:
    if !(== self.fac 15s) goto 0x001F2C
0x001BA4:
    self.movearm = 0s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
    self.gb = (instance_create[]:int32 (var 498s) (var 0s) (var 0s))
    push 90s
    stog.idealrot* = (int32 self.gb)
    push -5s
    push (- 0s:idealborder 50s)
    stog.idealx* = (int32 self.gb)
    push -5s
    push (+ 2s:idealborder 20s)
    stog.idealy* = (int32 self.gb)
    push 2s
    stog.image_xscale* = (int32 self.gb)
    push 2s
    stog.image_yscale* = (int32 self.gb)
    self.gb = (instance_create[]:int32 (var 498s) (var 480s) (var 640s))
    push -90s
    stog.idealrot* = (int32 self.gb)
    push -5s
    push (+ 1s:idealborder 50s)
    stog.idealx* = (int32 self.gb)
    push -5s
    push (- 3s:idealborder 20s)
    stog.idealy* = (int32 self.gb)
    push 2s
    stog.image_xscale* = (int32 self.gb)
    push 2s
    stog.image_yscale* = (int32 self.gb)
    self.gb = (instance_create[]:int32 (var 498s) (var 0s) (var 0s))
    push 0s
    stog.idealrot* = (int32 self.gb)
    push -5s
    push (+ 0s:idealborder 20s)
    stog.idealx* = (int32 self.gb)
    push -5s
    push (- 2s:idealborder 60s)
    stog.idealy* = (int32 self.gb)
    push 2s
    stog.image_xscale* = (int32 self.gb)
    push 2s
    stog.image_yscale* = (int32 self.gb)
    self.gb = (instance_create[]:int32 (var 498s) (var 480s) (var 640s))
    push 180s
    stog.idealrot* = (int32 self.gb)
    push -5s
    push (- 1s:idealborder 20s)
    stog.idealx* = (int32 self.gb)
    push -5s
    push (+ 3s:idealborder 60s)
    stog.idealy* = (int32 self.gb)
    push 2s
    stog.image_xscale* = (int32 self.gb)
    push 2s
    stog.image_yscale* = (int32 self.gb)
    [obj_gasterblaster].pause = 10s
    [obj_gasterblaster].terminal = 8s
    self.fac = 16s
    stog.alarm[7s] = 20s
0x001F2C:
    if !(== self.fac 17s) goto 0x002150
0x001F40:
    self.gb = (instance_create[]:int32 (var 498s) (var 240s) (var 0s))
    push 90s
    stog.idealrot* = (int32 self.gb)
    push -5s
    push (- 0s:idealborder 100s)
    stog.idealx* = (int32 self.gb)
    push -5s
    push (+ 2s:idealborder 80s)
    stog.idealy* = (int32 self.gb)
    push 3s
    stog.image_xscale* = (int32 self.gb)
    push 3s
    stog.image_yscale* = (int32 self.gb)
    push 20s
    stog.pause* = (int32 self.gb)
    push 15s
    stog.terminal* = (int32 self.gb)
    self.gb = (instance_create[]:int32 (var 498s) (var 240s) (var 640s))
    push -90s
    stog.idealrot* = (int32 self.gb)
    push -5s
    push (+ 1s:idealborder 100s)
    stog.idealx* = (int32 self.gb)
    push -5s
    push (+ 2s:idealborder 80s)
    stog.idealy* = (int32 self.gb)
    push 3s
    stog.image_xscale* = (int32 self.gb)
    push 3s
    stog.image_yscale* = (int32 self.gb)
    push 20s
    stog.pause* = (int32 self.gb)
    push 15s
    stog.terminal* = (int32 self.gb)
    self.fac = 18s
    stog.alarm[7s] = 90s
0x002150:
    if !(== self.fac 19s) goto 0x0022FC
0x002164:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.intr = (ini_read_real[]:int32 (var 0s) (var "Intro") (var "Sans"))
    call (ini_write_real[]:int32 (+ self.intr 1s) (var "Intro") (var "Sans"))
    call (ini_close[]:int32 )
    global.faceemotion = 0s
    stog.flag[20s] = 0s
    global.msc = 0s
    global.typer = 109s
    stog.msg[0s] = "\\E1huh./"
    stog.msg[1s] = "\\M1always wondered why&people never use&their strongest&attack first./%%"
    if !(== self.intr 1s) goto 0x002298
0x002268:
    stog.msg[0s] = "\\E3anyway^1, as i was&saying^1, it's a&nice day out./"
    stog.msg[1s] = "\\M1why not relax and&take a load off?/%%"
0x002298:
    if !(>= self.intr 2s) goto 0x0022C4
0x0022AC:
    stog.msg[0s] = "here we go./%%"
0x0022C4:
    call (scr_blcon_x[]:int32 (- self.y 10s) (+ 519.x 120s))
    self.fac = 20s
0x0022FC:
    if !(== self.fac 20s) goto 0x00232C
0x002310:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002330
0x00232C:
    push 0s
0x002330:
    if !pop goto 0x0023BC
0x002334:
    global.faceemotion = 0s
    stog.flag[20s] = 0s
    self.bounce = 1s
    pushenv 757s 0x002374
0x002368:
    self.instaborder = 0s
0x002374:
    popenv 0x002368
0x002378:
    stog.msg[0s] = "* You feel like you're going to&  have a bad time."
    global.border = 0s
    self.fac = 21s
    stog.alarm[7s] = 5s
0x0023BC:
    if !(== self.fac 22s) goto 0x002444
0x0023D0:
    global.bmenuno = 0s
    pushenv 519s 0x0023F0
0x0023E4:
    self.normalfight = 1s
0x0023F0:
    popenv 0x0023E4
0x0023F4:
    call (caster_loop[]:int32 (var 1s) (var 0.9d) global.batmusic)
    global.mnfight = 3s
    global.myfight = 0s
    self.fac = -1s
0x002444:
    if !(== self.smasher 1s) goto 0x002DE4
0x002458:
    if !(== self.smashcon 0s) goto 0x0027C8
0x00246C:
    push -5s
    push 0s:idealborder
    push -5s
    [obj_heart].x = (+ 1s:idealborder (/ (floor[]:int32 (- -5s 0s:idealborder)) (double 2s)))
    push -5s
    push 2s:idealborder
    push -5s
    [obj_heart].y = (+ 3s:idealborder (/ (floor[]:int32 (- -5s 2s:idealborder)) (double 2s)))
    [obj_heart].speed = 0s
    [obj_heart].movement = 1s
    [obj_heart].sprite_index = 674s
    self.smashdir = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    if (<= 10s 0) goto 0x0025E0
0x002580:
    push 10s
    if !(== self.prevsmash self.smashdir) goto 0x0025C8
0x002598:
    self.smashdir = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
0x0025C8:
    if (bool (- pop 1)) goto 0x002580
0x0025E0:
    push (- pop 1)
    pop
    if !(== self.smashdir self.prevsmash) goto 0x002634
0x0025FC:
    self.smashdir = (+ self.smashdir 1s)
    if !(> self.smashdir 3s) goto 0x002634
0x002628:
    self.smashdir = 0s
0x002634:
    self.prevsmash = self.smashdir
    self.smashcon = 1s
    self.aspeed = 1s
    if !(== self.smashlv 2s) goto 0x00267C
0x002670:
    self.aspeed = 2s
0x00267C:
    if !(== self.smashdir 0s) goto 0x0026C0
0x002690:
    self.movearm = 3s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
0x0026C0:
    if !(== self.smashdir 1s) goto 0x002704
0x0026D4:
    self.movearm = 1s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
0x002704:
    if !(== self.smashdir 2s) goto 0x002748
0x002718:
    self.movearm = 2s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
0x002748:
    if !(== self.smashdir 3s) goto 0x00278C
0x00275C:
    self.movearm = 4s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
0x00278C:
    stog.alarm[8s] = 8s
    if !(== self.smashlv 2s) goto 0x0027C8
0x0027B4:
    stog.alarm[8s] = 4s
0x0027C8:
    if !(== self.smashcon 2s) goto 0x0028A0
0x0027DC:
    self.xtimer = 0s
    self.intensity = 16s
    if !(== self.smashdir 0s) goto 0x00281C
0x002808:
    call (event_user[]:int32 (var 10s))
0x00281C:
    if !(== self.smashdir 1s) goto 0x002844
0x002830:
    call (event_user[]:int32 (var 11s))
0x002844:
    if !(== self.smashdir 2s) goto 0x00286C
0x002858:
    call (event_user[]:int32 (var 12s))
0x00286C:
    if !(== self.smashdir 3s) goto 0x002894
0x002880:
    call (event_user[]:int32 (var 13s))
0x002894:
    self.smashcon = 3s
0x0028A0:
    if !(== self.smashcon 3s) goto 0x002AD8
0x0028B4:
    self.xtimer = (+ self.xtimer 1s)
    if !(< 743.speed self.intensity) goto 0x0028F8
0x0028E4:
    push (>= self.xtimer 5s)
    goto 0x0028FC
0x0028F8:
    push 0s
0x0028FC:
    if !pop goto 0x002AD8
0x002900:
    self.xtimer = 0s
    self.bs = (instance_create[]:int32 (var 502s) (var 0s) (var 0s))
    push 12s
    stog.warning* = (int32 self.bs)
    push 25s
    stog.height* = (int32 self.bs)
    push 4s
    stog.retain* = (int32 self.bs)
    push self.smashdir
    stog.dir* = (int32 self.bs)
    self.smashcon = 4s
    stog.alarm[8s] = 18s
    if !(== self.smashlv 1s) goto 0x0029E0
0x0029CC:
    stog.alarm[8s] = 12s
0x0029E0:
    if !(== self.smashlv 1s) goto 0x002A0C
0x0029F4:
    push 9s
    stog.warning* = (int32 self.bs)
0x002A0C:
    if !(== self.smashlv 1s) goto 0x002A38
0x002A20:
    push -2s
    stog.retain* = (int32 self.bs)
0x002A38:
    if !(== self.smashlv 2s) goto 0x002A60
0x002A4C:
    stog.alarm[8s] = 7s
0x002A60:
    if !(== self.smashlv 2s) goto 0x002A8C
0x002A74:
    push -7s
    stog.retain* = (int32 self.bs)
0x002A8C:
    if !(== self.smashlv 2s) goto 0x002AB8
0x002AA0:
    push 40s
    stog.height* = (int32 self.bs)
0x002AB8:
    if !(== self.smashlv 2s) goto 0x002AD8
0x002ACC:
    self.warning = 11s
0x002AD8:
    if !(== self.smashcon 5s) goto 0x002DE4
0x002AEC:
    if !(== self.smashlv 2s) goto 0x002B0C
0x002B00:
    self.aspeed = 2s
0x002B0C:
    self.smashdir = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.smashcon = 1s
    if !(== self.smashdir 0s) goto 0x002B8C
0x002B5C:
    self.movearm = 3s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
0x002B8C:
    if !(== self.smashdir 1s) goto 0x002BD0
0x002BA0:
    self.movearm = 1s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
0x002BD0:
    if !(== self.smashdir 2s) goto 0x002C14
0x002BE4:
    self.movearm = 2s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
0x002C14:
    if !(== self.smashdir 3s) goto 0x002C58
0x002C28:
    self.movearm = 4s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
0x002C58:
    self.smashcon = 1s
    self.smashamt = (+ self.smashamt 1s)
    stog.alarm[8s] = 8s
    if !(== self.smashlv 2s) goto 0x002CB8
0x002CA4:
    stog.alarm[8s] = 7s
0x002CB8:
    if !(> self.smashamt self.smashmax) goto 0x002DE4
0x002CD0:
    if !(~ (bool (instance_exists[]:int32 (var 510s)))) goto 0x002D10
0x002CEC:
    call (instance_create[]:int32 (var 510s) (var 0s) (var 0s))
0x002D10:
    self.smashcon = -1s
    self.smashamt = 0s
    self.smasher = 0s
    pushenv 743s 0x002D48
0x002D3C:
    self.movement = 1s
0x002D48:
    popenv 0x002D3C
0x002D4C:
    pushenv 743s 0x002D60
0x002D54:
    self.sprite_index = 34s
0x002D60:
    popenv 0x002D54
0x002D64:
    pushenv 743s 0x002D78
0x002D6C:
    self.speed = 0s
0x002D78:
    popenv 0x002D6C
0x002D7C:
    self.movearm = 0s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
    stog.alarm[8s] = -1s
    pushenv 519s 0x002DD4
0x002DC8:
    self.attacked = 0s
0x002DD4:
    popenv 0x002DC8
0x002DD8:
    global.mnfight = 3s
0x002DE4:
    if !(== self.lac 4s) goto 0x002EB4
0x002DF8:
    [obj_heart].speed = 0s
    stog.idealborder[0s] = 240s
    stog.idealborder[1s] = 400s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 160s)
    [obj_heart].movement = 1s
    [obj_heart].sprite_index = 674s
    self.smasher = 1s
    self.smashcon = 0s
    self.smashamt = 0s
    self.smashlv = 2s
    self.xtimer = 0s
    self.lac = 5s
0x002EB4:
    if !(== self.lac 5s) goto 0x00327C
0x002EC8:
    if !(== self.smashamt 3s) goto 0x002F04
0x002EDC:
    if !(== self.smashcon 3s) goto 0x002F04
0x002EF0:
    push (== self.xtimer 3s)
    goto 0x002F08
0x002F04:
    push 0s
0x002F08:
    if !pop goto 0x0031DC
0x002F0C:
    push (var 500s)
    push -5s
    self.b1 = (instance_create[]:int32 (- 2s:idealborder 300s) -5s (- 0s:idealborder 110s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push 11s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    push -5s
    self.b1 = (instance_create[]:int32 (+ 3s:idealborder 300s) -5s (- 1s:idealborder 70s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push -11s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    push -5s
    self.b1 = (instance_create[]:int32 (- 2s:idealborder 525s) -5s (- 0s:idealborder 110s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push 11s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    push -5s
    self.b1 = (instance_create[]:int32 (+ 3s:idealborder 525s) -5s (- 1s:idealborder 70s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push -11s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    push -5s
    self.b1 = (instance_create[]:int32 (- 2s:idealborder 750s) -5s (- 0s:idealborder 110s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push 11s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    push -5s
    self.b1 = (instance_create[]:int32 (+ 3s:idealborder 750s) -5s (- 1s:idealborder 70s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push -11s
    stog.vspeed* = (int32 self.b1)
0x0031DC:
    if !(== self.smashamt 4s) goto 0x003218
0x0031F0:
    if !(== self.smashcon 3s) goto 0x003218
0x003204:
    push (>= self.xtimer 0s)
    goto 0x00321C
0x003218:
    push 0s
0x00321C:
    if !pop goto 0x00327C
0x003220:
    self.smashcon = -1s
    self.smasher = -1s
    [obj_heart].speed = 0s
    self.lac = 6s
    stog.alarm[5s] = 60s
    [obj_heart].movement = 1s
    [obj_heart].sprite_index = 674s
0x00327C:
    if !(== self.lac 7s) goto 0x0032F8
0x003290:
    self.intensity = 25s
    self.aspeed = 2s
    self.movearm = 4s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
    self.lac = 8s
    stog.alarm[5s] = 6s
0x0032F8:
    if !(== self.lac 9s) goto 0x003340
0x00330C:
    call (event_user[]:int32 (var 13s))
    self.lac = 10s
    stog.alarm[5s] = 8s
0x003340:
    if !(== self.lac 11s) goto 0x0033A4
0x003354:
    self.movearm = 1s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
    self.lac = 12s
    stog.alarm[5s] = 6s
0x0033A4:
    if !(== self.lac 13s) goto 0x0033F8
0x0033B8:
    self.intensity = 15s
    call (event_user[]:int32 (var 11s))
    self.lac = 14s
    stog.alarm[5s] = 10s
0x0033F8:
    if !(== self.lac 14s) goto 0x00343C
0x00340C:
    [obj_heart].jumpstage = 0s
    push -5s
    stog.idealborder[(+ 1s:idealborder 15s)] = 1s
0x00343C:
    if !(== self.lac 15s) goto 0x003470
0x003450:
    self.lac = 16s
    stog.alarm[5s] = 40s
0x003470:
    if !(== self.lac 16s) goto 0x00356C
0x003484:
    push -5s
    stog.idealborder[(- 0s:idealborder 30s)] = 0s
    push -5s
    stog.idealborder[(+ 1s:idealborder 10s)] = 1s
    self.repeater = 1s
    self.rp_x = 0s
    [obj_heart].speed = 0s
    if !(> 743.x 40s) goto 0x00351C
0x003504:
    [obj_heart].x = (- 743.x 10s)
0x00351C:
    push -5s
    stog.idealborder[(+ 2s:idealborder 1s)] = 2s
    push -5s
    stog.idealborder[(- 3s:idealborder 0.5d)] = 3s
0x00356C:
    if !(== self.lac 17s) goto 0x003734
0x003580:
    self.i = 0s
    if !(< self.i 45s) goto 0x003714
0x0035A0:
    call (scr_sbo[]:int32 (var 2s) (+ 10s (* self.i 2s)) (var -30s) (- 70s (* (sin[]:int32 (/ self.i (double 2s))) 25s)))
    push (* self.i 3s)
    stog.siner* = (int32 self.bone)
    stog.x* = (+ (int32 self.bone):x 15s)
    call (scr_sbo[]:int32 (var 0s) (+ 10s (* self.i 2s)) (var -30s) (- 30s (* (sin[]:int32 (/ self.i (double 2s))) 25s)))
    push (* self.i 3s)
    stog.siner* = (int32 self.bone)
    stog.x* = (+ (int32 self.bone):x 15s)
    self.i = (+ self.i 1s)
    goto 0x00358C
0x003714:
    push (int32 self.bone)
    push (int32 self.bone)
    self.lac = 18s
    stog.alarm[5s] = 100s
0x003734:
    if !(== self.lac 19s) goto 0x004148
0x003748:
    call (scr_sbo[]:int32 (var 2s) (var 10s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 15s)
    call (scr_sbo[]:int32 (var 2s) (var 10s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 30s)
    call (scr_sbo[]:int32 (var 2s) (var 10s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 45s)
    call (scr_sbo[]:int32 (var 0s) (var 21s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 15s)
    call (scr_sbo[]:int32 (var 0s) (var 21s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 30s)
    call (scr_sbo[]:int32 (var 0s) (var 21s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 45s)
    call (scr_sbo[]:int32 (var 2s) (var 31s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 15s)
    call (scr_sbo[]:int32 (var 2s) (var 31s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 30s)
    call (scr_sbo[]:int32 (var 2s) (var 31s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 45s)
    call (scr_sbo[]:int32 (var 0s) (var 41s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 15s)
    call (scr_sbo[]:int32 (var 0s) (var 41s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 30s)
    call (scr_sbo[]:int32 (var 0s) (var 41s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 45s)
    call (scr_sbo[]:int32 (var 2s) (var 50s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 15s)
    call (scr_sbo[]:int32 (var 2s) (var 50s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 30s)
    call (scr_sbo[]:int32 (var 2s) (var 50s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 45s)
    call (scr_sbo[]:int32 (var 0s) (var 59s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 15s)
    call (scr_sbo[]:int32 (var 0s) (var 59s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 30s)
    call (scr_sbo[]:int32 (var 0s) (var 59s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 45s)
    call (scr_sbo[]:int32 (var 2s) (var 67s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 15s)
    call (scr_sbo[]:int32 (var 2s) (var 67s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 30s)
    call (scr_sbo[]:int32 (var 2s) (var 67s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 45s)
    call (scr_sbo[]:int32 (var 0s) (var 78s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 15s)
    call (scr_sbo[]:int32 (var 0s) (var 78s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 30s)
    call (scr_sbo[]:int32 (var 0s) (var 78s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 45s)
    call (scr_sbo[]:int32 (var 2s) (var 87s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 15s)
    call (scr_sbo[]:int32 (var 2s) (var 87s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 30s)
    call (scr_sbo[]:int32 (var 2s) (var 87s) (var -30s) (var 50s))
    stog.x* = (+ (int32 self.bone):x 45s)
    self.i = 0s
    if !(< self.i 24s) goto 0x004128
0x004044:
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    push (int32 self.bone)
    call (scr_sbo[]:int32 (var 2s) (+ 100s self.i) (var -30s) (- 90s self.i))
    stog.x* = (+ (int32 self.bone):x 15s)
    call (scr_sbo[]:int32 (var 0s) (+ 100s self.i) (var -30s) (+ 10s self.i))
    stog.x* = (+ (int32 self.bone):x 15s)
    self.i = (+ self.i 1s)
    goto 0x004030
0x004128:
    push (int32 self.bone)
    push (int32 self.bone)
    self.lac = 20s
    stog.alarm[5s] = 134s
0x004148:
    if !(== self.lac 21s) goto 0x004188
0x00415C:
    self.lac = 23s
    stog.idealborder[1s] = 640s
    [obj_heart].hspeed = 11s
0x004188:
    if !(== self.lac 23s) goto 0x00423C
0x00419C:
    push -5s
    if !(> 1s:idealborder 420s) goto 0x0041DC
0x0041B8:
    push -5s
    stog.idealborder[(- 1s:idealborder 18s)] = 1s
0x0041DC:
    if !(<= 743.hspeed 0s) goto 0x00423C
0x0041F0:
    global.faceemotion = 0s
    stog.flag[20s] = 0s
    self.repeater = 0s
    self.lac = 24s
    stog.alarm[5s] = 5s
0x00423C:
    if !(== self.lac 25s) goto 0x004334
0x004250:
    self.bs = (instance_create[]:int32 (var 502s) (var 0s) (var 0s))
    push 15s
    stog.retain* = (int32 self.bs)
    push 12s
    stog.warning* = (int32 self.bs)
    push 50s
    stog.height* = (int32 self.bs)
    push 1s
    stog.dir* = (int32 self.bs)
    self.aspeed = 1s
    self.movearm = 4s
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
    self.lac = 26s
    stog.alarm[5s] = 28s
0x004334:
    if !(== self.lac 27s) goto 0x0043AC
0x004348:
    pushenv 743s 0x00435C
0x004350:
    self.speed = 0s
0x00435C:
    popenv 0x004350
0x004360:
    self.sh = (instance_create[]:int32 (var 511s) (var 0s) (var 0s))
    push 3s
    stog.level* = (int32 self.sh)
    self.lac = 28s
0x0043AC:
    if !(== self.repeater 1s) goto 0x0044A8
0x0043C0:
    self.movearm = 0s
    self.rp_x = (+ self.rp_x 0.05d)
    self.x = (- self.x (floor[]:int32 (+ 30s self.rp_x)))
    if !(< self.x -100s) goto 0x0044A8
0x00442C:
    global.faceemotion = (choose[]:int32 (var 5s) (var 4s) (var 3s) (var 1s) (var 0s))
    stog.flag[20s] = (choose[]:int32 (var 1s) (var 0s) (var 0s) (var 0s))
    self.x = 740s
0x0044A8:
    if !(== self.lac 50s) goto 0x00451C
0x0044BC:
    [obj_heart].speed = 0s
    [obj_heart].movement = 1s
    [obj_heart].sprite_index = 674s
    self.gt = 0s
    self.gin = 1s
    self.lac = 51s
    self.o_o = 0s
    self.gnum = 0s
0x00451C:
    if !(== self.lac 51s) goto 0x0049B4
0x004530:
    if !(== self.o_o 1s) goto 0x004908
0x004544:
    self.disx = (lengthdir_x[]:int32 (* self.gt 10s) (var 150s))
    self.disy = (lengthdir_y[]:int32 (* self.gt 10s) (var 150s))
    stog.gb[(int32 self.gnum)] = (instance_create[]:int32 (var 498s) (var 0s) (var 0s))
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.gnum):gb)) goto 0x004888
0x0045F4:
    push (+ -90s (* self.gt 10s))
    push -1s
    stog.idealrot* = (int32 (int32 self.gnum):gb)
    push self.disx
    push (+ -5s 0s:idealborder)
    push -5s
    push (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s)))
    push -1s
    stog.idealx* = (int32 (int32 self.gnum):gb)
    push self.disy
    push (+ -5s 2s:idealborder)
    push -5s
    push (+ 3s:idealborder (/ (- -5s 2s:idealborder) (double 2s)))
    push -1s
    stog.idealy* = (int32 (int32 self.gnum):gb)
    push (* self.disx 3s)
    push (+ -5s 0s:idealborder)
    push -5s
    push (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s)))
    push -1s
    stog.x* = (int32 (int32 self.gnum):gb)
    push (* self.disy 3s)
    push (+ -5s 2s:idealborder)
    push -5s
    push (+ 3s:idealborder (/ (- -5s 2s:idealborder) (double 2s)))
    push -1s
    stog.y* = (int32 (int32 self.gnum):gb)
    push 0s
    push -1s
    stog.terminal* = (int32 (int32 self.gnum):gb)
    push 15s
    push -1s
    stog.pause* = (int32 (int32 self.gnum):gb)
    push 2s
    push -1s
    stog.image_yscale* = (int32 (int32 self.gnum):gb)
0x004888:
    self.gt = (+ self.gt self.gin)
    if !(< self.gin 1.7d) goto 0x0048E0
0x0048C0:
    self.gin = (+ self.gin 0.015d)
0x0048E0:
    self.gnum = (+ self.gnum 1s)
    self.o_o = 0s
    goto 0x004914
0x004908:
    self.o_o = 1s
0x004914:
    if !(>= self.gt 190s) goto 0x0049B4
0x004928:
    pushenv 743s 0x00493C
0x004930:
    self.slam_pain = 1s
0x00493C:
    popenv 0x004930
0x004940:
    self.pdd = -1s
    self.bounce = 0s
    self.intensity = 30s
    self.aspeed = 2s
    self.lc_t = 0s
    self.lc_c = 0s
    self.lc_a = 0s
    self.lac = 52s
    stog.alarm[5s] = 30s
0x0049B4:
    if !(== self.lac 53s) goto 0x00520C
0x0049C8:
    if !(== self.lc_t 0s) goto 0x004B08
0x0049DC:
    self.dd = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s))
    if (<= 8s 0) goto 0x004A84
0x004A24:
    push 8s
    if !(== self.dd self.pdd) goto 0x004A6C
0x004A3C:
    self.dd = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s))
0x004A6C:
    if (bool (- pop 1)) goto 0x004A24
0x004A84:
    push (- pop 1)
    pop
    if !(== self.lc_c 0s) goto 0x004AB4
0x004A9C:
    self.dd = 1s
    self.facetype = 1s
0x004AB4:
    if !(== self.lc_c 18s) goto 0x004AD4
0x004AC8:
    self.dd = 2s
0x004AD4:
    self.movearm = self.dd
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
0x004B08:
    if !(== self.lc_t (/ (double 8s) self.aspeed)) goto 0x004C0C
0x004B2C:
    if !(== self.lc_c 18s) goto 0x004B4C
0x004B40:
    self.lc_a = 21s
0x004B4C:
    if !(== self.lc_c 17s) goto 0x004B6C
0x004B60:
    self.lc_a = 12s
0x004B6C:
    if !(== self.dd 1s) goto 0x004B94
0x004B80:
    call (event_user[]:int32 (var 11s))
0x004B94:
    if !(== self.dd 3s) goto 0x004BBC
0x004BA8:
    call (event_user[]:int32 (var 10s))
0x004BBC:
    if !(== self.dd 2s) goto 0x004BE4
0x004BD0:
    call (event_user[]:int32 (var 12s))
0x004BE4:
    if !(== self.dd 4s) goto 0x004C0C
0x004BF8:
    call (event_user[]:int32 (var 13s))
0x004C0C:
    if !(== self.lc_t (+ (+ (* self.lc_a 2s) (/ (double 8s) self.aspeed)) 4s)) goto 0x004D74
0x004C4C:
    if !(== self.lc_c 18s) goto 0x004C6C
0x004C60:
    self.intensity = 2s
0x004C6C:
    if !(== self.dd 3s) goto 0x004C90
0x004C80:
    self.dd = 2s
    goto 0x004CF8
0x004C90:
    if !(== self.dd 1s) goto 0x004CB4
0x004CA4:
    self.dd = 4s
    goto 0x004CF8
0x004CB4:
    if !(== self.dd 4s) goto 0x004CD8
0x004CC8:
    self.dd = 1s
    goto 0x004CF8
0x004CD8:
    if !(== self.dd 2s) goto 0x004CF8
0x004CEC:
    self.dd = 3s
0x004CF8:
    self.pdd = self.dd
    if !(== self.lc_c 18s) goto 0x004D40
0x004D1C:
    self.dd = 3s
    self.sweat = 3s
    global.faceemotion = 9s
0x004D40:
    self.movearm = self.dd
    self.arm_i = 0s
    self.heady = 0s
    self.headx = 0s
0x004D74:
    if !(== self.lc_t (+ (+ (* self.lc_a 2s) (* (/ (double 8s) self.aspeed) 2s)) 4s)) goto 0x004E7C
0x004DBC:
    if !(== self.dd 1s) goto 0x004DE4
0x004DD0:
    call (event_user[]:int32 (var 11s))
0x004DE4:
    if !(== self.dd 3s) goto 0x004E0C
0x004DF8:
    call (event_user[]:int32 (var 10s))
0x004E0C:
    if !(== self.dd 2s) goto 0x004E34
0x004E20:
    call (event_user[]:int32 (var 12s))
0x004E34:
    if !(== self.dd 4s) goto 0x004E5C
0x004E48:
    call (event_user[]:int32 (var 13s))
0x004E5C:
    if !(== self.lc_c 18s) goto 0x004E7C
0x004E70:
    self.lc_a = 21s
0x004E7C:
    self.lc_t = (+ self.lc_t 1s)
    if !(== self.lc_t (+ (+ (* self.lc_a 4s) (* (/ (double 8s) self.aspeed) 2s)) 7s)) goto 0x00520C
0x004EDC:
    self.lc_t = 0s
    self.lc_c = (+ self.lc_c 1s)
    if !(== self.lc_c 11s) goto 0x004F50
0x004F14:
    self.lc_a = 1s
    call (caster_set_volume[]:int32 (var 0.8d) global.batmusic)
    self.intensity = 20s
0x004F50:
    if !(== self.lc_c 12s) goto 0x004F7C
0x004F64:
    self.lc_a = 2s
    self.intensity = 20s
0x004F7C:
    if !(== self.lc_c 13s) goto 0x004FD8
0x004F90:
    self.lc_a = 0s
    self.aspeed = 1s
    self.intensity = 16s
    self.sweat = 1s
    self.facetype = 0s
    global.faceemotion = 0s
0x004FD8:
    if !(== self.lc_c 14s) goto 0x005028
0x004FEC:
    self.lc_a = 2s
    call (caster_set_volume[]:int32 (var 0.7d) global.batmusic)
    self.intensity = 14s
0x005028:
    if !(== self.lc_c 15s) goto 0x005078
0x00503C:
    self.lc_a = 4s
    call (caster_set_volume[]:int32 (var 0.5d) global.batmusic)
    self.intensity = 12s
0x005078:
    if !(== self.lc_c 16s) goto 0x0050C8
0x00508C:
    self.lc_a = 6s
    call (caster_set_volume[]:int32 (var 0.25d) global.batmusic)
    self.intensity = 12s
0x0050C8:
    if !(== self.lc_c 17s) goto 0x005144
0x0050DC:
    self.lc_a = 8s
    call (caster_set_volume[]:int32 (var 0.15d) global.batmusic)
    self.aspeed = 0.5d
    self.intensity = 11s
    self.sweat = 2s
    global.faceemotion = 2s
0x005144:
    if !(== self.lc_c 18s) goto 0x005194
0x005158:
    self.lc_a = 15s
    call (caster_set_volume[]:int32 (var 0.07d) global.batmusic)
    self.intensity = 8s
0x005194:
    if !(== self.lc_c 19s) goto 0x00520C
0x0051A8:
    self.lac = 60s
    call (caster_set_volume[]:int32 (var 0s) global.batmusic)
    self.movearm = 0s
    self.headx = 0s
    self.heady = 0s
    self.bounce = 2s
    self.test_timer_on = 0s
0x00520C:
    if !(== self.lac 60s) goto 0x005240
0x005220:
    self.lac = 61s
    stog.alarm[5s] = 80s
0x005240:
    if !(== self.lac 62s) goto 0x005378
0x005254:
    self.sleep_c = 9s
    [obj_heart].movement = 1s
    [obj_heart].speed = 0s
    [obj_heart].sprite_index = 34s
    self.sweat = 3s
    global.faceemotion = 9s
    stog.flag[20s] = 0s
    global.msc = 0s
    global.typer = 109s
    stog.msg[0s] = "huff..^1. puff.../"
    stog.msg[1s] = "all right^1.&that's it./"
    stog.msg[2s] = "\\Xi\\M1t's time for my\\R &special attack\\X./"
    stog.msg[3s] = "\\E3are you ready?/"
    stog.msg[4s] = "\\E4here goes nothing./%%"
    call (scr_blcon_x[]:int32 (- self.y 10s) (+ 519.x 120s))
    self.lac = 63s
0x005378:
    if !(== self.lac 63s) goto 0x0053A8
0x00538C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0053AC
0x0053A8:
    push 0s
0x0053AC:
    if !pop goto 0x0053E4
0x0053B0:
    stog.flag[20s] = 0s
    self.lac = 64s
    stog.alarm[5s] = 300s
0x0053E4:
    if !(== self.lac 65s) goto 0x005598
0x0053F8:
    global.msc = 0s
    global.typer = 109s
    stog.msg[0s] = "\\E1yep./"
    stog.msg[1s] = "\\E1that's right./"
    stog.msg[2s] = "\\E3it's literally&nothing./"
    stog.msg[3s] = "\\E1and it's not gonna&be anything^1,&either./"
    stog.msg[4s] = "\\E4heh heh heh..^1.&ya get it?/"
    stog.msg[5s] = "\\E1i know i can't&beat you./"
    stog.msg[6s] = "\\E4one of your turns.../"
    stog.msg[7s] = "\\E9you're just gonna&kill me./"
    stog.msg[8s] = "\\E1so^1, uh./"
    stog.msg[9s] = "\\E4i've decided.../"
    stog.msg[10s] = "it's not gonna BE&your turn^1.&ever./"
    stog.msg[11s] = "\\E3i'm just gonna&keep having MY&turn until you&give up./"
    stog.msg[12s] = "\\E5even if it means&we have to stand&here until the&end of time./"
    stog.msg[13s] = "\\E1capiche?/%%"
    call (scr_blcon_x[]:int32 (- self.y 10s) (+ 519.x 120s))
    self.lac = 66s
0x005598:
    if !(== self.lac 66s) goto 0x0055C8
0x0055AC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0055CC
0x0055C8:
    push 0s
0x0055CC:
    if !pop goto 0x0055FC
0x0055D0:
    global.faceemotion = 0s
    self.lac = 67s
    stog.alarm[5s] = 300s
0x0055FC:
    if !(== self.lac 68s) goto 0x0056A8
0x005610:
    global.msc = 0s
    global.typer = 109s
    stog.msg[0s] = "\\E9you'll get bored&here./"
    stog.msg[1s] = "\\E1if you haven't&gotten bored&already^1, i mean./"
    stog.msg[2s] = "\\E5and then^1, you'll&finally quit./%%"
    call (scr_blcon_x[]:int32 (- self.y 10s) (+ 519.x 120s))
    self.lac = 69s
0x0056A8:
    if !(== self.lac 69s) goto 0x0056D8
0x0056BC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0056DC
0x0056D8:
    push 0s
0x0056DC:
    if !pop goto 0x00570C
0x0056E0:
    global.faceemotion = 0s
    self.lac = 70s
    stog.alarm[5s] = 300s
0x00570C:
    if !(== self.lac 71s) goto 0x005860
0x005720:
    global.msc = 0s
    global.typer = 109s
    stog.msg[0s] = "\\E5i know your type./"
    stog.msg[1s] = "\\E1you're^1, uh^1, very&determined^1, aren't&you?/"
    stog.msg[2s] = "\\E4you'll never give&up^1, even if&there's^1, uh.../"
    stog.msg[3s] = "\\E3absolutely NO&benefit to&persevering&whatsoever./"
    stog.msg[4s] = "\\E1if i can make&that clear./"
    stog.msg[5s] = "\\E4no matter what^1,&you'll just keep&going./"
    stog.msg[6s] = "\\E9not out of any&desire for good&or evil.../"
    stog.msg[7s] = "\\E3but just because&you think you&can./"
    stog.msg[8s] = "\\E1and because you&\"can\".../"
    stog.msg[9s] = "\\E9... you \"have to.\"/%%"
    call (scr_blcon_x[]:int32 (- self.y 10s) (+ 519.x 120s))
    self.lac = 72s
0x005860:
    if !(== self.lac 72s) goto 0x005890
0x005874:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x005894
0x005890:
    push 0s
0x005894:
    if !pop goto 0x0058C4
0x005898:
    global.faceemotion = 0s
    self.lac = 73s
    stog.alarm[5s] = 300s
0x0058C4:
    if !(== self.lac 74s) goto 0x0059B8
0x0058D8:
    global.msc = 0s
    global.typer = 109s
    stog.msg[0s] = "\\E9but now^1, you've&reached the end./"
    stog.msg[1s] = "\\E4there is nothing&left for you now./"
    stog.msg[2s] = "\\E1so^1, uh^1, in my&personal opinion.../"
    stog.msg[3s] = "\\E3the most&\"determined\"&thing you can&do here?/"
    stog.msg[4s] = "\\E1is to^1, uh^1,&completely give&up./"
    stog.msg[5s] = "\\E3and..^1. (yawn)&do literally&anything else./%%"
    call (scr_blcon_x[]:int32 (- self.y 10s) (+ 519.x 120s))
    self.lac = 75s
0x0059B8:
    if !(== self.lac 75s) goto 0x0059E8
0x0059CC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0059EC
0x0059E8:
    push 0s
0x0059EC:
    if !pop goto 0x005A08
0x0059F0:
    global.faceemotion = 0s
    self.lac = -1s
0x005A08:
    if !(== self.lac 999s) goto 0x005C0C
0x005A1C:
    [obj_heart].speed = 0s
    self.lac = 6s
    [obj_heart].movement = 1s
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (- 2s:idealborder 120s) (var -40s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push 7s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    self.b1 = (instance_create[]:int32 -5s (- 3s:idealborder 80s) (var 720s))
    push 660s
    stog.sprite_index* = (int32 self.b1)
    push -8s
    stog.hspeed* = (int32 self.b1)
    push (var 500s)
    push -5s
    self.b1 = (instance_create[]:int32 (- 2s:idealborder 150s) -5s (- 0s:idealborder 110s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push 6s
    stog.vspeed* = (int32 self.b1)
    push (var 500s)
    push -5s
    self.b1 = (instance_create[]:int32 (+ 3s:idealborder 150s) -5s (- 1s:idealborder 70s))
    push 667s
    stog.sprite_index* = (int32 self.b1)
    push -6s
    stog.vspeed* = (int32 self.b1)
    self.lac = 10s
0x005C0C:
    if !(== self.test_timer_on 1s) goto 0x005C38
0x005C20:
    self.test_timer = (+ self.test_timer 1s)
0x005C38:
    if !(== self.mk_c 1s) goto 0x005D2C
0x005C4C:
    self.mk_c_timer = (+ self.mk_c_timer 1s)
    if !(>= self.mk_c_timer 15s) goto 0x005D2C
0x005C78:
    stog.flag[20s] = 1s
    global.faceemotion = 3s
    self.mk_c = 2s
    self.bs = (instance_create[]:int32 (var 502s) (var 0s) (var 0s))
    push 300s
    stog.retain* = (int32 self.bs)
    push 100s
    stog.height* = (int32 self.bs)
    push 0s
    stog.dir* = (int32 self.bs)
    push 0s
    stog.warning* = (int32 self.bs)
0x005D2C:
    if !(> global.damagetimer 0s) goto 0x005D54
0x005D40:
    push (== self.dodge 0s)
    goto 0x005D58
0x005D54:
    push 0s
0x005D58:
    if !pop goto 0x005D68
0x005D5C:
    self.dodge = 1s
0x005D68:
    if !(== self.dodge 1s) goto 0x005DC0
0x005D7C:
    self.timerbonus = global.damagetimer
    self.dg_t = 0s
    self.dg_x = self.x
    self.hspeed = -12s
    self.dodge = 2s
0x005DC0:
    if !(== self.dodge 2s) goto 0x005F04
0x005DD4:
    if !(< self.x (- self.dg_x 60s)) goto 0x005E08
0x005DF4:
    push (< self.dg_t 20s)
    goto 0x005E0C
0x005E08:
    push 0s
0x005E0C:
    if !pop goto 0x005E4C
0x005E10:
    if !(< self.hspeed 0s) goto 0x005E40
0x005E24:
    self.hspeed = (+ self.hspeed 2s)
    goto 0x005E4C
0x005E40:
    self.hspeed = 0s
0x005E4C:
    self.dg_t = (+ self.dg_t 1s)
    if !(>= self.dg_t (+ 20s self.timerbonus)) goto 0x005F04
0x005E84:
    if !(< self.hspeed 12s) goto 0x005EB0
0x005E98:
    self.hspeed = (+ self.hspeed 2s)
0x005EB0:
    if !(>= self.x (- self.dg_x 13s)) goto 0x005F04
0x005ED0:
    self.hspeed = 0s
    self.x = self.dg_x
    self.dodge = 0s
    global.damagetimer = -1s
0x005F04:
    if !(== self.death_c 1s) goto 0x006020
0x005F18:
    call (snd_play[]:int32 (var 44s))
    global.faceemotion = 0s
    self.asleep = 0s
    self.sweat = 0s
    self.bounce = 0s
    self.dg_t = 0s
    self.dg_x = self.x
    self.st = (instance_create[]:int32 (var 509s) (- self.y 30s) self.x)
    push 1.5d
    stog.image_xscale* = (int32 self.st)
    push 1.5d
    stog.image_yscale* = (int32 self.st)
    push 0.334d
    stog.image_speed* = (int32 self.st)
    self.hspeed = -12s
    self.death_c = 2s
0x006020:
    if !(== self.death_c 2s) goto 0x006128
0x006034:
    if !(< self.x (- self.dg_x 60s)) goto 0x006068
0x006054:
    push (< self.dg_t 50s)
    goto 0x00606C
0x006068:
    push 0s
0x00606C:
    if !pop goto 0x006128
0x006070:
    if !(< self.hspeed 0s) goto 0x0060A0
0x006084:
    self.hspeed = (+ self.hspeed 2s)
    goto 0x006128
0x0060A0:
    self.hspeed = 0s
    self.death_c = 3s
    global.msc = 0s
    global.typer = 109s
    stog.msg[0s] = "heh^1, didja&really think you&would be able to"
    call (scr_blcon_x[]:int32 (- self.y 10s) (+ self.x 80s))
    stog.alarm[6s] = 50s
0x006128:
    if !(== self.death_c 3s) goto 0x006168
0x00613C:
    global.faceemotion = 3s
    stog.flag[20s] = 1s
    self.bof_d = 0s
0x006168:
    if !(== self.death_c 4s) goto 0x006294
0x00617C:
    pushenv 782s 0x006190
0x006184:
    call (instance_destroy[]:int32 )
0x006190:
    popenv 0x006184
0x006194:
    pushenv 188s 0x0061A8
0x00619C:
    call (instance_destroy[]:int32 )
0x0061A8:
    popenv 0x00619C
0x0061AC:
    call (snd_play[]:int32 (var 44s))
    self.st = (instance_create[]:int32 (var 509s) (- self.y 30s) (- self.x 10s))
    push 1.5d
    stog.image_xscale* = (int32 self.st)
    push 1.5d
    stog.image_yscale* = (int32 self.st)
    push 0.25d
    stog.image_speed* = (int32 self.st)
    self.death_c = 5s
    stog.alarm[6s] = 50s
    self.hit_x = self.x
    global.faceemotion = 6s
0x006294:
    if !(== self.death_c 5s) goto 0x00633C
0x0062A8:
    if !(< self.bof_d 4s) goto 0x006324
0x0062BC:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y 50s) self.x (floor[]:int32 self.bof_d) (var 670s))
0x006324:
    self.bof_d = (+ self.bof_d 1s)
0x00633C:
    if !(== self.death_c 6s) goto 0x00647C
0x006350:
    pushenv 519s 0x00640C
0x006358:
    self.x = (- (int32 self.mypart1):x 60s)
    global.damage = 9999999
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- self.y 50s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv (int32 self.dmgwriter) 0x006408
0x0063EC:
    self.dmg = 9999999
    self.drawbar = 0s
0x006408:
    popenv 0x0063EC
0x00640C:
    popenv 0x006358
0x006410:
    call (snd_play[]:int32 (var 51s))
    self.deadtest = 1s
    stog.flag[20s] = 3s
    self.x = (+ self.hit_x 32s)
    self.death_c = 7s
    stog.alarm[6s] = 4s
0x00647C:
    if !(== self.death_c 8s) goto 0x0064C8
0x006490:
    self.x = (- self.hit_x 28s)
    self.death_c = 9s
    stog.alarm[6s] = 4s
0x0064C8:
    if !(== self.death_c 10s) goto 0x006528
0x0064DC:
    stog.flag[20s] = 3s
    self.x = (+ self.hit_x 24s)
    self.death_c = 11s
    stog.alarm[6s] = 4s
0x006528:
    if !(== self.death_c 12s) goto 0x006574
0x00653C:
    self.x = (- self.hit_x 20s)
    self.death_c = 13s
    stog.alarm[6s] = 4s
0x006574:
    if !(== self.death_c 14s) goto 0x0065D4
0x006588:
    stog.flag[20s] = 3s
    self.x = (+ self.hit_x 16s)
    self.death_c = 15s
    stog.alarm[6s] = 4s
0x0065D4:
    if !(== self.death_c 16s) goto 0x006620
0x0065E8:
    self.x = (- self.hit_x 12s)
    self.death_c = 17s
    stog.alarm[6s] = 4s
0x006620:
    if !(== self.death_c 18s) goto 0x006680
0x006634:
    stog.flag[20s] = 3s
    self.x = (+ self.hit_x 8s)
    self.death_c = 19s
    stog.alarm[6s] = 4s
0x006680:
    if !(== self.death_c 20s) goto 0x0066CC
0x006694:
    self.x = (- self.hit_x 4s)
    self.death_c = 21s
    stog.alarm[6s] = 4s
0x0066CC:
    if !(== self.death_c 22s) goto 0x006758
0x0066E0:
    self.xoff = 0s
    self.yoff = 0s
    self.headx = 0s
    self.heady = 0s
    self.legx = 0s
    self.legy = 0s
    self.x = self.hit_x
    self.death_c = 23s
    stog.alarm[6s] = 110s
0x006758:
    if !(>= self.death_c 8s) goto 0x006780
0x00676C:
    push (< self.death_c 22s)
    goto 0x006784
0x006780:
    push 0s
0x006784:
    if !pop goto 0x006834
0x006788:
    self.bounce = -1s
    self.xoff = (choose[]:int32 (var 2s) (var -2s) (var 0s))
    self.yoff = (choose[]:int32 (var 2s) (var -2s) (var 0s))
    self.legx = (choose[]:int32 (var 1s) (var -1s) (var 0s))
    self.legy = (choose[]:int32 (var 1s) (var -1s) (var 0s))
0x006834:
    if !(== self.death_c 24s) goto 0x0068B8
0x006848:
    pushenv 189s 0x00685C
0x006850:
    call (instance_destroy[]:int32 )
0x00685C:
    popenv 0x006850
0x006860:
    self.bounce = 3s
    self.deadtest = 1s
    global.faceemotion = 4s
    stog.flag[20s] = 4s
    self.death_c = 25s
    stog.alarm[6s] = 30s
0x0068B8:
    if !(== self.death_c 26s) goto 0x0069DC
0x0068CC:
    global.msc = 0s
    global.typer = 107s
    stog.msg[0s] = ".../"
    stog.msg[1s] = ".../"
    stog.msg[2s] = ".../"
    stog.msg[3s] = "so.../"
    stog.msg[4s] = "guess that's it^1,&huh?/"
    stog.msg[5s] = ".../"
    stog.msg[6s] = "just.../"
    stog.msg[7s] = "don't say i&didn't warn you./%%"
    call (scr_blcon_x[]:int32 (- self.y 10s) (+ self.x 80s))
    self.death_c = 27s
0x0069DC:
    if !(== self.death_c 27s) goto 0x006A08
0x0069F0:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x006A0C
0x006A08:
    push 0s
0x006A0C:
    if !pop goto 0x006B10
0x006A10:
    if !(== 782.stringno 0s) goto 0x006A30
0x006A24:
    global.faceemotion = 10s
0x006A30:
    if !(== 782.stringno 1s) goto 0x006A50
0x006A44:
    global.faceemotion = 7s
0x006A50:
    if !(== 782.stringno 2s) goto 0x006A70
0x006A64:
    global.faceemotion = 11s
0x006A70:
    if !(== 782.stringno 3s) goto 0x006A90
0x006A84:
    global.faceemotion = 7s
0x006A90:
    if !(== 782.stringno 4s) goto 0x006AB0
0x006AA4:
    global.faceemotion = 7s
0x006AB0:
    if !(== 782.stringno 5s) goto 0x006AD0
0x006AC4:
    global.faceemotion = 11s
0x006AD0:
    if !(== 782.stringno 6s) goto 0x006AF0
0x006AE4:
    global.faceemotion = 10s
0x006AF0:
    if !(== 782.stringno 7s) goto 0x006B10
0x006B04:
    global.faceemotion = 10s
0x006B10:
    if !(== self.death_c 27s) goto 0x006B40
0x006B24:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x006B44
0x006B40:
    push 0s
0x006B44:
    if !pop goto 0x006B70
0x006B48:
    self.death_c = 27.1d
    stog.alarm[6s] = 60s
0x006B70:
    if !(== self.death_c 28.1d) goto 0x006BE4
0x006B8C:
    self.bounce = 0s
    global.faceemotion = 10s
    stog.flag[20s] = 5s
    self.deadtest = 0s
    self.death_c = 28s
    stog.alarm[6s] = 80s
0x006BE4:
    if !(== self.death_c 29s) goto 0x006C78
0x006BF8:
    global.msc = 0s
    global.typer = 107s
    stog.msg[0s] = "welp./"
    stog.msg[1s] = "i'm going to&grillby's./%%"
    call (scr_blcon_x[]:int32 (- self.y 10s) (+ self.x 80s))
    self.death_c = 30s
0x006C78:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x006CA4
0x006C90:
    push (== self.death_c 30s)
    goto 0x006CA8
0x006CA4:
    push 0s
0x006CA8:
    if !pop goto 0x006D00
0x006CAC:
    if !(== 782.stringno 0s) goto 0x006CCC
0x006CC0:
    global.faceemotion = 10s
0x006CCC:
    if !(== 782.stringno 1s) goto 0x006D00
0x006CE0:
    global.faceemotion = 8s
    stog.flag[20s] = 6s
0x006D00:
    if !(== self.death_c 30s) goto 0x006D30
0x006D14:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x006D34
0x006D30:
    push 0s
0x006D34:
    if !pop goto 0x006D88
0x006D38:
    global.faceemotion = 10s
    stog.flag[20s] = 5s
    self.bounce = 2s
    self.hspeed = -2s
    self.d_sin = 0s
    self.death_c = 31s
0x006D88:
    if !(== self.death_c 31s) goto 0x006E18
0x006D9C:
    self.d_sin = (+ self.d_sin 1s)
    self.dsp = (* (sin[]:int32 (/ self.d_sin (double 10s))) 1s)
    self.hspeed = (- -1s self.dsp)
    if !(< self.x -180s) goto 0x006E18
0x006E0C:
    self.death_c = 32s
0x006E18:
    if !(== self.death_c 32s) goto 0x006E8C
0x006E2C:
    global.msc = 0s
    global.typer = 107s
    stog.msg[0s] = "papyrus^1, do you&want anything?/%%"
    call (scr_blcon_x[]:int32 (- self.y 10s) (var 20s))
    self.death_c = 33s
0x006E8C:
    if !(== self.death_c 33s) goto 0x006EBC
0x006EA0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x006EC0
0x006EBC:
    push 0s
0x006EC0:
    if !pop goto 0x006EE4
0x006EC4:
    self.death_c = 34s
    stog.alarm[6s] = 60s
0x006EE4:
    if !(== self.death_c 35s) goto 0x006FE8
0x006EF8:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.san_d = (ini_read_real[]:int32 (var 0s) (var "SK") (var "Sans"))
    call (ini_write_real[]:int32 (+ self.san_d 1s) (var "SK") (var "Sans"))
    call (ini_close[]:int32 )
    call (snd_play[]:int32 (var 91s))
    self.death_c = 36s
    stog.alarm[6s] = 140s
    if !(< global.xp 99999) goto 0x006FDC
0x006FCC:
    global.xp = 99999
0x006FDC:
    call (scr_levelup[]:int32 )
0x006FE8:
    if !(== self.death_c 37s) goto 0x007054
0x006FFC:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    self.death_c = 38s
    call (caster_free[]:int32 (var -3s))
    stog.alarm[6s] = 20s
0x007054:
    if !(== self.death_c 39s) goto 0x0070A0
0x007068:
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    call (room_goto[]:int32 global.currentroom)
0x0070A0:
    if !(== self.asleep 1s) goto 0x0071C4
0x0070B4:
    self.asleep_timer = (+ self.asleep_timer 1s)
    if !(== self.asleep_timer 10s) goto 0x007114
0x0070E0:
    call (instance_create[]:int32 (var 508s) (- self.y 10s) (+ self.x 20s))
0x007114:
    if !(== self.asleep_timer 20s) goto 0x00715C
0x007128:
    call (instance_create[]:int32 (var 508s) (- self.y 10s) (+ self.x 20s))
0x00715C:
    if !(== self.asleep_timer 30s) goto 0x0071A4
0x007170:
    call (instance_create[]:int32 (var 508s) (- self.y 10s) (+ self.x 20s))
0x0071A4:
    if !(== self.asleep_timer 80s) goto 0x0071C4
0x0071B8:
    self.asleep_timer = 0s
0x0071C4:
    if !(== self.sleep_c 9s) goto 0x007354
0x0071D8:
    self.sleep_c = 1s
    self.drawborder = 0s
    pushenv 743s 0x007204
0x0071F8:
    self.ignore_border = 1s
0x007204:
    popenv 0x0071F8
0x007208:
    pushenv 757s 0x00721C
0x007210:
    self.ignore_border = 1s
0x00721C:
    popenv 0x007210
0x007220:
    pushenv 757s 0x007234
0x007228:
    self.visible = 0s
0x007234:
    popenv 0x007228
0x007238:
    pushenv 757s 0x00724C
0x007240:
    self.solid = 0s
0x00724C:
    popenv 0x007240
0x007250:
    push (var 507s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv 757s 0x007298
0x00728C:
    self.instaborder = 1s
0x007298:
    popenv 0x00728C
0x00729C:
    call (instance_create[]:int32 (var 506s) 750.y 750.x)
    pushenv 750s 0x0072D4
0x0072C8:
    self.visible = 0s
0x0072D4:
    popenv 0x0072C8
0x0072D8:
    stog.idealborder[0s] = -10s
    stog.idealborder[3s] = 999s
    global.faceemotion = 9s
    self.sweat = 3s
    self.bounce = 3s
    pushenv 743s 0x007350
0x00732C:
    self.ignore_border = 1s
    self.movement = 1s
    self.speed = 0s
0x007350:
    popenv 0x00732C
0x007354:
    if !(== self.sleep_c 1s) goto 0x0075BC
0x007368:
    if !(> self.lac 60s) goto 0x0073AC
0x00737C:
    if !(< self.sleep_t -10s) goto 0x0073A8
0x007390:
    self.sleep_t = (+ self.sleep_t 1s)
0x0073A8:
    goto 0x0073C4
0x0073AC:
    self.sleep_t = (+ self.sleep_t 1s)
0x0073C4:
    if !(< self.sleep_t 1200s) goto 0x007460
0x0073D8:
    if !(< 743.x (+ 507.x 10s)) goto 0x007460
0x0073F8:
    call (snd_play[]:int32 (var 28s))
    [obj_heart].x = (+ 507.x 78s)
    [obj_heart].y = (+ 507.y 78s)
    self.sleep_t = -95s
    self.facetype = 1s
    global.faceemotion = 0s
0x007460:
    if !(== self.sleep_t -92s) goto 0x007480
0x007474:
    self.facetype = 0s
0x007480:
    if !(== self.sleep_t 0s) goto 0x0074A0
0x007494:
    global.faceemotion = 9s
0x0074A0:
    if !(== self.sleep_t 300s) goto 0x0074EC
0x0074B4:
    global.faceemotion = 12s
    if !(> self.sweat 0s) goto 0x0074EC
0x0074D4:
    self.sweat = (- self.sweat 1s)
0x0074EC:
    if !(== self.sleep_t 600s) goto 0x007538
0x007500:
    global.faceemotion = 13s
    if !(> self.sweat 0s) goto 0x007538
0x007520:
    self.sweat = (- self.sweat 1s)
0x007538:
    if !(== self.sleep_t 900s) goto 0x007584
0x00754C:
    global.faceemotion = 14s
    if !(> self.sweat 0s) goto 0x007584
0x00756C:
    self.sweat = (- self.sweat 1s)
0x007584:
    if !(== self.sleep_t 1200s) goto 0x0075BC
0x007598:
    global.faceemotion = 4s
    self.asleep = 1s
    self.sleep_c = 2s
0x0075BC:
    if !(> global.km 40s) goto 0x0075DC
0x0075D0:
    global.km = 40s
0x0075DC:
    if !(> global.km global.hp) goto 0x00760C
0x0075F4:
    global.km = (- global.hp 1s)
0x00760C:
    if !(> global.km 0s) goto 0x007634
0x007620:
    push (> global.hp 1s)
    goto 0x007638
0x007634:
    push 0s
0x007638:
    if !pop goto 0x007994
0x00763C:
    self.km_t = (+ self.km_t 1s)
    if !(== self.prevhp global.hp) goto 0x007984
0x00766C:
    self.km_bonus = 0s
    if !(>= global.inv 45s) goto 0x0076AC
0x00768C:
    self.km_bonus = (choose[]:int32 (var 1s) (var 0s))
0x0076AC:
    if !(>= global.inv 60s) goto 0x0076E8
0x0076C0:
    self.km_bonus = (choose[]:int32 (var 1s) (var 1s) (var 0s))
0x0076E8:
    if !(>= global.inv 75s) goto 0x007708
0x0076FC:
    self.km_bonus = 1s
0x007708:
    if !(>= self.km_t (+ 1s self.km_bonus)) goto 0x00773C
0x007728:
    push (>= global.km 40s)
    goto 0x007740
0x00773C:
    push 0s
0x007740:
    if !pop goto 0x007780
0x007744:
    self.km_t = 0s
    global.hp = (- global.hp 1s)
    global.km = (- global.km 1s)
0x007780:
    if !(>= self.km_t (+ 2s (* self.km_bonus 2s))) goto 0x0077BC
0x0077A8:
    push (>= global.km 30s)
    goto 0x0077C0
0x0077BC:
    push 0s
0x0077C0:
    if !pop goto 0x007800
0x0077C4:
    self.km_t = 0s
    global.hp = (- global.hp 1s)
    global.km = (- global.km 1s)
0x007800:
    if !(>= self.km_t (+ 5s (* self.km_bonus 3s))) goto 0x00783C
0x007828:
    push (>= global.km 20s)
    goto 0x007840
0x00783C:
    push 0s
0x007840:
    if !pop goto 0x007880
0x007844:
    self.km_t = 0s
    global.hp = (- global.hp 1s)
    global.km = (- global.km 1s)
0x007880:
    if !(>= self.km_t (+ 15s (* self.km_bonus 5s))) goto 0x0078BC
0x0078A8:
    push (>= global.km 10s)
    goto 0x0078C0
0x0078BC:
    push 0s
0x0078C0:
    if !pop goto 0x007900
0x0078C4:
    self.km_t = 0s
    global.hp = (- global.hp 1s)
    global.km = (- global.km 1s)
0x007900:
    if !(>= self.km_t (+ 30s (* self.km_bonus 10s))) goto 0x007964
0x007928:
    self.km_t = 0s
    global.hp = (- global.hp 1s)
    global.km = (- global.km 1s)
0x007964:
    if !(<= global.hp 0s) goto 0x007984
0x007978:
    global.hp = 1s
0x007984:
    self.prevhp = global.hp
0x007994:
    exit
