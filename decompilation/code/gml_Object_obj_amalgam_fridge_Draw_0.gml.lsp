0x000000:
    if !(< self.alpha 1s) goto 0x000068
0x000014:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
0x000068:
    if !(== self.amalgam 1s) goto 0x0000DC
0x00007C:
    call (draw_sprite_ext[]:int32 self.alpha (var 16777215) (var 0s) (var 1s) (var 1s) self.y self.x (floor[]:int32 self.anim) (var 2147s))
0x0000DC:
    if !(== self.con 1s) goto 0x0001E8
0x0000F0:
    if (< 1570.x 122s) goto 0x000118
0x000104:
    push (> 1570.x 220s)
    goto 0x00011C
0x000118:
    push 1s
0x00011C:
    if !pop goto 0x0001E8
0x000120:
    if !(== global.interact 0s) goto 0x0001E8
0x000134:
    self.con = 2s
    call (caster_pause[]:int32 global.currentsong)
    global.interact = 1s
    if !(< 1570.x 160s) goto 0x000180
0x000174:
    global.facing = 1s
0x000180:
    if !(> 1570.x 200s) goto 0x0001A0
0x000194:
    global.facing = 3s
0x0001A0:
    self.tr = (caster_load[]:int32 (var "music/sfx_generate.ogg"))
    call (caster_play[]:int32 (var 1s) (var 0.8d) self.tr)
0x0001E8:
    if !(== self.con 2s) goto 0x000248
0x0001FC:
    self.amalgam = 1s
    self.image_index = 0s
    self.image_speed = 0s
    self.con = 3.1d
    stog.alarm[4s] = 50s
0x000248:
    if !(== self.con 3.1d) goto 0x0002E4
0x000264:
    global.interact = 1s
    if !(< 1570.x 160s) goto 0x000290
0x000284:
    global.facing = 1s
0x000290:
    if !(> 1570.x 200s) goto 0x0002B0
0x0002A4:
    global.facing = 3s
0x0002B0:
    if !(< self.alpha 1s) goto 0x0002E4
0x0002C4:
    self.alpha = (+ self.alpha 0.1d)
0x0002E4:
    if !(== self.con 4.1d) goto 0x000340
0x000300:
    call (caster_play[]:int32 (var 0.7d) (var 0.8d) self.tr)
    self.con = 4s
0x000340:
    if !(== self.con 4s) goto 0x0003C0
0x000354:
    self.anim = (+ self.anim 0.5d)
    if !(>= self.anim 8s) goto 0x0003C0
0x000388:
    self.anim = 8s
    self.image_speed = 0s
    self.con = 5s
    stog.alarm[4s] = 50s
0x0003C0:
    if !(== self.con 6s) goto 0x000464
0x0003D4:
    call (caster_free[]:int32 self.tr)
    global.battlegroup = 84s
    global.mercy = 1s
    global.border = 0s
    stog.flag[16s] = 0s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 7s
    stog.alarm[4s] = 32s
0x000464:
    if !(== self.con 8s) goto 0x000548
0x000478:
    global.interact = 0s
    global.mercy = 0s
    call (caster_resume[]:int32 global.currentsong)
    self.myinteract = 0s
    self.image_blend = 16711680
    self.sprite_index = 2110s
    self.myinteract = 0s
    stog.flag[482s] = 1s
    self.image_speed = 0.1d
    call (scr_tempsave[]:int32 )
    self.con = 9s
    self.amalgam = 0s
    self.alpha = 0s
    self.x = 170s
    self.y = 138s
0x000548:
    if !(== self.con 10s) goto 0x000578
0x00055C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00057C
0x000578:
    push 0s
0x00057C:
    if !pop goto 0x0005AC
0x000580:
    global.interact = 0s
    stog.flag[482s] = 2s
    call (instance_destroy[]:int32 )
0x0005AC:
    exit
