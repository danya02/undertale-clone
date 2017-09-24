0x000000:
    if !(== self.transform 1s) goto 0x000034
0x000014:
    self.stetch = (+ self.stetch 0.2d)
0x000034:
    if !(== self.normal 1s) goto 0x000108
0x000048:
    self.siner = (+ self.siner 1s)
    self.rely = (+ self.rely (sin[]:int32 (/ self.siner (double 12s))))
    self.x = (+ self.x (* (cos[]:int32 (/ self.siner (double 24s))) 6s))
    self.y = (+ self.y (* (sin[]:int32 (/ self.siner (double 6s))) 0.25d))
0x000108:
    self.yoff = (sin[]:int32 (/ self.siner (double 6s)))
    self.xoff = (cos[]:int32 (/ self.siner (double 3s)))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_set_alpha[]:int32 self.image_alpha)
    call (draw_rectangle[]:int32 (var 0s) (+ (+ self.y 46s) self.rely) (+ self.x 42s) (+ (+ self.y 20s) self.rely) (- self.x 40s))
    call (draw_set_alpha[]:int32 (var 1s))
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.torsorot (var 2s) (+ 2s self.stetch) (+ (- (+ self.y 168s) 112s) (* self.rely 0.9d)) (+ self.x (* self.yoff 2s)) (var 0s) (var 2355s))
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (+ 2s self.stetch) (+ (+ self.y 48s) self.rely) (+ self.x self.yoff) (var 0s) (var 2354s))
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.torsorot (var 2s) (+ 2s self.stetch) (+ (+ self.y 48s) self.rely) (+ self.x self.yoff) (var 0s) (var 2353s))
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (+ 2s self.stetch) (+ (+ self.y 34s) (* self.rely 1.2d)) (+ self.x 2s) (var 0s) (var 2351s))
    if !(== self.specialarm 0s) goto 0x000660
0x000428:
    if !(== self.shrug 0s) goto 0x00054C
0x00043C:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.armrot_l (var 2s) (- -2s self.stetch) (+ (+ self.y 38s) (* self.rely 1.2d)) (- self.x 28s) (var 0s) (var 2349s))
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.armrot_r (var 2s) (+ 2s self.stetch) (+ (+ self.y 38s) (* self.rely 1.2d)) (+ self.x 30s) (var 0s) (var 2349s))
0x00054C:
    if !(== self.shrug 1s) goto 0x000660
0x000560:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.armrot_l (var 2s) (var -2s) (+ (+ self.y 38s) (* self.rely 1.2d)) (- self.x 28s) (var 0s) (var 2350s))
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.armrot_r (var 2s) (var 2s) (+ (+ self.y 38s) (* self.rely 1.2d)) (+ self.x 30s) (var 0s) (var 2350s))
0x000660:
    if !(== self.specialarm 1s) goto 0x000774
0x000674:
    call (draw_sprite_ext[]:int32 self.arm_alpha self.image_blend self.armrot_l (var 2s) (var -2s) (+ (+ self.y 38s) (* self.rely 1.2d)) (- self.x 28s) (var 0s) (var 2349s))
    call (draw_sprite_ext[]:int32 self.arm_alpha self.image_blend self.armrot_r (var 2s) (var 2s) (+ (+ self.y 38s) (* self.rely 1.2d)) (+ self.x 30s) (var 0s) (var 2349s))
0x000774:
    if !(== self.specialarm 2s) goto 0x000888
0x000788:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.armrot_l (var 2s) (var -2s) (+ (+ self.y 38s) (* self.rely 1.2d)) (- self.x 28s) (var 0s) (var 2349s))
    call (draw_sprite_ext[]:int32 self.arm_alpha self.image_blend self.armrot_r (var 2s) (var 2s) (+ (+ self.y 38s) (* self.rely 1.2d)) (+ self.x 30s) (var 0s) (var 2349s))
