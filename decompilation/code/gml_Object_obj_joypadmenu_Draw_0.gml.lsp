0x000000:
    self.buffer = (- self.buffer 1s)
    if !(== self.menu_engage 0s) goto 0x0001C4
0x00002C:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x00005C
0x000044:
    self.menu = (+ self.menu 1s)
0x00005C:
    if !(== self.menu 4s) goto 0x00007C
0x000070:
    self.menu = 5s
0x00007C:
    if !(== self.fun 0s) goto 0x0000B0
0x000090:
    if !(== self.menu 6s) goto 0x0000B0
0x0000A4:
    self.menu = 7s
0x0000B0:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x0000E0
0x0000C8:
    self.menu = (- self.menu 1s)
0x0000E0:
    if !(== self.menu 4s) goto 0x000100
0x0000F4:
    self.menu = 3s
0x000100:
    if !(== self.fun 0s) goto 0x000134
0x000114:
    if !(== self.menu 6s) goto 0x000134
0x000128:
    self.menu = 5s
0x000134:
    if !(<= self.menu 0s) goto 0x000154
0x000148:
    self.menu = 0s
0x000154:
    if !(>= self.menu 9s) goto 0x000174
0x000168:
    self.menu = 9s
0x000174:
    if !(< self.buffer 0s) goto 0x0001C4
0x000188:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0001C4
0x0001A0:
    self.menu_engage = 1s
    self.js_buffer = 1s
    self.buffer = 4s
0x0001C4:
    if !(== self.menu 0s) goto 0x0001EC
0x0001D8:
    push (== self.menu_engage 1s)
    goto 0x0001F0
0x0001EC:
    push 0s
0x0001F0:
    if !pop goto 0x000308
0x0001F4:
    call (ini_open[]:int32 (var "config.ini"))
    call (ini_write_real[]:int32 global.button0 (var "b0") (var "joypad1"))
    call (ini_write_real[]:int32 global.button1 (var "b1") (var "joypad1"))
    call (ini_write_real[]:int32 global.button2 (var "b2") (var "joypad1"))
    call (ini_write_real[]:int32 global.analog_sense (var "as") (var "joypad1"))
    call (ini_write_real[]:int32 global.joy_dir (var "jd") (var "joypad1"))
    call (ini_close[]:int32 )
    call (room_goto[]:int32 (var 3s))
0x000308:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 2s))
    if !(!= self.weather 3s) goto 0x00038C
0x000348:
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "JOYSTICK CONFIG") (var 10s) (var 100s))
    goto 0x0003CC
0x00038C:
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "JOYSTICK CONFIG") (var 10s) (var 10s))
0x0003CC:
    if !(!= self.menu 0s) goto 0x0003FC
0x0003E0:
    call (draw_set_color[]:int32 (var 16777215))
    goto 0x000414
0x0003FC:
    call (draw_set_color[]:int32 (var 65535))
0x000414:
    call (draw_text[]:int32 (var "EXIT") (var 40s) (var 20s))
    self.i = 1s
    if !(< self.i 4s) goto 0x00057C
0x00045C:
    if !(!= self.menu self.i) goto 0x000490
0x000474:
    call (draw_set_color[]:int32 (var 16777215))
    goto 0x0004A8
0x000490:
    call (draw_set_color[]:int32 (var 65535))
0x0004A8:
    if !(== self.i 1s) goto 0x0004CC
0x0004BC:
    self.itext = "CONFIRM - [Z + ENTER] ::"
0x0004CC:
    if !(== self.i 2s) goto 0x0004F0
0x0004E0:
    self.itext = "CANCEL    - [X + SHIFT] ::"
0x0004F0:
    if !(== self.i 3s) goto 0x000514
0x000504:
    self.itext = "MENU         - [C + CTRL] ::"
0x000514:
    call (draw_text[]:int32 self.itext (+ 60s (* self.i 15s)) (var 20s))
    call (draw_set_color[]:int32 (var 16777215))
    self.i = (+ self.i 1s)
    goto 0x000448
0x00057C:
    if !(== self.menu 1s) goto 0x0005A4
0x000590:
    push (== self.menu_engage 1s)
    goto 0x0005A8
0x0005A4:
    push 0s
0x0005A8:
    if !pop goto 0x000874
