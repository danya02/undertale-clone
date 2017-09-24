0x000000:
    stog.flag[17s] = 1s
    if !(== self.STOPPER 0s) goto 0x000D1C
0x000028:
    if !(== self.d 0s) goto 0x000048
0x00003C:
    call (scr_depth[]:int32 )
0x000048:
    if !(== self.fun 0s) goto 0x000100
0x00005C:
    self.myinteract = 0s
    if !(== self.speed 0s) goto 0x000094
0x00007C:
    self.image_index = 0s
    self.image_speed = 0s
0x000094:
    if !(> self.speed 0s) goto 0x000100
0x0000A8:
    self.image_speed = 0.2d
    if (== self.image_index 1s) goto 0x0000E4
0x0000D0:
    push (== self.image_index 3s)
    goto 0x0000E8
0x0000E4:
    push 1s
0x0000E8:
    if !pop goto 0x000100
0x0000EC:
    call (snd_play[]:int32 (var 16s))
0x000100:
    if !(== self.fun 3s) goto 0x000158
0x000114:
    if (== self.image_index 1s) goto 0x00013C
0x000128:
    push (== self.image_index 3s)
    goto 0x000140
0x00013C:
    push 1s
0x000140:
    if !pop goto 0x000158
0x000144:
    call (snd_play[]:int32 (var 16s))
0x000158:
    if !(== self.con 0s) goto 0x0001F4
0x00016C:
    stog.alarm[4s] = 32s
    self.con = 1s
    if !(== self.new 1s) goto 0x0001F4
0x0001A0:
    stog.alarm[4s] = 20s
    self.blc = (instance_create[]:int32 (var 1337s) (var 999s) (var 999s))
    self.new = 0s
    self.con = 3s
0x0001F4:
    if !(== self.con 2s) goto 0x000264
0x000208:
    self.blc = (instance_create[]:int32 (var 1337s) self.y self.x)
    call (snd_play[]:int32 (var 29s))
    self.con = 3s
    stog.alarm[4s] = 25s
0x000264:
    if !(== self.con 4s) goto 0x00028C
0x000278:
    push (!= self.room 137s)
    goto 0x000290
0x00028C:
    push 0s
0x000290:
    if !pop goto 0x0003B8
0x000294:
    pushenv (int32 self.blc) 0x0002B0
0x0002A4:
    call (instance_destroy[]:int32 )
0x0002B0:
    popenv 0x0002A4
0x0002B4:
    self.spd = 5s
    push -5s
    if !(> 99s:flag 3s) goto 0x0002E8
0x0002DC:
    self.spd = 4s
0x0002E8:
    call (move_towards_point[]:int32 self.spd (- 1570.y 20s) (- 1570.x 4s))
    if !(> (abs[]:int32 self.vspeed) (abs[]:int32 self.hspeed)) goto 0x000380
0x000344:
    if !(< self.vspeed 0s) goto 0x00036C
0x000358:
    self.sprite_index = self.usprite
    goto 0x00037C
0x00036C:
    self.sprite_index = self.dsprite
0x00037C:
    goto 0x0003B8
0x000380:
    if !(< self.hspeed 0s) goto 0x0003A8
0x000394:
    self.sprite_index = self.lsprite
    goto 0x0003B8
0x0003A8:
    self.sprite_index = self.rsprite
0x0003B8:
    if !(== self.con 4s) goto 0x0003E0
0x0003CC:
    push (== self.room 137s)
    goto 0x0003E4
0x0003E0:
    push 0s
0x0003E4:
    if !pop goto 0x000504
0x0003E8:
    pushenv (int32 self.blc) 0x000404
0x0003F8:
    call (instance_destroy[]:int32 )
0x000404:
    popenv 0x0003F8
0x000408:
    if !(> 1570.x (+ self.x 20s)) goto 0x000458
0x000428:
    self.hspeed = 3s
    self.image_speed = 0.2d
    self.sprite_index = self.rsprite
0x000458:
    if !(<= 1570.x (+ self.x 20s)) goto 0x0004A8
0x000478:
    self.hspeed = -3s
    self.image_speed = 0.2d
    self.sprite_index = self.lsprite
0x0004A8:
    if !(> self.x 140s) goto 0x0004E4
0x0004BC:
    if !(< self.x 160s) goto 0x0004E4
0x0004D0:
    push (== self.sans 0s)
    goto 0x0004E8
0x0004E4:
    push 0s
0x0004E8:
    if !pop goto 0x000504
0x0004EC:
    self.con = 8s
    self.sans = 1s
0x000504:
    if !(== self.active 1s) goto 0x00052C
0x000518:
    push (== global.interact 0s)
    goto 0x000530
0x00052C:
    push 0s
0x000530:
    if !pop goto 0x0005D8
0x000534:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) (- (+ self.y self.sprite_height) 2s) (- (+ self.x self.sprite_width) 6s) (- (+ self.y self.sprite_height) 20s) (+ self.x 6s))) goto 0x0005D8
0x0005C0:
    self.speed = 0s
    self.con = 5s
0x0005D8:
    if !(== self.active 1s) goto 0x000614
0x0005EC:
    if !(== global.interact 0s) goto 0x000614
0x000600:
    push (== self.room 137s)
    goto 0x000618
0x000614:
    push 0s