0x000888:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (- -2s self.stetch) (+ (+ self.y 26s) (* self.rely 1.2d)) (- self.x 28s) (var 0s) (var 2352s))
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (+ 2s self.stetch) (+ (+ self.y 26s) (* self.rely 1.2d)) (+ self.x 30s) (var 0s) (var 2352s))
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (+ 2s self.stetch) (+ (+ self.y 22s) (* self.rely 1s)) self.x (var 0s) (var 2356s))
    if !(== self.shrug 0s) goto 0x000AB4
0x000A24:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.headrot (var 2s) (+ 2s self.stetch) (+ (+ self.y (* self.rely 1.2d)) self.heady) (+ self.x self.headx) global.faceemotion (var 2357s))
0x000AB4:
    if !(== self.shrug 1s) goto 0x000B84
0x000AC8:
    self.shrug_x = (+ self.shrug_x 1s)
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.headrot (var 2s) (+ 2s self.stetch) (+ (+ self.y (* self.rely 1.2d)) self.heady) (+ self.x self.headx) (floor[]:int32 (/ self.shrug_x (double 6s))) (var 2359s))
0x000B84:
    if !(== self.aligncon 1s) goto 0x000C4C
0x000B98:
    self.normal = 0s
    self.xxx = self.mouse_x
    self.yyy = self.mouse_y
    self.xxx = 320s
    self.yyy = 45s
    if !(== self.s_s 1s) goto 0x000BFC
0x000BF0:
    self.yyy = 100s
0x000BFC:
    self.xxoff = (- self.x self.xxx)
    self.yyoff = (- self.y self.yyy)
    self.aligncon = 2s
    self.altimer = 0s
0x000C4C:
    if !(== self.aligncon 2s) goto 0x000F54
0x000C60:
    self.image_alpha = 1s
    if !(> (abs[]:int32 self.relx) 1s) goto 0x000CAC
0x000C88:
    self.relx = (* self.relx 0.7d)
    goto 0x000CB8
0x000CAC:
    self.relx = 0s
0x000CB8:
    if !(> (abs[]:int32 self.rely) 1s) goto 0x000CF8
0x000CD4:
    self.rely = (* self.rely 0.7d)
    goto 0x000D04
0x000CF8:
    self.rely = 0s
0x000D04:
    if !(> (abs[]:int32 self.yyoff) 1s) goto 0x000D44
0x000D20:
    self.yyoff = (* self.yyoff 0.7d)
    goto 0x000D50
0x000D44:
    self.yyoff = 0s
0x000D50:
    if !(> (abs[]:int32 self.xxoff) 1s) goto 0x000D90
0x000D6C:
    self.xxoff = (* self.xxoff 0.7d)
    goto 0x000D9C
0x000D90:
    self.xxoff = 0s
0x000D9C:
    if !(> (abs[]:int32 self.armrot_l) 1s) goto 0x000DDC
0x000DB8:
    self.armrot_l = (* self.armrot_l 0.7d)
    goto 0x000DE8
0x000DDC:
    self.armrot_l = 0s
0x000DE8:
    if !(> (abs[]:int32 self.armrot_r) 1s) goto 0x000E28
0x000E04:
    self.armrot_r = (* self.armrot_r 0.7d)
    goto 0x000E34
0x000E28:
    self.armrot_r = 0s
0x000E34:
    if !(> (abs[]:int32 self.torsorot) 1s) goto 0x000E74
0x000E50:
    self.torsorot = (* self.torsorot 0.7d)
    goto 0x000E80
0x000E74:
    self.torsorot = 0s
0x000E80:
    if !(> (abs[]:int32 self.headrot) 1s) goto 0x000EC0
0x000E9C:
    self.headrot = (* self.headrot 0.7d)
    goto 0x000ECC
0x000EC0:
    self.headrot = 0s
0x000ECC:
    self.altimer = (+ self.altimer 1s)
    self.x = (+ self.xxx self.xxoff)
    self.y = (+ self.yyy self.yyoff)
    if !(> self.altimer 15s) goto 0x000F54
0x000F30:
    self.image_alpha = 1s
    self.aligncon = 3s
    self.aimage = 0s
0x000F54:
    if !(== self.aligncon 4s) goto 0x001034
