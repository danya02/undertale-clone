0x000000:
    pushenv 757s 0x000014
0x000008:
    self.visible = 1s
0x000014:
    popenv 0x000008
0x000018:
    call (snd_play[]:int32 (var 106s))
    call (caster_resume[]:int32 global.batmusic)
    self.shadow = 0s
    stog.idealborder[3s] = 385s
    if !(== self.level 0s) goto 0x00014C
0x000074:
    self.s_type = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    if !(== self.prev_s self.s_type) goto 0x0000FC
0x0000C4:
    self.s_type = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
0x0000FC:
    if !(== self.prev_s self.s_type) goto 0x00014C
0x000114:
    self.s_type = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
0x00014C:
    if !(== self.level 1s) goto 0x000220
0x000160:
    self.s_type = (choose[]:int32 (var 8s) (var 7s) (var 6s) (var 5s))
    if !(== self.prev_s self.s_type) goto 0x0001D8
0x0001A8:
    self.s_type = (choose[]:int32 (var 8s) (var 7s) (var 6s) (var 5s))
0x0001D8:
    if !(== self.prev_s self.s_type) goto 0x000220
0x0001F0:
    self.s_type = (choose[]:int32 (var 8s) (var 7s) (var 6s) (var 5s))
0x000220:
    if !(== self.level 2s) goto 0x00036C
