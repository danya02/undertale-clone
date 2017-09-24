0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    if !(== self.dont 1s) goto 0x00005C
0x000040:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000060
0x00005C:
    push 0s
0x000060:
    if !pop goto 0x0000BC
0x000064:
    global.interact = 1s
    self.dont = 2s
    pushenv 1561s 0x000098
0x000084:
    call (caster_stop[]:int32 self.water)
0x000098:
    popenv 0x000084
0x00009C:
    call (caster_pause[]:int32 global.currentsong)
    self.acon = 1s
0x0000BC:
    if !(> self.acon 0s) goto 0x000524
0x0000D0:
    self.wcon = 0s
    if !(== self.acon 1s) goto 0x000154
0x0000F0:
    if !(< self.aanim 14s) goto 0x000128
0x000104:
    self.aanim = (+ self.aanim 0.1d)
    goto 0x000154
0x000128:
    self.aanim = 14s
    self.acon = 2s
    stog.alarm[4s] = 50s
0x000154:
    if !(== self.acon 3s) goto 0x0001E4
0x000168:
    self.tr = (caster_load[]:int32 (var "music/sfx_generate.ogg"))
    call (caster_play[]:int32 (var 0.75d) (var 0.9d) self.tr)
    self.aanim = 0s
    self.acon = 4s
    stog.alarm[4s] = 50s
0x0001E4:
    if !(== self.acon 4s) goto 0x000244
0x0001F8:
    self.aanim = (+ self.aanim 0.334d)
    if !(>= self.aanim 7s) goto 0x000244
0x00022C:
    self.aanim = (- self.aanim 2s)
0x000244:
    if !(== self.acon 5s) goto 0x0002E8
0x000258:
    call (caster_free[]:int32 self.tr)
    global.battlegroup = 85s
    global.mercy = 1s
    global.border = 0s
    stog.flag[16s] = 0s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.acon = 6s
    stog.alarm[4s] = 32s
0x0002E8:
    if !(< self.acon 7s) goto 0x000308
0x0002FC:
    global.interact = 1s
0x000308:
    if !(== self.acon 7s) goto 0x000438
0x00031C:
    pushenv 1570s 0x000330
0x000324:
    self.uncan = 0s
0x000330:
    popenv 0x000324
0x000334:
    global.mercy = 0s
    call (caster_resume[]:int32 global.currentsong)
    pushenv 1561s 0x000368
0x00035C:
    self.wcon = 0s
0x000368:
    popenv 0x00035C
0x00036C:
    self.myinteract = 0s
    stog.alarm[4s] = 10s
    stog.flag[486s] = 10s
    stog.flag[487s] = 3s
    if !(< 1570.x 110s) goto 0x0003DC
0x0003C8:
    stog.flag[487s] = 2s
0x0003DC:
    if !(< 1570.x 75s) goto 0x000404
0x0003F0:
    stog.flag[487s] = 1s
0x000404:
    call (event_user[]:int32 (var 0s))
    stog.flag[481s] = 1s
    self.acon = -10s
0x000438:
    if (== self.acon 1s) goto 0x000460
0x00044C:
    push (== self.acon 2s)
    goto 0x000464
0x000460:
    push 1s
0x000464:
    if !pop goto 0x0004A4
0x000468:
    call (draw_sprite[]:int32 self.y (+ self.x 6s) (floor[]:int32 self.aanim) (var 2124s))
0x0004A4:
    if (== self.acon 4s) goto 0x0004E0
0x0004B8:
    if (== self.acon 5s) goto 0x0004E0
0x0004CC:
    push (== self.acon 6s)
    goto 0x0004E4
0x0004E0:
    push 1s
0x0004E4:
    if !pop goto 0x000524
0x0004E8:
    call (draw_sprite[]:int32 self.y (+ self.x 6s) (floor[]:int32 self.aanim) (var 2125s))
0x000524:
    if !(== self.wcon 1s) goto 0x000598
0x000538:
    self.anim = (+ self.anim 1s)
    call (draw_sprite[]:int32 self.y (+ self.x 10s) (floor[]:int32 (/ self.anim (double 3s))) (var 2123s))
0x000598:
    if !(== self.how_bad_me_key 1s) goto 0x000638
0x0005AC:
    self.kanim = (+ self.kanim 0.1d)
    call (draw_sprite_ext[]:int32 (var 1s) (var 255s) (var 0s) (var 1s) (var 1s) (+ self.y 6s) (+ self.x 13s) (floor[]:int32 self.kanim) (var 2110s))
0x000638:
    exit