0x000618:
    if !pop goto 0x0006C0
0x00061C:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) (- (+ self.y self.sprite_height) 80s) (- (+ self.x self.sprite_width) 6s) (+ (+ self.y self.sprite_height) 60s) (+ self.x 6s))) goto 0x0006C0
0x0006A8:
    self.speed = 0s
    self.con = 5s
0x0006C0:
    if !(== self.con 5s) goto 0x00076C
0x0006D4:
    stog.alarm[4s] = -1s
    self.active = 0s
    self.speed = 0s
    global.interact = 1s
    self.con = 6s
    global.border = 12s
    global.battlegroup = 47s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.talkedto = 0s
0x00076C:
    if !(== self.con 6s) goto 0x000794
0x000780:
    push (== global.interact 0s)
    goto 0x000798
0x000794:
    push 0s
0x000798:
    if !pop goto 0x00099C
0x00079C:
    self.active = 1s
    self.con = 0s
    if !(== self.room 134s) goto 0x000804
0x0007C8:
    if !(> 1570.y 600s) goto 0x0007EC
0x0007DC:
    self.y = 500s
    goto 0x0007F8
0x0007EC:
    self.y = 640s
0x0007F8:
    self.x = 160s
0x000804:
    if !(== self.room 135s) goto 0x000870
0x000818:
    if !(== global.entrance 1s) goto 0x000844
0x00082C:
    self.y = (+ 1570.y 130s)
0x000844:
    if !(== global.entrance 2s) goto 0x000870
0x000858:
    self.y = (- 1570.y 100s)
0x000870:
    if !(== self.room 136s) goto 0x0008DC
0x000884:
    if !(== global.entrance 1s) goto 0x0008B0
0x000898:
    self.x = (- 1570.x 100s)
0x0008B0:
    if !(== global.entrance 2s) goto 0x0008DC
0x0008C4:
    self.x = (+ 1570.x 100s)
0x0008DC:
    if !(== self.room 137s) goto 0x000948
0x0008F0:
    if !(== global.entrance 1s) goto 0x00091C
0x000904:
    self.x = (- 1570.x 60s)
0x00091C:
    if !(== global.entrance 2s) goto 0x000948
0x000930:
    self.x = (+ 1570.x 60s)
0x000948:
    push -5s
    if !(== 350s:flag 1s) goto 0x00099C
0x000964:
    global.mercy = 0s
    call (caster_free[]:int32 (var -3s))
    global.plot = 122s
    call (instance_destroy[]:int32 )
0x00099C:
    if !(== self.con 8s) goto 0x0009DC
0x0009B0:
    self.hspeed = 0s
    self.con = 9s
    stog.alarm[4s] = 15s
0x0009DC:
    if !(== self.con 10s) goto 0x000A20
0x0009F0:
    self.sprite_index = self.usprite
    self.con = 11s
    stog.alarm[4s] = 30s
0x000A20:
    if !(== self.con 12s) goto 0x000A74
0x000A34:
    self.sprite_index = 1430s
    self.image_speed = 0.2d
    self.con = 13s
    stog.alarm[4s] = 30s
0x000A74:
    if !(== self.con 14s) goto 0x000AAC
0x000A88:
    self.sans = 1s
    self.con = 4s
    self.active = 1s
0x000AAC:
    if !(== self.con 20s) goto 0x000B18
0x000AC0:
    if !(< (distance_to_object[]:int32 (var 1570s)) 60s) goto 0x000B18
0x000ADC:
    self.speed = 0s
    self.image_index = 0s
    self.image_speed = 0s
    self.active = 0s
    self.con = 21s
0x000B18:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000B48
0x000B34:
    push (== self.con 21s)
    goto 0x000B4C
0x000B48:
    push 0s
0x000B4C:
    if !pop goto 0x000B68
0x000B50:
    self.active = 1s
    self.con = 4s
0x000B68:
    if !(== self.active 4s) goto 0x000C68
0x000B7C:
    stog.rememberx[(int32 self.i)] = self.x
    stog.remembery[(int32 self.i)] = self.y
    self.i = 60s
    if !(> self.i 0s) goto 0x000C68
0x000BDC:
    push -1s
    stog.rememberx[(int32 self.i)] = (int32 (- self.i 1s)):rememberx
    push -1s
    stog.remembery[(int32 self.i)] = (int32 (- self.i 1s)):remembery
    self.i = (- self.i 1s)
    goto 0x000BC8
0x000C68:
    push -5s
    if !(== 350s:flag 1s) goto 0x000C98
0x000C84:
    push (== self.STOPPER 0s)
    goto 0x000C9C
0x000C98:
    push 0s
0x000C9C:
    if !pop goto 0x000D1C
0x000CA0:
    global.mercy = 0s
    call (caster_free[]:int32 (var -3s))
    call (audio_stop_all[]:int32 )
    global.plot = 122s
    global.interact = 0s
    self.STOPPER = 1s
    self.visible = 0s
    self.con = 40s
    stog.alarm[4s] = 2s
0x000D1C:
    if !(== self.con 41s) goto 0x000D5C
0x000D30:
    stog.flag[17s] = 0s
    call (audio_stop_all[]:int32 )
    call (instance_destroy[]:int32 )
0x000D5C:
    exit