0x000234:
    self.s_type = (choose[]:int32 (var 8s) (var 7s) (var 6s) (var 5s) (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    if !(== self.prev_s self.s_type) goto 0x0002FC
0x0002A4:
    self.s_type = (choose[]:int32 (var 8s) (var 7s) (var 6s) (var 5s) (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
0x0002FC:
    if !(== self.prev_s self.s_type) goto 0x00036C
0x000314:
    self.s_type = (choose[]:int32 (var 8s) (var 7s) (var 6s) (var 5s) (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
0x00036C:
    if !(== self.level 3s) goto 0x00040C
0x000380:
    self.s_type = 50s
    if !(== self.prev_s 50s) goto 0x0003AC
0x0003A0:
    self.s_type = 51s
0x0003AC:
    if !(== self.prev_s 51s) goto 0x0003CC
0x0003C0:
    self.s_type = 52s
0x0003CC:
    if !(== self.prev_s 52s) goto 0x0003EC
0x0003E0:
    self.s_type = 53s
0x0003EC:
    if !(== self.prev_s 53s) goto 0x00040C
0x000400:
    self.s_type = 54s
0x00040C:
    self.prev_s = self.s_type
    if !(>= self.shadow_num self.shadow_max) goto 0x000550
0x000434:
    if !(< self.level 3s) goto 0x000488
0x000448:
    if !(~ (bool (instance_exists[]:int32 (var 510s)))) goto 0x000488
0x000464:
    call (instance_create[]:int32 (var 510s) (var 0s) (var 0s))
0x000488:
    [obj_sansb_body].x = 320s
    pushenv 519s 0x0004A8
0x00049C:
    self.attacked = 0s
0x0004A8:
    popenv 0x00049C
0x0004AC:
    pushenv 757s 0x0004C0
0x0004B4:
    self.instaborder = 0s
0x0004C0:
    popenv 0x0004B4
0x0004C4:
    self.s_type = -1s
    global.mnfight = 3s
    pushenv 743s 0x0004F0
0x0004E4:
    self.movement = 1s
0x0004F0:
    popenv 0x0004E4
0x0004F4:
    pushenv 743s 0x000508
0x0004FC:
    self.jumpstage = 0s
0x000508:
    popenv 0x0004FC
0x00050C:
    pushenv 743s 0x000520
0x000514:
    self.sprite_index = 34s
0x000520:
    popenv 0x000514
0x000524:
    pushenv 743s 0x000538
0x00052C:
    self.speed = 0s
0x000538:
    popenv 0x00052C
0x00053C:
    call (instance_destroy[]:int32 )
    exit
    goto 0x000584
0x000550:
    if !(< self.level 3s) goto 0x000584
0x000564:
    [obj_sansb_body].x = (+ 100s (random[]:int32 (var 440s)))
0x000584:
    self.shadow_num = (+ self.shadow_num 1s)
    if !(== self.s_type 0s) goto 0x00087C
0x0005B0:
    [obj_heart].movement = 2s
    pushenv 743s 0x0005D0
0x0005C4:
    self.jumpstage = 2s
0x0005D0:
    popenv 0x0005C4
0x0005D4:
    [obj_heart].sprite_index = 40s
    [obj_heart].speed = 0s
    stog.idealborder[0s] = 120s
    stog.idealborder[1s] = 520s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 110s)
    push -5s
    push 0s:idealborder
    push -5s
    [obj_heart].x = (- (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s))) 5s)
    push -5s
    [obj_heart].y = (- 3s:idealborder 15s)
    call (scr_sbo[]:int32 (var 0s) (var 25s) (var 8s) (var 45s))
    call (scr_sbo[]:int32 (var 0s) (var 25s) (var -8s) (var 45s))
    call (scr_sbo[]:int32 (var 0s) (var 27s) (var 8s) (var 45s))
    call (scr_sbo[]:int32 (var 0s) (var 27s) (var -8s) (var 45s))
    call (scr_sbo[]:int32 (var 0s) (var 29s) (var 8s) (var 45s))
    call (scr_sbo[]:int32 (var 0s) (var 29s) (var -8s) (var 45s))
    call (scr_sbo[]:int32 (var 0s) (var 31s) (var 8s) (var 45s))
    call (scr_sbo[]:int32 (var 0s) (var 31s) (var -8s) (var 45s))
    call (scr_sbo[]:int32 (var 0s) (var 33s) (var 8s) (var 100s))
    call (scr_sbo[]:int32 (var 0s) (var 33s) (var -8s) (var 100s))
    stog.alarm[1s] = 28s
0x00087C:
    if !(== self.s_type 1s) goto 0x000AAC
0x000890:
    [obj_heart].movement = 2s
    pushenv 743s 0x0008B0
0x0008A4:
    self.jumpstage = 2s
0x0008B0:
    popenv 0x0008A4
0x0008B4:
    [obj_heart].sprite_index = 40s
    [obj_heart].speed = 0s
    stog.idealborder[0s] = 120s
    stog.idealborder[1s] = 520s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 110s)
    push -5s
    push 0s:idealborder
    push -5s
    [obj_heart].x = (- (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s))) 5s)
    push -5s
    [obj_heart].y = (- 3s:idealborder 15s)
    call (scr_sbo[]:int32 (var 1s) (var 25s) (var 8s) (var 100s))
    call (scr_sbo[]:int32 (var 1s) (var 25s) (var -8s) (var 100s))
    call (scr_sbo[]:int32 (var 0s) (var 34s) (var 8s) (var 20s))
    call (scr_sbo[]:int32 (var 0s) (var 34s) (var -8s) (var 20s))
    call (scr_sbo[]:int32 (var 0s) (var 38s) (var 8s) (var 100s))
    call (scr_sbo[]:int32 (var 0s) (var 38s) (var -8s) (var 100s))
    stog.alarm[1s] = 35s
0x000AAC:
    if !(== self.s_type 2s) goto 0x000E60
0x000AC0:
    [obj_heart].movement = 2s
    pushenv 743s 0x000AE0
0x000AD4:
    self.jumpstage = 2s
0x000AE0:
    popenv 0x000AD4
0x000AE4:
    [obj_heart].sprite_index = 40s
    [obj_heart].speed = 0s
    stog.idealborder[0s] = 170s
    stog.idealborder[1s] = 470s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 110s)
    push -5s
    push 0s:idealborder
    push -5s
    [obj_heart].x = (- (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s))) 5s)
    push -5s
    [obj_heart].y = (- 3s:idealborder 15s)
    self.value = 0s
    self.i = 0s
    if !(< self.i 7s) goto 0x000E4C
0x000BEC:
    self.ht = (choose[]:int32 (var 40s) (var 30s) (var 20s))
    self.xx = 0s
    if !(> self.i 0s) goto 0x000C5C
