0x000000:
    self.i = 0s
    if !(< self.i 6s) goto 0x00011C
0x000020:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ -170s (* 170s self.i)) self.booky) (var 100s) self.image_index (var 2225s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var -2s) (var -2s) (+ (* 170s self.i) self.booky2) (var 540s) self.image_index (var 2225s))
    self.i = (+ self.i 1s)
    goto 0x00000C
0x00011C:
    self.booky = (+ self.booky 4s)
    self.booky2 = (- self.booky2 4s)
    if !(> self.booky 170s) goto 0x000178
0x000160:
    self.booky = (- self.booky 170s)
0x000178:
    if !(< self.booky2 -170s) goto 0x0001A4
0x00018C:
    self.booky2 = (+ self.booky2 170s)
0x0001A4:
    if !(> self.con 0s) goto 0x0001CC
0x0001B8:
    push (< self.con 3s)
    goto 0x0001D0
0x0001CC:
    push 0s
0x0001D0:
    if !pop goto 0x000330
0x0001D4:
    self.image_alpha = (- self.image_alpha 0.02d)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 230s) (var 140s) (var 4s) (var 4s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 226s) (var 136s) (var 8s) (var 8s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 10s))
    global.typer = 70s
    stog.msg[0s] = "You&called&for&help&..."
    stog.msg[1s] = "%%%"
    if !(~ (bool (instance_exists[]:int32 (var 1598s)))) goto 0x000330
0x00030C:
    call (instance_create[]:int32 (var 1598s) (var 4s) (var 14s))
0x000330:
    if !(== self.con 2s) goto 0x0003B0
0x000344:
    pushenv 1585s 0x000358
0x00034C:
    self.pd = 1s
0x000358:
    popenv 0x00034C
0x00035C:
    self.type = 1s
    pushenv 1622s 0x000384
0x000370:
    call (event_user[]:int32 (var 5s))
0x000384:
    popenv 0x000370
0x000388:
    self.con = 2.1d
    stog.alarm[4s] = 50s
0x0003B0:
    if !(== self.con 3s) goto 0x000420
0x0003C4:
    global.soul_rescue = 4s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 5s) (var "P") (var "FFFFF"))
    call (ini_close[]:int32 )
0x000420:
    if !(== self.con 3.1d) goto 0x00051C
0x00043C:
    pushenv 1598s 0x000450
0x000444:
    call (instance_destroy[]:int32 )
0x000450:
    popenv 0x000444
0x000454:
    call (snd_play[]:int32 (var 154s))
    call (instance_create[]:int32 (var 1602s) (var 0s) (var 0s))
    pushenv 1585s 0x0004C8
0x000494:
    call (caster_play[]:int32 (var 0.9d) (var 0.8d) self.mus_saved)
0x0004C8:
    popenv 0x000494
0x0004CC:
    pushenv 1584s 0x0004EC
0x0004D4:
    self.soultimer = (- self.soulmax 150s)
0x0004EC:
    popenv 0x0004D4
0x0004F0:
    pushenv 1622s 0x00050C
0x0004F8:
    call (event_user[]:int32 (var 4s))
0x00050C:
    popenv 0x0004F8
0x000510:
    self.con = 3s
0x00051C:
    if !(< 1581.x 245s) goto 0x00053C
0x000530:
    [obj_vsflowey_heart].x = 245s
0x00053C:
    if !(> 1581.x 382s) goto 0x00055C
0x000550:
    [obj_vsflowey_heart].x = 382s
0x00055C:
    if !(< 1581.y 138s) goto 0x00057C
0x000570:
    [obj_vsflowey_heart].y = 138s
0x00057C:
    exit
