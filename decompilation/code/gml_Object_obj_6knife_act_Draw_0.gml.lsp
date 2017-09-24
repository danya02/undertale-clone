0x000000:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) self.image_angle (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
    if !(> self.con 0s) goto 0x000080
0x00006C:
    push (< self.con 3s)
    goto 0x000084
0x000080:
    push 0s
0x000084:
    if !pop goto 0x0001E4
0x000088:
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
    if !(~ (bool (instance_exists[]:int32 (var 1598s)))) goto 0x0001E4
0x0001C0:
    call (instance_create[]:int32 (var 1598s) (var 140s) (var 110s))
0x0001E4:
    if !(== self.con 2s) goto 0x000264
0x0001F8:
    self.type = 1s
    pushenv 1625s 0x000220
0x00020C:
    call (event_user[]:int32 (var 5s))
0x000220:
    popenv 0x00020C
0x000224:
    pushenv 1585s 0x000238
0x00022C:
    self.pd = 1s
0x000238:
    popenv 0x00022C
0x00023C:
    self.con = 2.1d
    stog.alarm[4s] = 50s
0x000264:
    if !(== self.con 3s) goto 0x0002D4
0x000278:
    global.soul_rescue = 1s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 2s) (var "P") (var "FFFFF"))
    call (ini_close[]:int32 )
0x0002D4:
    if !(== self.con 3.1d) goto 0x0003D0
0x0002F0:
    pushenv 1598s 0x000304
0x0002F8:
    call (instance_destroy[]:int32 )
0x000304:
    popenv 0x0002F8
0x000308:
    call (snd_play[]:int32 (var 154s))
    call (instance_create[]:int32 (var 1602s) (var 0s) (var 0s))
    pushenv 1585s 0x00037C
0x000348:
    call (caster_play[]:int32 (var 0.9d) (var 0.8d) self.mus_saved)
0x00037C:
    popenv 0x000348
0x000380:
    pushenv 1584s 0x0003A0
0x000388:
    self.soultimer = (- self.soulmax 150s)
0x0003A0:
    popenv 0x000388
0x0003A4:
    pushenv 1625s 0x0003C0
0x0003AC:
    call (event_user[]:int32 (var 4s))
0x0003C0:
    popenv 0x0003AC
0x0003C4:
    self.con = 3s
0x0003D0:
    exit