0x000C34:
    self.xx = (choose[]:int32 (var 2s) (var 0s) (var -2s))
0x000C5C:
    call (scr_sbo[]:int32 (var 0s) (+ (+ 25s (* self.i 22s)) self.value) (+ 6s self.xx) self.ht)
    call (scr_sbo[]:int32 (var 0s) (+ (+ 25s (* self.i 22s)) self.value) (+ -6s self.xx) self.ht)
    call (scr_sbo[]:int32 (var 2s) (+ (+ 25s (* self.i 22s)) self.value) (+ 6s self.xx) (+ self.ht 24s))
    call (scr_sbo[]:int32 (var 2s) (+ (+ 25s (* self.i 22s)) self.value) (+ -6s self.xx) (+ self.ht 24s))
    if !(== self.ht 30s) goto 0x000DD8
0x000DC0:
    self.value = (+ self.value 5s)
0x000DD8:
    if !(== self.ht 40s) goto 0x000E04
0x000DEC:
    self.value = (+ self.value 10s)
0x000E04:
    if !(== self.ht 60s) goto 0x000E30
0x000E18:
    self.value = (+ self.value 20s)
0x000E30:
    self.i = (+ self.i 1s)
    goto 0x000BD8
0x000E4C:
    stog.alarm[1s] = 58s
0x000E60:
    if !(== self.s_type 3s) goto 0x0010B4
0x000E74:
    [obj_heart].movement = 2s
    pushenv 743s 0x000E94
0x000E88:
    self.jumpstage = 2s
0x000E94:
    popenv 0x000E88
0x000E98:
    [obj_heart].sprite_index = 40s
    [obj_heart].speed = 0s
    stog.idealborder[0s] = 170s
    stog.idealborder[1s] = 470s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 110s)
    push -5s
    push 0s:idealborder
    push -5s
    [obj_heart].x = (- (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s))) 5s)
    push -5s
    [obj_heart].y = (- 3s:idealborder 15s)
    self.i = 0s
    if !(< self.i 8s) goto 0x0010A0
0x000F94:
    call (scr_sbo[]:int32 (var 0s) (+ 25s (* self.i 25s)) (var 5s) (var 15s))
    call (scr_sbo[]:int32 (var 0s) (+ 25s (* self.i 25s)) (var -5s) (var 15s))
    call (scr_sbo[]:int32 (var 2s) (+ 25s (* self.i 25s)) (var 5s) (var 40s))
    call (scr_sbo[]:int32 (var 2s) (+ 25s (* self.i 25s)) (var -5s) (var 40s))
    self.i = (+ self.i 1s)
    goto 0x000F80
0x0010A0:
    stog.alarm[1s] = 52s
0x0010B4:
    if !(== self.s_type 4s) goto 0x001644
0x0010C8:
    [obj_heart].movement = 2s
    pushenv 743s 0x0010E8
0x0010DC:
    self.jumpstage = 2s
0x0010E8:
    popenv 0x0010DC
0x0010EC:
    [obj_heart].sprite_index = 40s
    [obj_heart].speed = 0s
    stog.idealborder[0s] = 120s
    stog.idealborder[1s] = 520s
    self.sd = (choose[]:int32 (var -1s) (var 1s))
    if !(== self.sd 1s) goto 0x001184
0x001160:
    push -5s
    [obj_heart].x = (+ 0s:idealborder 20s)
    goto 0x0011A4
0x001184:
    push -5s
    [obj_heart].x = (- 1s:idealborder 20s)