0x000F68:
    self.heady = 0s
    self.headx = 0s
    self.specialarm = 0s
    self.arm_alpha = 0s
    self.relx = 0s
    self.rely = 0s
    self.xxoff = 0s
    self.yyoff = 0s
    self.armrot_l = 0s
    self.armrot_r = 0s
    self.torsorot = 0s
    self.headrot = 0s
    self.aligncon = 0s
    self.siner = 0s
    self.aimage = 1s
    self.normal = 1s
    self.altimer = 0s
0x001034:
    if !(== global.debug 1s) goto 0x0011C4
0x001048:
    if !(bool (keyboard_check_pressed[]:int32 (var 83s))) goto 0x001074
0x001060:
    push (== self.aligncon 3s)
    goto 0x001078
0x001074:
    push 0s
0x001078:
    if !pop goto 0x001094
0x00107C:
    self.type = 0s
    self.starcon = 1s
0x001094:
    if !(bool (keyboard_check_pressed[]:int32 (var 66s))) goto 0x0010C0
0x0010AC:
    push (== self.aligncon 3s)
    goto 0x0010C4
0x0010C0:
    push 0s
0x0010C4:
    if !pop goto 0x0010E0
0x0010C8:
    self.type = 1s
    self.starcon = 1s
0x0010E0:
    if !(bool (keyboard_check_pressed[]:int32 (var 87s))) goto 0x00110C
0x0010F8:
    push (== self.aligncon 3s)
    goto 0x001110
0x00110C:
    push 0s
0x001110:
    if !pop goto 0x00112C
0x001114:
    self.type = 1s
    self.bladecon = 1s
0x00112C:
    if !(bool (keyboard_check_pressed[]:int32 (var 71s))) goto 0x001158
0x001144:
    push (== self.aligncon 3s)
    goto 0x00115C
0x001158:
    push 0s
0x00115C:
    if !pop goto 0x001178
0x001160:
    self.type = 1s
    self.guncon = 1s
0x001178:
    if !(bool (keyboard_check_pressed[]:int32 (var 72s))) goto 0x0011A4
0x001190:
    push (== self.aligncon 3s)
    goto 0x0011A8
0x0011A4:
    push 0s
0x0011A8:
    if !pop goto 0x0011C4
0x0011AC:
    self.type = 1s
    self.gonercon = 1s
0x0011C4:
    if !(> self.starcon 0s) goto 0x001850
0x0011D8:
    if !(== self.starcon 1s) goto 0x001250
0x0011EC:
    global.faceemotion = 2s
    call (caster_play[]:int32 (var 1s) (var 0.8d) self.powersfx)
    self.armraise = 20s
    self.starcon = 2s
    stog.alarm[5s] = 1s
0x001250:
    if !(== self.starcon 3s) goto 0x001284
0x001264:
    self.starcon = 4s
    stog.alarm[5s] = 1s
0x001284:
    if !(== self.starcon 5s) goto 0x00131C
0x001298:
    self.armrot_l = (- self.armrot_l self.armraise)
    self.armrot_r = (+ self.armrot_r self.armraise)
    self.armraise = (- self.armraise 2s)
    if !(<= self.armraise 0s) goto 0x00131C
0x0012FC:
    self.starcon = 6s
    stog.alarm[5s] = 20s
0x00131C:
    if !(>= self.starcon 5s) goto 0x001344
0x001330:
    push (<= self.starcon 9s)
    goto 0x001348
0x001344:
    push 0s
0x001348:
    if !pop goto 0x00160C
0x00134C:
    self.a_xx1 = (- self.x 28s)
    self.a_yy1 = (+ (+ self.y 38s) (* self.rely 1.2d))
    self.a_x1_add = (lengthdir_x[]:int32 (- (- self.armrot_l 90s) 15s) (var 90s))
    self.a_y1_add = (lengthdir_y[]:int32 (- (- self.armrot_l 90s) 15s) (var 90s))
    if (<= 2s 0) goto 0x0014A8
0x001410:
    push 2s
    self.hl = (instance_create[]:int32 (var 572s) (+ self.a_yy1 self.a_y1_add) (+ self.a_xx1 self.a_x1_add))
    push (+ self.depth 1s)
    stog.depth* = (int32 self.hl)
    push self.type
    stog.type* = (int32 self.hl)
    if (bool (- pop 1)) goto 0x001410