0x0005AC:
    call (draw_set_color[]:int32 (var 16711680))
    call (draw_rectangle[]:int32 (var 0s) (var 90s) (var 245s) (var 75s) (var 160s))
    call (draw_set_color[]:int32 (var 16777215))
    self.o_o = (+ self.o_o 1s)
    if !(>= self.o_o 16s) goto 0x000648
0x00063C:
    self.o_o = 0s
0x000648:
    if !(<= self.o_o 8s) goto 0x000684
0x00065C:
    call (draw_text[]:int32 (var "(PUSH BUTTON)") (var 75s) (var 160s))
0x000684:
    if !(> 1569.j_ch 0s) goto 0x0006AC
0x000698:
    push (== self.js_buffer 0s)
    goto 0x0006B0
0x0006AC:
    push 0s
0x0006B0:
    if !pop goto 0x000748
0x0006B4:
    self.i = 0s
    if !(< self.i (joystick_buttons[]:int32 1569.j_ch)) goto 0x000748
0x0006E0:
    if !(bool (joystick_check_button[]:int32 self.i 1569.j_ch)) goto 0x00072C
0x000700:
    global.button0 = self.i
    self.menu_engage = 0s
    self.buffer = 4s
    goto 0x000748
0x00072C:
    self.i = (+ self.i 1s)
    goto 0x0006C0
0x000748:
    if !(== self.js_buffer 1s) goto 0x000818
0x00075C:
    self.bt = 0s
    self.i = 0s
    if !(< self.i (joystick_buttons[]:int32 1569.j_ch)) goto 0x0007EC
0x000794:
    if !(~ (bool (joystick_check_button[]:int32 self.i 1569.j_ch))) goto 0x0007D0
0x0007B8:
    self.bt = (+ self.bt 1s)
0x0007D0:
    self.i = (+ self.i 1s)
    goto 0x000774
0x0007EC:
    if !(>= self.bt (joystick_buttons[]:int32 1569.j_ch)) goto 0x000818
0x00080C:
    self.js_buffer = 0s
0x000818:
    if !(< self.buffer 0s) goto 0x000870