0x0011A4:
    push -5s
    [obj_heart].y = (- 3s:idealborder 15s)
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 110s)
    call (scr_sbo[]:int32 (var 0s) (var 11s) (* -12s self.sd) (var 55s))
    call (scr_sbo[]:int32 (var 0s) (var 13s) (* -12s self.sd) (var 55s))
    call (scr_sbo[]:int32 (var 0s) (var 15s) (* -12s self.sd) (var 55s))
    call (scr_sbo[]:int32 (var 0s) (var 17s) (* -12s self.sd) (var 55s))
    call (scr_sbo[]:int32 (var 0s) (var 19s) (* -12s self.sd) (var 55s))
    call (scr_sbo[]:int32 (var 0s) (var 21s) (* -12s self.sd) (var 55s))
    call (scr_sbo[]:int32 (var 0s) (var 23s) (* -12s self.sd) (var 55s))
    call (scr_sbo[]:int32 (var 0s) (var 25s) (* -12s self.sd) (var 55s))
    call (scr_sbo[]:int32 (var 0s) (var 27s) (* -12s self.sd) (var 55s))
    call (scr_sbo[]:int32 (var 0s) (var 29s) (* -12s self.sd) (var 55s))
    call (scr_sbo[]:int32 (var 0s) (var 31s) (* -12s self.sd) (var 55s))
    call (scr_sbo[]:int32 (var 0s) (var 33s) (* -12s self.sd) (var 15s))
    call (scr_sbo[]:int32 (var 0s) (var 35s) (* -12s self.sd) (var 15s))
    call (scr_sbo[]:int32 (var 0s) (var 37s) (* -12s self.sd) (var 15s))
    call (scr_sbo[]:int32 (var 0s) (var 39s) (* -12s self.sd) (var 15s))
    call (scr_sbo[]:int32 (var 0s) (var 41s) (* -12s self.sd) (var 15s))
    call (scr_sbo[]:int32 (var 0s) (var 43s) (* -12s self.sd) (var 15s))
    call (scr_sbo[]:int32 (var 0s) (var 45s) (* -12s self.sd) (var 15s))
    call (scr_sbo[]:int32 (var 0s) (var 47s) (* -12s self.sd) (var 15s))
    call (scr_sbo[]:int32 (var 0s) (var 49s) (* -12s self.sd) (var 15s))
    call (scr_sbo[]:int32 (var 0s) (var 51s) (* -12s self.sd) (var 15s))
    stog.alarm[1s] = 47s
0x001644:
    if !(== self.s_type 5s) goto 0x00192C
0x001658:
    [obj_heart].movement = 2s
    pushenv 743s 0x001678
0x00166C:
    self.jumpstage = 2s
0x001678:
    popenv 0x00166C
0x00167C:
    [obj_heart].sprite_index = 40s
    [obj_heart].speed = 0s
    [obj_heart].vspeed = 1s
    stog.idealborder[0s] = 120s
    stog.idealborder[1s] = 520s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 110s)
    push -5s
    push 0s:idealborder
    push -5s
    [obj_heart].x = (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s)))
    push -5s
    [obj_heart].y = (- 3s:idealborder 90s)
    self.d = (choose[]:int32 (var -1s) (var 1s))
    call (scr_sbo[]:int32 (var 2s) (var 27s) (* 8s self.d) (var 75s))
    call (scr_sbo[]:int32 (var 0s) (var 42s) (* -8s self.d) (var 65s))
    call (scr_hplat[]:int32 (var 20s) (var 0s) (var 0s) (var 70s))
    stog.x* = (+ (int32 self.bone):x 8s)
    call (scr_hplat[]:int32 (var 20s) (var 0s) (var 0s) (var 30s))
    stog.x* = (+ (int32 self.bone):x 8s)
    self.i = 0s
    if !(< self.i 30s) goto 0x001918
0x0018AC:
    push (int32 self.bone)
    push (int32 self.bone)
    push (var 501s)
    push -5s
    call (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 0s:idealborder (* self.i 16s)))
    self.i = (+ self.i 1s)
    goto 0x001898
0x001918:
    stog.alarm[1s] = 45s
0x00192C:
    if !(== self.s_type 6s) goto 0x00224C
