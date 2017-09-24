0x000000:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) self.image_angle (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
    if !(> self.con 0s) goto 0x000080
0x00006C:
    push (< self.con 3s)
    goto 0x000084
0x000080:
    push 0s
0x000084:
    if !pop goto 0x0001F0
0x000088:
    self.depth = -14s
    self.image_alpha = (- self.image_alpha 0.05d)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 204s) (var 534s) (var 146s) (var 106s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 200s) (var 530s) (var 150s) (var 110s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 10s))
    global.typer = 70s
    stog.msg[0s] = "* You called for help..."
    stog.msg[1s] = "%%%"
    if !(~ (bool (instance_exists[]:int32 (var 1598s)))) goto 0x0001F0
0x0001CC:
    call (instance_create[]:int32 (var 1598s) (var 140s) (var 110s))
0x0001F0:
    if !(== self.con 2s) goto 0x000290
0x000204:
    self.type = 1s
    pushenv 1618s 0x00022C
0x000218:
    call (event_user[]:int32 (var 5s))
0x00022C:
    popenv 0x000218
0x000230:
    pushenv 1619s 0x00024C
0x000238:
    call (event_user[]:int32 (var 5s))
0x00024C:
    popenv 0x000238
0x000250:
    pushenv 1585s 0x000264
0x000258:
    self.pd = 1s
0x000264:
    popenv 0x000258
0x000268:
    self.con = 2.1d
    stog.alarm[4s] = 50s
0x000290:
    if !(== self.con 2.1d) goto 0x0002CC
0x0002AC:
    pushenv 1618s 0x0002C8
0x0002B4:
    call (event_user[]:int32 (var 5s))
0x0002C8:
    popenv 0x0002B4
0x0002CC:
    if !(== self.con 3s) goto 0x00035C
0x0002E0:
    global.soul_rescue = 5s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 6s) (var "P") (var "FFFFF"))
    call (ini_close[]:int32 )
    pushenv 1618s 0x000358
0x000344:
    call (event_user[]:int32 (var 4s))
0x000358:
    popenv 0x000344
0x00035C:
    if !(== self.con 3.1d) goto 0x000478
0x000378:
    pushenv 1598s 0x00038C
0x000380:
    call (instance_destroy[]:int32 )
0x00038C:
    popenv 0x000380
0x000390:
    call (snd_play[]:int32 (var 154s))
    call (instance_create[]:int32 (var 1602s) (var 0s) (var 0s))
    pushenv 1585s 0x000404
0x0003D0:
    call (caster_play[]:int32 (var 0.9d) (var 0.8d) self.mus_saved)
0x000404:
    popenv 0x0003D0
0x000408:
    pushenv 1584s 0x000428
0x000410:
    self.soultimer = (- self.soulmax 150s)
0x000428:
    popenv 0x000410
0x00042C:
    pushenv 1618s 0x000448
0x000434:
    call (event_user[]:int32 (var 4s))
0x000448:
    popenv 0x000434
0x00044C:
    pushenv 1619s 0x000468
0x000454:
    call (event_user[]:int32 (var 4s))
0x000468:
    popenv 0x000454
0x00046C:
    self.con = 3s
0x000478:
    exit