0x0014A8:
    push (- pop 1)
    pop
    self.a_xx2 = (+ self.x 30s)
    self.a_yy2 = (+ (+ self.y 38s) (* self.rely 1.2d))
    self.a_x2_add = (lengthdir_x[]:int32 (+ (- self.armrot_r 90s) 15s) (var 90s))
    self.a_y2_add = (lengthdir_y[]:int32 (+ (- self.armrot_r 90s) 15s) (var 90s))
    if (<= 2s 0) goto 0x001608
0x001570:
    push 2s
    self.hl = (instance_create[]:int32 (var 572s) (+ self.a_yy2 self.a_y2_add) (+ self.a_xx2 self.a_x2_add))
    push (+ self.depth 1s)
    stog.depth* = (int32 self.hl)
    push self.type
    stog.type* = (int32 self.hl)
    if (bool (- pop 1)) goto 0x001570
0x001608:
    push (- pop 1)
    pop
0x00160C:
    if !(== self.starcon 7s) goto 0x001640
0x001620:
    self.starcon = 8s
    stog.alarm[5s] = 15s
0x001640:
    if !(== self.starcon 9s) goto 0x001660
0x001654:
    self.starcon = 12s
0x001660:
    if !(== self.starcon 12s) goto 0x001750
0x001674:
    if !(== self.type 0s) goto 0x0016B0
0x001688:
    self.gen = (instance_create[]:int32 (var 580s) (var 0s) (var 0s))
0x0016B0:
    if !(== self.type 1s) goto 0x0016EC
0x0016C4:
    self.gen = (instance_create[]:int32 (var 586s) (var 0s) (var 0s))
0x0016EC:
    push self.h_mode
    stog.h_mode* = (int32 self.gen)
    self.starcon = 13s
    stog.alarm[5s] = 300s
    if !(== self.type 1s) goto 0x001750
0x00173C:
    stog.alarm[5s] = 180s
0x001750:
    if !(== self.starcon 13s) goto 0x001798
0x001764:
    if !(> self.image_alpha 0s) goto 0x001798
0x001778:
    self.image_alpha = (- self.image_alpha 0.05d)
0x001798:
    if !(== self.starcon 14s) goto 0x001850
0x0017AC:
    global.faceemotion = 0s
    pushenv (int32 self.gen) 0x0017D4
0x0017C8:
    call (instance_destroy[]:int32 )
0x0017D4:
    popenv 0x0017C8
0x0017D8:
    self.armrot_l = 0s
    self.armrot_r = 0s
    self.image_alpha = (+ self.image_alpha 0.05d)
    if !(>= self.image_alpha 1s) goto 0x001850
0x001824:
    call (event_user[]:int32 (var 1s))
    self.aligncon = 4s
    self.starcon = 0s
0x001850:
    if !(> self.bladecon 0s) goto 0x001B38
0x001864:
    if !(== self.bladecon 1s) goto 0x0018B0
0x001878:
    self.armraise = 20s
    self.bladecon = 2s
    self.specialarm = 1s
    stog.alarm[6s] = 30s
0x0018B0:
    if !(== self.bladecon 2s) goto 0x0018F8
0x0018C4:
    if !(> self.arm_alpha 0s) goto 0x0018F8
0x0018D8:
    self.arm_alpha = (- self.arm_alpha 0.05d)
0x0018F8:
    if !(== self.bladecon 3s) goto 0x001970
0x00190C:
    self.gen = (instance_create[]:int32 (var 589s) self.y self.x)
    push self.h_mode
    stog.h_mode* = (int32 self.gen)
    self.bladecon = 4s
    stog.alarm[6s] = 30s
0x001970:
    if !(== self.bladecon 10s) goto 0x0019C0
0x001984:
    self.heady = 0s
    self.headrot = 0s
    self.specialarm = 1s
    self.arm_alpha = 0s
    self.bladecon = 11s
0x0019C0:
    if !(== self.bladecon 11s) goto 0x001AAC