0x001940:
    [obj_heart].movement = 1s
    [obj_heart].sprite_index = 674s
    [obj_heart].speed = 0s
    stog.idealborder[0s] = 240s
    stog.idealborder[1s] = 400s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 160s)
    push -5s
    push 0s:idealborder
    push -5s
    self.hwd = (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s)))
    push -5s
    push 2s:idealborder
    push -5s
    self.hht = (+ 3s:idealborder (/ (- -5s 2s:idealborder) (double 2s)))
    push -5s
    push 0s:idealborder
    push -5s
    [obj_heart].x = (- (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    push -5s
    [obj_heart].y = (- (+ 3s:idealborder (/ (- -5s 2s:idealborder) (double 2s))) 8s)
    self.chance = (choose[]:int32 (var 1s) (var 0s))
    if !(== self.chance 0s) goto 0x001E80
0x001B28:
    self.gb = (instance_create[]:int32 (var 498s) (var 0s) (var 0s))
    push 90s
    stog.idealrot* = (int32 self.gb)
    push -5s
    push (- 0s:idealborder 50s)
    stog.idealx* = (int32 self.gb)
    push self.hht
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
    push self.hht
    stog.idealy* = (int32 self.gb)
    push 2s
    stog.image_xscale* = (int32 self.gb)
    push 2s
    stog.image_yscale* = (int32 self.gb)
    self.gb = (instance_create[]:int32 (var 498s) (var 0s) (var 0s))
    push 0s
    stog.idealrot* = (int32 self.gb)
    push self.hwd
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
    push self.hwd
    stog.idealx* = (int32 self.gb)
    push -5s
    push (+ 3s:idealborder 60s)
    stog.idealy* = (int32 self.gb)
    push 2s
    stog.image_xscale* = (int32 self.gb)
    push 2s
    stog.image_yscale* = (int32 self.gb)
    [obj_gasterblaster].pause = (- 18s self.laser_d)
    [obj_gasterblaster].terminal = 8s
    pushenv 498s 0x001E44
0x001E34:
    self.x = self.idealx
0x001E44:
    popenv 0x001E34
0x001E48:
    pushenv 498s 0x001E60
0x001E50:
    self.y = self.idealy
0x001E60:
    popenv 0x001E50
0x001E64:
    pushenv 498s 0x001E7C
0x001E6C:
    self.image_angle = self.idealrot
0x001E7C:
    popenv 0x001E6C
0x001E80:
    if !(== self.chance 1s) goto 0x00222C
0x001E94:
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
    [obj_gasterblaster].pause = (- 20s self.laser_d)
    [obj_gasterblaster].terminal = 8s
    pushenv 498s 0x0021F0
0x0021E0:
    self.x = self.idealx
0x0021F0:
    popenv 0x0021E0
0x0021F4:
    pushenv 498s 0x00220C
0x0021FC:
    self.y = self.idealy
0x00220C:
    popenv 0x0021FC
0x002210:
    pushenv 498s 0x002228
0x002218:
    self.image_angle = self.idealrot
0x002228:
    popenv 0x002218
0x00222C:
    stog.alarm[1s] = (- 37s self.laser_d)
0x00224C:
    if !(== self.s_type 7s) goto 0x002684
0x002260:
    [obj_heart].movement = 1s
    [obj_heart].sprite_index = 674s
    [obj_heart].speed = 0s
    stog.idealborder[0s] = 240s
    stog.idealborder[1s] = 400s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 160s)
    push -5s
    push 0s:idealborder
    push -5s
    self.hwd = (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s)))
    push -5s
    push 2s:idealborder
    push -5s
    self.hht = (+ 3s:idealborder (/ (- -5s 2s:idealborder) (double 2s)))
    push -5s
    push 0s:idealborder
    push -5s
    [obj_heart].x = (- (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    push -5s
    [obj_heart].y = (- (+ 3s:idealborder (/ (- -5s 2s:idealborder) (double 2s))) 8s)
    self.dd = (choose[]:int32 (var 1s) (var -1s))
    if !(== self.dd -1s) goto 0x00248C
0x002448:
    push -5s
    [obj_heart].x = (+ 0s:idealborder 20s)
    push -5s
    stog.idealborder[(+ 1s:idealborder 60s)] = 1s
0x00248C:
    if !(== self.dd 1s) goto 0x0024E4
0x0024A0:
    push -5s
    [obj_heart].x = (- 1s:idealborder 20s)
    push -5s
    stog.idealborder[(- 0s:idealborder 60s)] = 0s
0x0024E4:
    self.rr = (choose[]:int32 (var 1s) (var -1s))
    self.i = 0s
    if !(< self.i 16s) goto 0x002670
0x002524:
    call (scr_sbo[]:int32 (var 2s) (+ 16s (* self.i 2s)) (* 10s self.dd) (- 105s (* (* (sin[]:int32 (/ self.i (double 3s))) 28s) self.rr)))
    push (* self.i 3s)
    stog.siner* = (int32 self.bone)
    call (scr_sbo[]:int32 (var 0s) (+ 16s (* self.i 2s)) (* 10s self.dd) (- 60s (* (* (sin[]:int32 (/ self.i (double 3s))) 28s) self.rr)))
    push (* self.i 3s)
    stog.siner* = (int32 self.bone)
    self.i = (+ self.i 1s)
    goto 0x002510
0x002670:
    stog.alarm[1s] = 52s
0x002684:
    if !(== self.s_type 8s) goto 0x002894
0x002698:
    [obj_heart].movement = 2s
    pushenv 743s 0x0026B8
0x0026AC:
    self.jumpstage = 2s
0x0026B8:
    popenv 0x0026AC
0x0026BC:
    [obj_heart].sprite_index = 40s
    [obj_heart].speed = 0s
    stog.idealborder[0s] = 120s
    stog.idealborder[1s] = 520s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 110s)
    self.sd = (choose[]:int32 (var -1s) (var 1s))
    if !(== self.sd 1s) goto 0x00277C
0x002758:
    push -5s
    [obj_heart].x = (- 1s:idealborder 40s)
    goto 0x00279C
0x00277C:
    push -5s
    [obj_heart].x = (+ 0s:idealborder 40s)
0x00279C:
    push -5s
    [obj_heart].y = (- 3s:idealborder 15s)
    self.i = 0s
    if !(< self.i 10s) goto 0x002880
0x0027DC:
    call (scr_sbo[]:int32 (var 0s) (+ -5s (* self.i 19s)) (* 4s self.sd) (var 20s))
    call (scr_sbo[]:int32 (var 2s) (+ -5s (* self.i 19s)) (* -4s self.sd) (var 28s))
    self.i = (+ self.i 1s)
    goto 0x0027C8
0x002880:
    stog.alarm[1s] = 57s
0x002894:
    if !(== self.s_type 50s) goto 0x002B04
0x0028A8:
    [obj_heart].movement = 2s
    pushenv 743s 0x0028C8
0x0028BC:
    self.jumpstage = 2s
0x0028C8:
    popenv 0x0028BC
0x0028CC:
    [obj_heart].sprite_index = 40s
    [obj_heart].speed = 0s
    [obj_heart].vspeed = 1s
    stog.idealborder[0s] = 240s
    stog.idealborder[1s] = 400s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 160s)
    push -5s
    push 0s:idealborder
    push -5s
    self.hwd = (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s)))
    push -5s
    push 2s:idealborder
    push -5s
    self.hht = (+ 3s:idealborder (/ (- -5s 2s:idealborder) (double 2s)))
    [obj_heart].x = (- self.hwd 8s)
    push -5s
    [obj_heart].y = (- 3s:idealborder 15s)
    self.bs = (instance_create[]:int32 (var 502s) (var 0s) (var 0s))
    push 0s
    stog.dir* = (int32 self.bs)
    push 18s
    stog.warning* = (int32 self.bs)
    push 50s
    stog.height* = (int32 self.bs)
    self.bs = (instance_create[]:int32 (var 502s) (var 0s) (var 0s))
    push 2s
    stog.dir* = (int32 self.bs)
    push 18s
    stog.warning* = (int32 self.bs)
    push 50s
    stog.height* = (int32 self.bs)
    stog.alarm[1s] = 27s
