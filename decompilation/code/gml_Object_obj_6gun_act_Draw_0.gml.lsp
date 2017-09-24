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
    call (draw_rectangle[]:int32 (var 0s) (var 404s) (var 534s) (var 346s) (var 106s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 400s) (var 530s) (var 350s) (var 110s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 10s))
    global.typer = 70s
    stog.msg[0s] = "* You called for help..."
    stog.msg[1s] = "%%%"
    if !(~ (bool (instance_exists[]:int32 (var 1598s)))) goto 0x0001E4
0x0001C0:
    call (instance_create[]:int32 (var 1598s) (var 340s) (var 110s))
0x0001E4:
    if !(== self.con 2s) goto 0x000264
0x0001F8:
    self.type = 1s
    pushenv 1585s 0x000218
0x00020C:
    self.pd = 1s
0x000218:
    popenv 0x00020C
0x00021C:
    pushenv 1609s 0x000238
0x000224:
    call (event_user[]:int32 (var 5s))
0x000238:
    popenv 0x000224
0x00023C:
    self.con = 2.1d
    stog.alarm[4s] = 50s
0x000264:
    if !(== self.con 3s) goto 0x0002F4
0x000278:
    global.soul_rescue = 6s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 7s) (var "P") (var "FFFFF"))
    call (ini_close[]:int32 )
    pushenv 1607s 0x0002F0
0x0002DC:
    call (event_user[]:int32 (var 4s))
0x0002F0:
    popenv 0x0002DC
0x0002F4:
    if !(== self.con 3.1d) goto 0x0003F0
0x000310:
    pushenv 1598s 0x000324
0x000318:
    call (instance_destroy[]:int32 )
0x000324:
    popenv 0x000318
0x000328:
    call (snd_play[]:int32 (var 154s))
    call (instance_create[]:int32 (var 1602s) (var 0s) (var 0s))
    pushenv 1585s 0x00039C
0x000368:
    call (caster_play[]:int32 (var 0.9d) (var 0.8d) self.mus_saved)
0x00039C:
    popenv 0x000368
0x0003A0:
    pushenv 1584s 0x0003C0
0x0003A8:
    self.soultimer = (- self.soulmax 150s)
0x0003C0:
    popenv 0x0003A8
0x0003C4:
    pushenv 1609s 0x0003E0
0x0003CC:
    call (event_user[]:int32 (var 4s))
0x0003E0:
    popenv 0x0003CC
0x0003E4:
    self.con = 3s
0x0003F0:
    exit