0x0019D4:
    self.image_alpha = 0s
    self.heady = 0s
    self.headx = 0s
    self.specialarm = 0s
    self.arm_alpha = 1s
    self.x = 320s
    self.y = 50s
    self.relx = 0s
    self.rely = 0s
    self.xxoff = 0s
    self.yyoff = 0s
    self.armrot_l = 0s
    self.armrot_r = 0s
    self.torsorot = 0s
    self.headrot = 0s
    self.siner = 0s
    self.altimer = 0s
    self.bladecon = 12s
0x001AAC:
    if !(== self.bladecon 12s) goto 0x001B38
0x001AC0:
    self.siner = 0s
    self.image_alpha = (+ self.image_alpha 0.05d)
    if !(>= self.image_alpha 1s) goto 0x001B38
0x001B00:
    call (event_user[]:int32 (var 1s))
    self.specialarm = 0s
    self.aligncon = 4s
    self.bladecon = 0s
0x001B38:
    if !(> self.guncon 0s) goto 0x001D3C
0x001B4C:
    if !(== self.guncon 1s) goto 0x001B98
0x001B60:
    self.arm_alpha = 1s
    self.guncon = 2s
    self.specialarm = 2s
    stog.alarm[7s] = 20s
0x001B98:
    if !(== self.guncon 2s) goto 0x001BE0
0x001BAC:
    if !(> self.arm_alpha 0s) goto 0x001BE0
0x001BC0:
    self.arm_alpha = (- self.arm_alpha 0.05d)
0x001BE0:
    if !(== self.guncon 3s) goto 0x001C68
0x001BF4:
    self.gen = (instance_create[]:int32 (var 583s) (+ self.y 15s) (+ self.x 70s))
    push self.h_mode
    stog.h_mode* = (int32 self.gen)
    self.guncon = 4s
    stog.alarm[7s] = 30s
0x001C68:
    if !(== self.guncon 7s) goto 0x001CBC
0x001C7C:
    self.arm_alpha = (+ self.arm_alpha 0.1d)
    if !(>= self.arm_alpha 1s) goto 0x001CBC
0x001CB0:
    self.guncon = 8s
0x001CBC:
    if !(== self.guncon 8s) goto 0x001CFC
0x001CD0:
    self.aligncon = 1s
    self.guncon = 9s
    stog.alarm[7s] = 10s
0x001CFC:
    if !(== self.guncon 10s) goto 0x001D3C
0x001D10:
    call (event_user[]:int32 (var 1s))
    self.aligncon = 4s
    self.guncon = 0s
0x001D3C:
    if !(> self.gonercon 0s) goto 0x002064
0x001D50:
    if !(== self.gonercon 1s) goto 0x001D98
0x001D64:
    stog.flag[20s] = 1s
    self.gonercon = 2s
    stog.alarm[8s] = 1s
0x001D98:
    if !(== self.gonercon 3s) goto 0x001DCC
0x001DAC:
    self.gonercon = 4s
    stog.alarm[8s] = 30s
0x001DCC:
    if !(== self.gonercon 5s) goto 0x001E40
0x001DE0:
    pushenv 743s 0x001DF4
0x001DE8:
    self.ignore_border = 1s
0x001DF4:
    popenv 0x001DE8
0x001DF8:
    self.ws = (instance_create[]:int32 (var 592s) (var 0s) (var 0s))
    self.gonercon = 6s
    stog.alarm[8s] = 40s
0x001E40:
    if !(== self.gonercon 7s) goto 0x001E88
0x001E54:
    self.hg = (instance_create[]:int32 (var 594s) (var 16s) (var 176s))
    self.gonercon = 8s
0x001E88:
    if !(== self.gonercon 10s) goto 0x001FB8
0x001E9C:
    push 2s
    stog.con* = (int32 self.ws)
    self.shrug = 0s
    self.specialnormal = 1s
    global.faceemotion = 0s
    stog.flag[20s] = 0s
    pushenv 593s 0x001F00
0x001EF4:
    call (instance_destroy[]:int32 )
0x001F00:
    popenv 0x001EF4