0x002B04:
    if !(== self.s_type 51s) goto 0x002D64
0x002B18:
    [obj_heart].movement = 12s
    [obj_heart].sprite_index = 673s
    [obj_heart].speed = 0s
    [obj_heart].vspeed = -2s
    stog.idealborder[0s] = 240s
    stog.idealborder[1s] = 400s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 160s)
    push -5s
    push 0s:idealborder
    push -5s
    self.hwd = (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s)))
    push -5s
    push 2s:idealborder
    push -5s
    self.hht = (+ 3s:idealborder (/ (- -5s 2s:idealborder) (double 2s)))
    push -5s
    [obj_heart].x = (+ 0s:idealborder 15s)
    push -5s
    [obj_heart].y = (+ 2s:idealborder 10s)
    self.bs = (instance_create[]:int32 (var 502s) (var 0s) (var 0s))
    push 2s
    stog.dir* = (int32 self.bs)
    push 19s
    stog.warning* = (int32 self.bs)
    push 50s
    stog.height* = (int32 self.bs)
    self.bs = (instance_create[]:int32 (var 502s) (var 0s) (var 0s))
    push 3s
    stog.dir* = (int32 self.bs)
    push 19s
    stog.warning* = (int32 self.bs)
    push 50s
    stog.height* = (int32 self.bs)
    stog.alarm[1s] = 27s
