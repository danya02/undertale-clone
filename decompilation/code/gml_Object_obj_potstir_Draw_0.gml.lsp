0x000000:
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
    call (draw_text[]:int32 (var "* Press [Z] repeatedly to stir!") (var 11s) (var 30s))
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000200
0x0001C0:
    self.stir = (+ self.stir 1s)
    stog.image_index* = (+ (int32 self.pot):image_index 1s)
0x000200:
    push (int32 self.pot)
    self.stime = (+ self.stime 1s)
    if !(> self.stime 90s) goto 0x000254
0x00022C:
    if !(<= self.stir 70s) goto 0x000254
0x000240:
    push (== self.sval 0s)
    goto 0x000258
0x000254:
    push 0s
0x000258:
    if !pop goto 0x0002F0
0x00025C:
    self.sval = 1s
    global.msc = 0s
    global.facechoice = 5s
    global.typer = 37s
    global.faceemotion = 1s
    stog.msg[0s] = "* Stir harder^2!%%"
    self.gg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.gg)
0x0002F0:
    if !(> self.stime 150s) goto 0x00032C
0x000304:
    if !(<= self.stir 70s) goto 0x00032C
0x000318:
    push (== self.sval 1s)
    goto 0x000330
0x00032C:
    push 0s
0x000330:
    if !pop goto 0x0003C8
0x000334:
    self.sval = 2s
    global.msc = 0s
    global.facechoice = 5s
    global.typer = 37s
    global.faceemotion = 2s
    stog.msg[0s] = "* HARDER^2!%%"
    self.gg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.gg)
0x0003C8:
    if !(> self.stime 210s) goto 0x000404
0x0003DC:
    if !(<= self.stir 70s) goto 0x000404
0x0003F0:
    push (== self.sval 2s)
    goto 0x000408
0x000404:
    push 0s
0x000408:
    if !pop goto 0x0004A0
0x00040C:
    self.sval = 3s
    global.msc = 0s
    global.facechoice = 5s
    global.typer = 37s
    global.faceemotion = 6s
    stog.msg[0s] = "* HARDER!!!^2!%%"
    self.gg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.gg)
0x0004A0:
    if (> self.stime 300s) goto 0x0004C8
0x0004B4:
    push (> self.stir 70s)
    goto 0x0004CC
0x0004C8:
    push 1s
0x0004CC:
    if !pop goto 0x000598
0x0004D0:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000598
0x0004EC:
    self.sval = 99s
    global.msc = 0s
    global.facechoice = 5s
    global.typer = 37s
    global.faceemotion = 6s
    stog.msg[0s] = "* Ugh^1, let me do it!/%%"
    self.gg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.gg)
    [obj_undynedate_inside].con = 210s
    call (instance_destroy[]:int32 )
0x000598:
    exit