0x00082C:
    if (bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x00085C
0x000844:
    push (bool (keyboard_multicheck_pressed[]:int32 (var 1s)))
    goto 0x000860
0x00085C:
    push 1s
0x000860:
    if !pop goto 0x000870
0x000864:
    self.menu_engage = 0s
0x000870:
    goto 0x0008B0
0x000874:
    call (draw_set_color[]:int32 (var 16776960))
    call (draw_text[]:int32 global.button0 (var 75s) (var 170s))
0x0008B0:
    if !(== self.menu 2s) goto 0x0008D8
0x0008C4:
    push (== self.menu_engage 1s)
    goto 0x0008DC
0x0008D8:
    push 0s
0x0008DC:
    if !pop goto 0x000B94
0x0008E0:
    call (draw_set_color[]:int32 (var 16711680))
    call (draw_rectangle[]:int32 (var 0s) (var 105s) (var 245s) (var 90s) (var 160s))
    call (draw_set_color[]:int32 (var 16777215))
    self.o_o = (+ self.o_o 1s)
    if !(>= self.o_o 16s) goto 0x00097C
0x000970:
    self.o_o = 0s
0x00097C:
    if !(<= self.o_o 8s) goto 0x0009B8
0x000990:
    call (draw_text[]:int32 (var "(PUSH BUTTON)") (var 90s) (var 160s))
0x0009B8:
    if !(== self.js_buffer 0s) goto 0x000A68
0x0009CC:
    if !(> 1569.j_ch 0s) goto 0x000A68
0x0009E0:
    self.i = 0s
    if !(< self.i (joystick_buttons[]:int32 1569.j_ch)) goto 0x000A68
0x000A0C:
    if !(bool (joystick_check_button[]:int32 self.i 1569.j_ch)) goto 0x000A4C
0x000A2C:
    global.button1 = self.i
    self.menu_engage = 0s
    goto 0x000A68
0x000A4C:
    self.i = (+ self.i 1s)
    goto 0x0009EC
0x000A68:
    if !(== self.js_buffer 1s) goto 0x000B38
0x000A7C:
    self.bt = 0s
    self.i = 0s
    if !(< self.i (joystick_buttons[]:int32 1569.j_ch)) goto 0x000B0C
0x000AB4:
    if !(~ (bool (joystick_check_button[]:int32 self.i 1569.j_ch))) goto 0x000AF0
0x000AD8:
    self.bt = (+ self.bt 1s)
0x000AF0:
    self.i = (+ self.i 1s)
    goto 0x000A94
0x000B0C:
    if !(>= self.bt (joystick_buttons[]:int32 1569.j_ch)) goto 0x000B38
0x000B2C:
    self.js_buffer = 0s
0x000B38:
    if !(< self.buffer 0s) goto 0x000B90
0x000B4C:
    if (bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000B7C
0x000B64:
    push (bool (keyboard_multicheck_pressed[]:int32 (var 1s)))
    goto 0x000B80
0x000B7C:
    push 1s
0x000B80:
    if !pop goto 0x000B90
0x000B84:
    self.menu_engage = 0s
0x000B90:
    goto 0x000BD0
0x000B94:
    call (draw_set_color[]:int32 (var 16776960))
    call (draw_text[]:int32 global.button1 (var 90s) (var 170s))
0x000BD0:
    if !(== self.menu 3s) goto 0x000BF8
0x000BE4:
    push (== self.menu_engage 1s)
    goto 0x000BFC
0x000BF8:
    push 0s
0x000BFC:
    if !pop goto 0x000EBC
0x000C00:
    call (draw_set_color[]:int32 (var 16711680))
    call (draw_rectangle[]:int32 (var 0s) (var 120s) (var 245s) (var 105s) (var 160s))
    call (draw_set_color[]:int32 (var 16777215))
    self.o_o = (+ self.o_o 1s)
    if !(>= self.o_o 16s) goto 0x000C9C
0x000C90:
    self.o_o = 0s
0x000C9C:
    if !(<= self.o_o 8s) goto 0x000CD8
0x000CB0:
    call (draw_text[]:int32 (var "(PUSH BUTTON)") (var 105s) (var 160s))
0x000CD8:
    if !(> 1569.j_ch 0s) goto 0x000D00
0x000CEC:
    push (== self.js_buffer 0s)
    goto 0x000D04
0x000D00:
    push 0s
0x000D04:
    if !pop goto 0x000D90
0x000D08:
    self.i = 0s
    if !(< self.i (joystick_buttons[]:int32 1569.j_ch)) goto 0x000D90
0x000D34:
    if !(bool (joystick_check_button[]:int32 self.i 1569.j_ch)) goto 0x000D74
0x000D54:
    global.button2 = self.i
    self.menu_engage = 0s
    goto 0x000D90
0x000D74:
    self.i = (+ self.i 1s)
    goto 0x000D14
0x000D90:
    if !(== self.js_buffer 1s) goto 0x000E60
0x000DA4:
    self.bt = 0s
    self.i = 0s
    if !(< self.i (joystick_buttons[]:int32 1569.j_ch)) goto 0x000E34
0x000DDC:
    if !(~ (bool (joystick_check_button[]:int32 self.i 1569.j_ch))) goto 0x000E18
0x000E00:
    self.bt = (+ self.bt 1s)
0x000E18:
    self.i = (+ self.i 1s)
    goto 0x000DBC
0x000E34:
    if !(>= self.bt (joystick_buttons[]:int32 1569.j_ch)) goto 0x000E60
0x000E54:
    self.js_buffer = 0s
0x000E60:
    if !(< self.buffer 0s) goto 0x000EB8
0x000E74:
    if (bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000EA4
0x000E8C:
    push (bool (keyboard_multicheck_pressed[]:int32 (var 1s)))
    goto 0x000EA8
0x000EA4:
    push 1s
0x000EA8:
    if !pop goto 0x000EB8
0x000EAC:
    self.menu_engage = 0s
0x000EB8:
    goto 0x000EF8
0x000EBC:
    call (draw_set_color[]:int32 (var 16776960))
    call (draw_text[]:int32 global.button2 (var 105s) (var 170s))
0x000EF8:
    if !(== self.menu 5s) goto 0x000F28
0x000F0C:
    call (draw_set_color[]:int32 (var 65535))
    goto 0x000F40
0x000F28:
    call (draw_set_color[]:int32 (var 16777215))
0x000F40:
    call (draw_text[]:int32 (var "ANALOG SENSITIVITY:") (var 135s) (var 20s))
    if !(== self.menu 5s) goto 0x000F90
0x000F7C:
    push (== self.menu_engage 1s)
    goto 0x000F94
0x000F90:
    push 0s
0x000F94:
    if !pop goto 0x001178
0x000F98:
    call (draw_sprite_ext[]:int32 (var 1s) (var 255s) (var 0s) (var 1s) (var 1s) (var 135s) (var 150s) (var 0s) (var 856s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 65535) (var 0s) (var 1s) (var 1s) (var 138s) (- 190s (* global.analog_sense 100s)) (var 0s) (var 855s))
    if !(< self.buffer 0s) goto 0x001174
0x001068:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x00109C
0x001080:
    global.analog_sense = (- global.analog_sense global.analog_sense_sense)
0x00109C:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x0010D0
0x0010B4:
    global.analog_sense = (+ global.analog_sense global.analog_sense_sense)
0x0010D0:
    if !(>= global.analog_sense 0.4d) goto 0x001100
0x0010EC:
    global.analog_sense = 0.4d
0x001100:
    if !(<= global.analog_sense 0.02d) goto 0x001130
0x00111C:
    global.analog_sense = 0.02d
0x001130:
    if (bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x001160
0x001148:
    push (bool (keyboard_multicheck_pressed[]:int32 (var 1s)))
    goto 0x001164
0x001160:
    push 1s
0x001164:
    if !pop goto 0x001174
0x001168:
    self.menu_engage = 0s
0x001174:
    goto 0x001244
0x001178:
    call (draw_sprite_ext[]:int32 (var 0.6d) (var 255s) (var 0s) (var 1s) (var 1s) (var 135s) (var 150s) (var 0s) (var 856s))
    call (draw_sprite_ext[]:int32 (var 0.6d) (var 65535) (var 0s) (var 1s) (var 1s) (var 138s) (- 190s (* global.analog_sense 100s)) (var 0s) (var 855s))
0x001244:
    if !(== self.fun 1s) goto 0x0015D4
0x001258:
    if !(== self.menu 6s) goto 0x001288
0x00126C:
    call (draw_set_color[]:int32 (var 65535))
    goto 0x0012A0
0x001288:
    call (draw_set_color[]:int32 (var 16777215))
0x0012A0:
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 0.6d) (var "ANALOG SENSITIVITY SENSITIVITY:") (var 150s) (var 20s))
    if !(== self.menu 6s) goto 0x001310
0x0012FC:
    push (== self.menu_engage 1s)
    goto 0x001314
0x001310:
    push 0s
0x001314:
    if !pop goto 0x001504
0x001318:
    call (draw_sprite_ext[]:int32 (var 1s) (var 32768) (var 0s) (var 1s) (var 1s) (var 150s) (var 150s) (var 0s) (var 856s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 65535) (var 0s) (var 1s) (var 1s) (var 153s) (- 190s (* global.analog_sense_sense 200s)) (var 0s) (var 855s))
    if !(< self.buffer 0s) goto 0x001500
0x0013EC:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x001424
0x001404:
    global.analog_sense_sense = (- global.analog_sense_sense 0.01d)
0x001424:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x00145C
0x00143C:
    global.analog_sense_sense = (+ global.analog_sense_sense 0.01d)
0x00145C:
    if !(>= global.analog_sense_sense 0.2d) goto 0x00148C
0x001478:
    global.analog_sense_sense = 0.2d
0x00148C:
    if !(<= global.analog_sense_sense 0.01d) goto 0x0014BC
0x0014A8:
    global.analog_sense_sense = 0.01d
0x0014BC:
    if (bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0014EC
0x0014D4:
    push (bool (keyboard_multicheck_pressed[]:int32 (var 1s)))
    goto 0x0014F0
0x0014EC:
    push 1s
0x0014F0:
    if !pop goto 0x001500
0x0014F4:
    self.menu_engage = 0s
0x001500:
    goto 0x0015D4
0x001504:
    call (draw_sprite_ext[]:int32 (var 0.6d) (var 32768) (var 0s) (var 1s) (var 1s) (var 150s) (var 150s) (var 0s) (var 856s))
    call (draw_sprite_ext[]:int32 (var 0.6d) (var 65535) (var 0s) (var 1s) (var 1s) (var 153s) (- 190s (* global.analog_sense_sense 200s)) (var 0s) (var 855s))
0x0015D4:
    if !(== self.menu 7s) goto 0x001604
0x0015E8:
    call (draw_set_color[]:int32 (var 65535))
    goto 0x00161C
0x001604:
    call (draw_set_color[]:int32 (var 16777215))
0x00161C:
    call (draw_text[]:int32 (var "DIR CHOICE:") (var 170s) (var 20s))
    if !(== global.joy_dir 0s) goto 0x001680
0x001658:
    call (draw_text[]:int32 (var "NORMAL") (var 170s) (var 100s))
0x001680:
    if !(== global.joy_dir 1s) goto 0x0016BC
0x001694:
    call (draw_text[]:int32 (var "ANALOG ONLY") (var 170s) (var 100s))
0x0016BC:
    if !(== global.joy_dir 2s) goto 0x0016F8
0x0016D0:
    call (draw_text[]:int32 (var "POV ONLY") (var 170s) (var 100s))
0x0016F8:
    if !(== self.menu 7s) goto 0x001720
0x00170C:
    push (== self.menu_engage 1s)
    goto 0x001724
0x001720:
    push 0s
0x001724:
    if !pop goto 0x00176C
0x001728:
    global.joy_dir = (+ global.joy_dir 1s)
    if !(>= global.joy_dir 3s) goto 0x001760
0x001754:
    global.joy_dir = 0s
0x001760:
    self.menu_engage = 0s
0x00176C:
    if !(> self.r_buffer 0s) goto 0x001830
0x001780:
    self.r_buffer = (- self.r_buffer 1s)
    call (draw_set_color[]:int32 (var 255s))
    call (draw_text_transformed_color[]:int32 (- 1s (/ (- 10s self.r_buffer) (double 10s))) (var 255s) (var 255s) (var 255s) (var 255s) (var 0s) (var 1s) (var 1s) self.r_line (var 185s) (var 20s))
    goto 0x0018A0
0x001830:
    if !(== self.menu 8s) goto 0x001860
0x001844:
    call (draw_set_color[]:int32 (var 65535))
    goto 0x001878
0x001860:
    call (draw_set_color[]:int32 (var 16777215))
0x001878:
    call (draw_text[]:int32 (var "RESET TO DEFAULT") (var 185s) (var 20s))
0x0018A0:
    if !(== self.menu 8s) goto 0x0018C8
0x0018B4:
    push (== self.menu_engage 1s)
    goto 0x0018CC
0x0018C8:
    push 0s
0x0018CC:
    if !pop goto 0x0019E8
0x0018D0:
    self.r_buffer = 15s
    self.rrr = (floor[]:int32 (random[]:int32 (var 50s)))
    if !(== self.fun 1s) goto 0x001948
0x001910:
    if !(== self.rrr 1s) goto 0x001938
0x001924:
    self.r_line = "SPAGHETTI..."
    goto 0x001948
0x001938:
    self.r_line = "RESETTED..."
0x001948:
    global.button0 = 2s
    global.button1 = 1s
    global.button2 = 4s
    global.analog_sense = 0.2d
    global.analog_sense_sense = 0.01d
    global.joy_dir = 0s
    if !(> 1569.j_ch 0s) goto 0x0019DC
0x0019B4:
    if !(~ (bool (joystick_has_pov[]:int32 1569.j_ch))) goto 0x0019DC
0x0019D0:
    global.joypad_dir = 1s
0x0019DC:
    self.menu_engage = 0s
0x0019E8:
    if !(== self.menu 9s) goto 0x001A18
0x0019FC:
    call (draw_set_color[]:int32 (var 65535))
    goto 0x001A30
0x001A18:
    call (draw_set_color[]:int32 (var 16777215))
0x001A30:
    call (draw_text[]:int32 (var "CONTROL TEST") (var 200s) (var 20s))
    if !(== self.menu 9s) goto 0x001A80
0x001A6C:
    push (== self.menu_engage 1s)
    goto 0x001A84
0x001A80:
    push 0s
0x001A84:
    if !pop goto 0x001AB0
0x001A88:
    call (caster_free[]:int32 (var -3s))
    call (room_goto[]:int32 (var 289s))
0x001AB0:
    if !(== self.weather 1s) goto 0x001C04
0x001AC4:
    self.c = (instance_create[]:int32 (var 101s) (var 0s) (var 0s))
    push 849s
    stog.sprite_index* = (int32 self.c)
    self.siner = (+ self.siner 1s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (var 218s) (var 250s) (var 0s) (var 851s))
    call (draw_set_color[]:int32 (var 8421504))
    call (draw_text_transformed[]:int32 (var -20s) (var 1s) (var 1s) (var "cold outside#but stay warm#inside of you") (+ 120s (cos[]:int32 (/ self.siner (double 12s)))) (+ 220s (sin[]:int32 (/ self.siner (double 12s)))))
0x001C04:
    if !(== self.weather 2s) goto 0x001DB4
0x001C18:
    self.c = (instance_create[]:int32 (var 101s) (var 0s) (var 0s))
    push 850s
    stog.sprite_index* = (int32 self.c)
    push (choose[]:int32 (merge_color[]:int32 (var 0.5d) (var 16777215) (var 255s)))
    stog.image_blend* = (int32 self.c)
    self.siner = (+ self.siner 1s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (var 218s) (var 250s) (floor[]:int32 (/ self.siner (double 15s))) (var 853s))
    call (draw_set_color[]:int32 (var 8421504))
    call (draw_text_transformed[]:int32 (var -20s) (var 1s) (var 1s) (var "spring time#back to school") (+ 120s (cos[]:int32 (/ self.siner (double 12s)))) (+ 220s (sin[]:int32 (/ self.siner (double 12s)))))
0x001DB4:
    if !(== self.weather 3s) goto 0x0020C4
0x001DC8:
    self.extreme2 = (+ self.extreme2 1s)
    if !(>= self.extreme2 240s) goto 0x001E78
0x001DF4:
    self.extreme = (+ self.extreme 1s)
    if !(>= self.extreme 1100s) goto 0x001E58
0x001E20:
    push (< (abs[]:int32 (sin[]:int32 (/ self.siner (double 15s)))) 0.1d)
    goto 0x001E5C
0x001E58:
    push 0s
0x001E5C:
    if !pop goto 0x001E78
0x001E60:
    self.extreme = 0s
    self.extreme2 = 0s
0x001E78:
    self.siner = (+ self.siner 1s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (- 2s (* (sin[]:int32 (/ self.siner (double 15s))) (+ 0.2d (/ self.extreme (double 900s))))) (+ 2s (* (sin[]:int32 (/ self.siner (double 15s))) (+ 0.2d (/ self.extreme (double 900s))))) (var 225s) (var 250s) (floor[]:int32 (/ self.siner (double 15s))) (var 854s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_circle[]:int32 (var 0s) (+ 28s (* (sin[]:int32 (/ self.siner (double 6s))) 4s)) (+ 40s (* (sin[]:int32 (/ self.siner (double 18s))) 6s)) (+ 258s (* (cos[]:int32 (/ self.siner (double 18s))) 6s)))
    call (draw_set_color[]:int32 (var 8421504))
    call (draw_text_transformed[]:int32 (var -20s) (var 1s) (var 1s) (var "try to withstand#the sun's life-#giving rays") (+ 120s (cos[]:int32 (/ self.siner (double 12s)))) (+ 220s (sin[]:int32 (/ self.siner (double 12s)))))
0x0020C4:
    if !(== self.weather 4s) goto 0x002254
0x0020D8:
    self.c = (instance_create[]:int32 (var 101s) (var 0s) (var 0s))
    push 850s
    stog.sprite_index* = (int32 self.c)
    push (choose[]:int32 (var 255s) (var 4235519) (var 65535))
    stog.image_blend* = (int32 self.c)
    self.siner = (+ self.siner 1s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (var 218s) (var 250s) (var 0s) (var 852s))
    call (draw_set_color[]:int32 (var 8421504))
    call (draw_text_transformed[]:int32 (var -20s) (var 1s) (var 1s) (var "sweep a leaf#sweep away a#troubles") (+ 120s (cos[]:int32 (/ self.siner (double 12s)))) (+ 220s (sin[]:int32 (/ self.siner (double 12s)))))
0x002254:
    if !(== self.intro 1s) goto 0x0023BC
0x002268:
    if !(== self.rectile 16s) goto 0x0022A0
0x00227C:
    call (caster_play[]:int32 (var 1s) (var 1s) self.harp)
0x0022A0:
    self.rectile = (+ self.rectile 4s)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 250s) (var -1s) (var -10s) (- 168s self.rectile))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 250s) (var 330s) (var -10s) (+ 152s self.rectile))
    if !(>= self.rectile 170s) goto 0x0023BC
0x00236C:
    call (caster_loop[]:int32 (var 1s) (var 0.8d) self.weathermusic)
    self.menu_engage = 0s
    self.buffer = 5s
    self.intro = -1s
0x0023BC:
    exit
