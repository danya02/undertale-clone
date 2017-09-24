0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (- self.stir) 6s) (var 1s) (var 1s) (var 45s) (var 169s) (var 0s) (var 1485s))
    call (draw_set_color[]:int32 (var 16777215))
    push (var 0s)
    push -1s
    push (+ (int32 self.view_current):view_yview 32s)
    push -1s
    call (draw_rectangle[]:int32 (+ (int32 self.view_current):view_xview 304s) -1s (+ (int32 self.view_current):view_yview 6s) -1s (+ (int32 self.view_current):view_xview 16s))
    call (draw_set_color[]:int32 (var 0s))
    push (var 0s)
    push -1s
    push (+ (int32 self.view_current):view_yview 29s)
    push -1s
    call (draw_rectangle[]:int32 (+ (int32 self.view_current):view_xview 301s) -1s (+ (int32 self.view_current):view_yview 9s) -1s (+ (int32 self.view_current):view_xview 19s))
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "* Hold [RIGHT] to turn up the heat!") (var 11s) (var 30s))
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x0002A0
0x000224:
    self.stir = (+ self.stir 1s)
    self.jingle = (+ self.jingle 1s)
    if !(> self.jingle 10s) goto 0x0002A0
0x000268:
    call (caster_play[]:int32 (var 1s) (var 0.5d) self.rot)
    self.jingle = 0s
0x0002A0:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x0002C4
0x0002B8:
    self.wrong = 1s
0x0002C4:
    self.stime = (+ self.stime 1s)
    if !(== self.wrong 1s) goto 0x000320
0x0002F0:
    if !(== self.wrongval 0s) goto 0x000320
0x000304:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000324
0x000320:
    push 0s
0x000324:
    if !pop goto 0x00041C
0x000328:
    call (caster_set_pitch[]:int32 (var 0.8d) self.fire)
    call (caster_set_volume[]:int32 (var 0.55d) self.fire)
    self.wrongval = 1s
    global.msc = 0s
    global.facechoice = 5s
    global.typer = 37s
    global.faceemotion = 1s
    stog.msg[0s] = "* Left^1? You fool^2!%"
    stog.msg[1s] = "\\E6* THIS BURNER ONLY&  GOES ONE WAY!!^2!%%"
    self.gg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.gg)
0x00041C:
    if !(> self.stir 50s) goto 0x000444
0x000430:
    push (== self.sval 0s)
    goto 0x000448
0x000444:
    push 0s
0x000448:
    if !pop goto 0x0004D4
0x00044C:
    call (caster_set_pitch[]:int32 (var 0.9d) self.fire)
    call (caster_set_volume[]:int32 (var 0.6d) self.fire)
    pushenv (int32 self.pot) 0x0004B8
0x0004A4:
    call (event_user[]:int32 (var 0s))
0x0004B8:
    popenv 0x0004A4
0x0004BC:
    self.sval = (+ self.sval 1s)
0x0004D4:
    if !(> self.stir 100s) goto 0x000518
0x0004E8:
    if !(== self.sval 1s) goto 0x000518
0x0004FC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00051C
0x000518:
    push 0s
0x00051C:
    if !pop goto 0x00061C
0x000520:
    call (caster_set_pitch[]:int32 (var 1s) self.fire)
    call (caster_set_volume[]:int32 (var 0.66d) self.fire)
    pushenv (int32 self.pot) 0x000584
0x000570:
    call (event_user[]:int32 (var 0s))
0x000584:
    popenv 0x000570
0x000588:
    self.sval = 2s
    global.msc = 0s
    global.facechoice = 5s
    global.typer = 37s
    global.faceemotion = 1s
    stog.msg[0s] = "* Hotter^2!%%"
    self.gg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.gg)
0x00061C:
    if !(> self.stir 150s) goto 0x000644
0x000630:
    push (== self.sval 2s)
    goto 0x000648
0x000644:
    push 0s
0x000648:
    if !pop goto 0x0006D4
0x00064C:
    call (caster_set_pitch[]:int32 (var 1.1d) self.fire)
    call (caster_set_volume[]:int32 (var 0.72d) self.fire)
    pushenv (int32 self.pot) 0x0006B8
0x0006A4:
    call (event_user[]:int32 (var 0s))
0x0006B8:
    popenv 0x0006A4
0x0006BC:
    self.sval = (+ self.sval 1s)
0x0006D4:
    if !(> self.stir 200s) goto 0x000718
0x0006E8:
    if !(== self.sval 3s) goto 0x000718
0x0006FC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00071C
0x000718:
    push 0s
0x00071C:
    if !pop goto 0x000824
