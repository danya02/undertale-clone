0x000000:
    if !(== self.con 50s) goto 0x000098
0x000014:
    [obj_labfan].sprite_index = 2131s
    call (snd_play[]:int32 (var 106s))
    global.interact = 1s
    pushenv 1555s 0x000074
0x000048:
    call (caster_loop[]:int32 (var 3s) (var 0.5d) self.fansfx)
0x000074:
    popenv 0x000048
0x000078:
    self.con = 51s
    stog.alarm[4s] = 90s
0x000098:
    if !(== self.con 51s) goto 0x0000E4
0x0000AC:
    global.interact = 1s
    pushenv 1555s 0x0000E0
0x0000C0:
    self.image_alpha = (- self.image_alpha 0.01d)
0x0000E0:
    popenv 0x0000C0
0x0000E4:
    if !(== self.con 52s) goto 0x000104
0x0000F8:
    self.con = 1s
0x000104:
    if !(== self.con 1s) goto 0x0001C0
0x000118:
    self.tr = (caster_load[]:int32 (var "music/sfx_generate.ogg"))
    call (caster_play[]:int32 (var 0.8d) (var 0.8d) self.tr)
    global.interact = 1s
    global.facing = 3s
    self.drawball = 1s
    stog.alarm[5s] = 2s
    stog.alarm[6s] = 10s
    self.con = 2s
0x0001C0:
    if !(== self.con 3s) goto 0x0001F4
0x0001D4:
    self.con = 4s
    stog.alarm[4s] = 30s
0x0001F4:
    if !(== self.con 5s) goto 0x000268
0x000208:
    self.y = (+ self.y 2s)
    if !(>= self.y 149s) goto 0x000268
0x000234:
    self.y = 150s
    self.con = 5.9d
    stog.alarm[4s] = 30s
0x000268:
    if !(== self.con 6.9d) goto 0x0002C4
0x000284:
    call (caster_play[]:int32 (var 0.8d) (var 0.8d) self.tr)
    self.con = 7s
0x0002C4:
    if !(== self.con 7s) goto 0x000338
0x0002D8:
    self.banim = (+ self.banim 0.334d)
    if !(>= self.banim 5s) goto 0x000338
0x00030C:
    self.banim = 5s
    self.con = 8s
    stog.alarm[4s] = 30s
0x000338:
    if !(== self.con 9s) goto 0x0003A8
0x00034C:
    self.yl = (caster_load[]:int32 (var "music/sfx_yowl.ogg"))
    global.interact = 0s
    stog.flag[17s] = 1s
    stog.alarm[7s] = 20s
    self.con = 10s
0x0003A8:
    if !(== self.con 10s) goto 0x0003E8
0x0003BC:
    if !(> self.x (- 1570.x 25s)) goto 0x0003E8
0x0003DC:
    self.con = 11s
0x0003E8:
    if !(== self.con 11s) goto 0x0004A0
0x0003FC:
    call (caster_free[]:int32 self.tr)
    call (caster_free[]:int32 self.yl)
    global.battlegroup = 86s
    global.mercy = 1s
    global.border = 0s
    stog.flag[16s] = 0s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 12s
    stog.alarm[4s] = 32s
0x0004A0:
    if !(== self.con 13s) goto 0x000530
0x0004B4:
    stog.flag[17s] = 0s
    global.interact = 0s
    pushenv 1570s 0x0004E8
0x0004DC:
    self.uncan = 0s
0x0004E8:
    popenv 0x0004DC
0x0004EC:
    global.mercy = 0s
    self.myinteract = 0s
    stog.flag[490s] = 1s
    call (scr_tempsave[]:int32 )
    call (instance_destroy[]:int32 )
0x000530:
    if !(== self.drawball 1s) goto 0x0005A4
0x000544:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) self.size self.size self.y self.x (floor[]:int32 self.banim) self.sprite_index)
0x0005A4:
    exit
