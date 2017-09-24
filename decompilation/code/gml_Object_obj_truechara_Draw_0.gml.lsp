0x000000:
    if !(== self.flashred 1s) goto 0x0000B8
0x000014:
    self.redsiner = (+ self.redsiner 1s)
    call (draw_set_alpha[]:int32 (abs[]:int32 (sin[]:int32 (/ self.redsiner (double 2s)))))
    call (draw_set_color[]:int32 (var 255s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -20s) (var -20s))
    call (draw_set_alpha[]:int32 (var 1s))
0x0000B8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) self.image_yscale self.image_xscale self.y self.x self.image_index self.sprite_index)
    if !(== self.choicer 1s) goto 0x0003AC
0x000124:
    self.buffer = (+ self.buffer 1s)
    call (draw_set_font[]:int32 (var 1s))
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.choice 0s) goto 0x0001C0
0x00017C:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_sprite[]:int32 (var 357s) (var 75s) (var 0s) (var 34s))
0x0001C0:
    call (draw_text[]:int32 (var "ERASE") (var 350s) (var 100s))
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.choice 1s) goto 0x000258
0x000214:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_sprite[]:int32 (var 357s) (var 455s) (var 0s) (var 34s))
0x000258:
    call (draw_text[]:int32 (var "DO NOT") (var 350s) (var 480s))
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x0002B8
0x000298:
    if !(== self.choice 0s) goto 0x0002B8
0x0002AC:
    self.choice = 1s
0x0002B8:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x0002F0
0x0002D0:
    if !(== self.choice 1s) goto 0x0002F0
0x0002E4:
    self.choice = 0s
0x0002F0:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x00031C
0x000308:
    push (>= self.buffer 12s)
    goto 0x000320
0x00031C:
    push 0s
0x000320:
    if !pop goto 0x0003AC
0x000324:
    call (snd_play[]:int32 (var 111s))
    self.choicer = 0s
    call (caster_stop[]:int32 (var -3s))
    if !(== self.choice 0s) goto 0x000378
0x00036C:
    self.con = 19s
0x000378:
    if !(== self.choice 1s) goto 0x000398
0x00038C:
    self.con = 29s
0x000398:
    stog.alarm[4s] = 30s
0x0003AC:
    exit