0x000720:
    call (caster_set_pitch[]:int32 (var 1.2d) self.fire)
    call (caster_set_volume[]:int32 (var 0.78d) self.fire)
    pushenv (int32 self.pot) 0x00078C
0x000778:
    call (event_user[]:int32 (var 0s))
0x00078C:
    popenv 0x000778
0x000790:
    self.sval = 4s
    global.msc = 0s
    global.facechoice = 5s
    global.typer = 37s
    global.faceemotion = 1s
    stog.msg[0s] = "* HOTTER^1, DARNIT^2!%%"
    self.gg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.gg)
0x000824:
    if !(> self.stir 250s) goto 0x00084C
0x000838:
    push (== self.sval 4s)
    goto 0x000850
0x00084C:
    push 0s
0x000850:
    if !pop goto 0x0008DC
0x000854:
    call (caster_set_pitch[]:int32 (var 1.3d) self.fire)
    call (caster_set_volume[]:int32 (var 0.83d) self.fire)
    pushenv (int32 self.pot) 0x0008C0
0x0008AC:
    call (event_user[]:int32 (var 0s))
0x0008C0:
    popenv 0x0008AC
0x0008C4:
    self.sval = (+ self.sval 1s)
0x0008DC:
    if !(> self.stir 300s) goto 0x000920
0x0008F0:
    if !(== self.sval 5s) goto 0x000920
0x000904:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000924
0x000920:
    push 0s
0x000924:
    if !pop goto 0x000A2C
0x000928:
    call (caster_set_pitch[]:int32 (var 1.4d) self.fire)
    call (caster_set_volume[]:int32 (var 0.87d) self.fire)
    pushenv (int32 self.pot) 0x000994
0x000980:
    call (event_user[]:int32 (var 0s))
0x000994:
    popenv 0x000980
0x000998:
    self.sval = 6s
    global.msc = 0s
    global.facechoice = 5s
    global.typer = 37s
    global.faceemotion = 1s
    stog.msg[0s] = "* HOTTER!!!!!!^2!%%"
    self.gg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.gg)
0x000A2C:
    if !(> self.stir 360s) goto 0x000A70
0x000A40:
    if !(< self.sval 99s) goto 0x000A70
0x000A54:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A74
0x000A70:
    push 0s
0x000A74:
    if !pop goto 0x000BB4
0x000A78:
    self.stir = 360s
    call (caster_stop[]:int32 global.currentsong)
    call (caster_set_pitch[]:int32 (var 1.7d) self.fire)
    call (caster_set_volume[]:int32 (var 0.95d) self.fire)
    pushenv (int32 self.pot) 0x000B04
0x000AF0:
    call (event_user[]:int32 (var 0s))
0x000B04:
    popenv 0x000AF0
0x000B08:
    self.sval = 99s
    global.msc = 0s
    global.facechoice = 5s
    global.typer = 37s
    global.faceemotion = 1s
    stog.msg[0s] = "* Wait^1, that's too ^1- %%"
    self.gg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.gg)
    [obj_undynedate_inside].con = 250s
    call (instance_destroy[]:int32 )
0x000BB4:
    if !(> self.stime 500s) goto 0x000BF8
0x000BC8:
    if !(< self.sval 99s) goto 0x000BF8
0x000BDC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000BFC
0x000BF8:
    push 0s
0x000BFC:
    if !pop goto 0x000C94
0x000C00:
    self.sval = 101s
    global.msc = 0s
    global.facechoice = 5s
    global.typer = 37s
    global.faceemotion = 1s
    stog.msg[0s] = "* Ugh^1, let me do it!/%%"
    self.gg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.gg)
0x000C94:
    if !(== self.sval 101s) goto 0x000CC4
0x000CA8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000CC8
0x000CC4:
    push 0s
0x000CC8:
    if !pop goto 0x000E20
0x000CCC:
    call (caster_stop[]:int32 global.currentsong)
    call (caster_set_pitch[]:int32 (var 1.7d) self.fire)
    call (caster_set_volume[]:int32 (var 0.95d) self.fire)
    self.sval = 102s
    if !(< (int32 self.pot):level 8s) goto 0x000D80
0x000D54:
    pushenv (int32 self.pot) 0x000D78
0x000D64:
    call (event_user[]:int32 (var 0s))
0x000D78:
    popenv 0x000D64
0x000D7C:
    goto 0x000D34
0x000D80:
    global.msc = 0s
    global.facechoice = 5s
    global.typer = 37s
    global.faceemotion = 1s
    stog.msg[0s] = "* See!^1?&* This is how you ^1-%%"
    self.gg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.gg)
    [obj_undynedate_inside].con = 250s
    call (instance_destroy[]:int32 )
0x000E20:
    exit
