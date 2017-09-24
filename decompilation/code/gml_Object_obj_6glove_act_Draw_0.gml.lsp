0x000000:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) self.image_angle (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
    if !(> self.con 0s) goto 0x000080
0x00006C:
    push (< self.con 3s)
    goto 0x000084
0x000080:
    push 0s
0x000084:
    if !pop goto 0x000204
0x000088:
    pushenv 1617s 0x0000A4
0x000090:
    call (event_user[]:int32 (var 5s))
0x0000A4:
    popenv 0x000090
0x0000A8:
    self.image_alpha = (- self.image_alpha 0.02d)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 204s) (var 534s) (var 146s) (var 106s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 200s) (var 530s) (var 150s) (var 110s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 10s))
    global.typer = 70s
    stog.msg[0s] = "* You called for help..."
    stog.msg[1s] = "%%%"
    if !(~ (bool (instance_exists[]:int32 (var 1598s)))) goto 0x000204
0x0001E0:
    call (instance_create[]:int32 (var 1598s) (var 140s) (var 110s))
0x000204:
    if !(== self.con 2s) goto 0x000284
0x000218:
    self.type = 1s
    pushenv 1615s 0x000240
0x00022C:
    call (event_user[]:int32 (var 5s))
0x000240:
    popenv 0x00022C
0x000244:
    self.con = 2.1d
    pushenv 1585s 0x00026C
0x000260:
    self.pd = 1s
0x00026C:
    popenv 0x000260
0x000270:
    stog.alarm[4s] = 50s
0x000284:
    if !(== self.con 2.1d) goto 0x0002C0
0x0002A0:
    pushenv 1615s 0x0002BC
0x0002A8:
    call (event_user[]:int32 (var 5s))
0x0002BC:
    popenv 0x0002A8
0x0002C0:
    if !(== self.con 3s) goto 0x000350
0x0002D4:
    global.soul_rescue = 2s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 3s) (var "P") (var "FFFFF"))
    call (ini_close[]:int32 )
    pushenv 1615s 0x00034C
0x000338:
    call (event_user[]:int32 (var 4s))
0x00034C:
    popenv 0x000338
0x000350:
    if !(== self.con 3.1d) goto 0x00044C
0x00036C:
    pushenv 1598s 0x000380
0x000374:
    call (instance_destroy[]:int32 )
0x000380:
    popenv 0x000374
0x000384:
    call (snd_play[]:int32 (var 154s))
    call (instance_create[]:int32 (var 1602s) (var 0s) (var 0s))
    pushenv 1585s 0x0003F8
0x0003C4:
    call (caster_play[]:int32 (var 0.9d) (var 0.8d) self.mus_saved)
0x0003F8:
    popenv 0x0003C4
0x0003FC:
    pushenv 1584s 0x00041C
0x000404:
    self.soultimer = (- self.soulmax 150s)
0x00041C:
    popenv 0x000404
0x000420:
    pushenv 1615s 0x00043C
0x000428:
    call (event_user[]:int32 (var 4s))
0x00043C:
    popenv 0x000428
0x000440:
    self.con = 3s
0x00044C:
    exit