0x001F04:
    call (caster_play[]:int32 (var 0.8d) (var 0.9d) self.cr)
    [obj_heart].image_alpha = 1s
    self.image_alpha = 0s
    pushenv 743s 0x001FA8
0x001F58:
    self.ignore_border = 0s
    self.x = 312s
    push -5s
    push 2s:idealborder
    self.y = (/ (+ -5s 3s:idealborder) (double 2s))
0x001FA8:
    popenv 0x001F58
0x001FAC:
    self.gonercon = 11s
0x001FB8:
    if !(== self.gonercon 11s) goto 0x002038
0x001FCC:
    [obj_heart].depth = 0s
    self.image_alpha = (+ self.image_alpha 0.1d)
    if !(>= self.image_alpha 1s) goto 0x002038
0x00200C:
    self.image_alpha = 1s
    self.gonercon = 12s
    stog.alarm[8s] = 30s
0x002038:
    if !(== self.gonercon 13s) goto 0x002064
0x00204C:
    global.mnfight = 5s
    self.gonercon = 0s
0x002064:
    if !(== global.debug 1s) goto 0x002140
0x002078:
    if !(bool (keyboard_check_pressed[]:int32 (var 32s))) goto 0x0020DC
0x002090:
    self.s_s = 0s
    if !(== self.aligncon 0s) goto 0x0020BC
0x0020B0:
    self.aligncon = 1s
0x0020BC:
    if !(== self.aligncon 3s) goto 0x0020DC
0x0020D0:
    self.aligncon = 4s
0x0020DC:
    if !(bool (keyboard_check_pressed[]:int32 (var 17s))) goto 0x002140
0x0020F4:
    self.s_s = 1s
    if !(== self.aligncon 0s) goto 0x002120
0x002114:
    self.aligncon = 1s
0x002120:
    if !(== self.aligncon 3s) goto 0x002140
0x002134:
    self.aligncon = 4s
0x002140:
    if !(== self.specialnormal 1s) goto 0x0021A0
0x002154:
    self.sn = (+ self.sn 1s)
    self.y = (+ 50s (* (sin[]:int32 (/ self.sn (double 8s))) 4s))
0x0021A0:
    if !(== self.specialnormal 0s) goto 0x0021DC
0x0021B4:
    if !(== global.mnfight 0s) goto 0x0021DC
0x0021C8:
    push (== global.myfight 0s)
    goto 0x0021E0
0x0021DC:
    push 0s
0x0021E0:
    if !pop goto 0x002420
0x0021E4:
    if (== global.bmenuno 1s) goto 0x00220C
0x0021F8:
    push (== global.bmenuno 2s)
    goto 0x002210
0x00220C:
    push 1s
0x002210:
    if !pop goto 0x002420
0x002214:
    stog.monstername[0s] = "               "
    if !(bool (instance_exists[]:int32 (var 785s))) goto 0x002254
0x002244:
    [OBJ_INSTAWRITER].originalstring = "\\W   *                "
0x002254:
    self.n_siner = (+ self.n_siner 1s)
    self.fullphrase = " Asriel Dreemurr "
    self.len = (string_length[]:int32 self.fullphrase)
    call (draw_set_font[]:int32 (var 1s))
    self.letter = "A"
    self.i = 0s
    if !(< self.i self.len) goto 0x002420
0x0022DC:
    self.tcolor = (make_color_hsv[]:int32 (var 255s) (var 140s) (+ (* self.siner 8s) (* self.i 8s)))
    call (draw_set_color[]:int32 self.tcolor)
    self.letter = (string_char_at[]:int32 self.i self.fullphrase)
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) self.letter (+ 270s (* (cos[]:int32 (/ (+ self.siner self.i) (double 5s))) 4s)) (+ (+ 110s (* self.i 16s)) (* (sin[]:int32 (/ (+ self.siner self.i) (double 5s))) 8s)))
    self.i = (+ self.i 1s)
    goto 0x0022C4
0x002420:
    push -5s
    if !(== 20s:flag 1s) goto 0x00244C
0x00243C:
    self.shrug = 1s
    goto 0x002458
0x00244C:
    self.shrug = 0s
0x002458:
    exit