0x002D64:
    if !(== self.s_type 52s) goto 0x002FC4
0x002D78:
    [obj_heart].speed = 0s
    [obj_heart].movement = 11s
    [obj_heart].sprite_index = 671s
    [obj_heart].hspeed = 2s
    stog.idealborder[0s] = 240s
    stog.idealborder[1s] = 400s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 160s)
    push -5s
    push 0s:idealborder
    push -5s
    self.hwd = (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s)))
    push -5s
    push 2s:idealborder
    push -5s
    self.hht = (+ 3s:idealborder (/ (- -5s 2s:idealborder) (double 2s)))
    push -5s
    [obj_heart].x = (- 1s:idealborder 15s)
    push -5s
    [obj_heart].y = (- 3s:idealborder 15s)
    self.bs = (instance_create[]:int32 (var 502s) (var 0s) (var 0s))
    push 0s
    stog.dir* = (int32 self.bs)
    push 19s
    stog.warning* = (int32 self.bs)
    push 50s
    stog.height* = (int32 self.bs)
    self.bs = (instance_create[]:int32 (var 502s) (var 0s) (var 0s))
    push 1s
    stog.dir* = (int32 self.bs)
    push 19s
    stog.warning* = (int32 self.bs)
    push 50s
    stog.height* = (int32 self.bs)
    stog.alarm[1s] = 27s
0x002FC4:
    if !(== self.s_type 53s) goto 0x003220
0x002FD8:
    [obj_heart].speed = 0s
    [obj_heart].movement = 13s
    [obj_heart].sprite_index = 672s
    [obj_heart].hspeed = -2s
    stog.idealborder[0s] = 240s
    stog.idealborder[1s] = 400s
    push -5s
    stog.idealborder[2s] = (- 3s:idealborder 160s)
    push -5s
    push 0s:idealborder
    push -5s
    self.hwd = (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 2s)))
    push -5s
    push 2s:idealborder
    push -5s
    self.hht = (+ 3s:idealborder (/ (- -5s 2s:idealborder) (double 2s)))
    push -5s
    [obj_heart].x = (+ 0s:idealborder 10s)
    push -5s
    [obj_heart].y = (== 2s:idealborder (- self.hht 8s))
    self.bs = (instance_create[]:int32 (var 502s) (var 0s) (var 0s))
    push 3s
    stog.dir* = (int32 self.bs)
    push 19s
    stog.warning* = (int32 self.bs)
    push 10s
    stog.retain* = (int32 self.bs)
    push 50s
    stog.height* = (int32 self.bs)
    stog.alarm[1s] = 22s
    pushenv 517s 0x00320C
0x0031E0:
    self.x = 320s
    self.lac = 49s
    stog.alarm[5s] = 20s
0x00320C:
    popenv 0x0031E0
0x003210:
    call (instance_destroy[]:int32 )
    exit
0x003220:
    exit
