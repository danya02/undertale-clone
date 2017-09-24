0x000000:
    self.fun = 0s
    if !(bool (file_exists[]:int32 (var "undertale.ini"))) goto 0x00009C
0x000028:
    self.fun = 1s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.tr = (ini_read_real[]:int32 (var -1s) (var "EndF") (var "EndF"))
    if !(>= self.tr 2s) goto 0x00009C
0x000090:
    self.fun = 0s
0x00009C:
    self.menu = 0s
    self.menu_engage = 0s
    self.buffer = 5s
    if !(> 1569.j_ch 0s) goto 0x0000FC
0x0000D4:
    if !(~ (bool (joystick_has_pov[]:int32 1569.j_ch))) goto 0x0000FC
0x0000F0:
    global.joypad_dir = 1s
0x0000FC:
    self.r_line = "RESETTED..."
    self.o_o = 0s
    self.siner = 0s
    self.r_buffer = 0s
    self.intro = 0s
    self.weather = 0s
    if !(== self.fun 1s) goto 0x0003BC
0x00015C:
    self.extreme2 = 0s
    self.extreme = 0s
    self.rectile = 0s
    self.intro = 1s
    self.menu_engage = -1s
    self.weather = 1s
    self.month = self.current_month
    if (== self.month 12s) goto 0x0001F0
0x0001C8:
    if (== self.month 1s) goto 0x0001F0
0x0001DC:
    push (== self.month 2s)
    goto 0x0001F4
0x0001F0:
    push 1s
0x0001F4:
    if !pop goto 0x000204
0x0001F8:
    self.weather = 1s
0x000204:
    if (== self.month 3s) goto 0x000240
0x000218:
    if (== self.month 4s) goto 0x000240
0x00022C:
    push (== self.month 5s)
    goto 0x000244
0x000240:
    push 1s
0x000244:
    if !pop goto 0x000254
0x000248:
    self.weather = 2s
0x000254:
    if (== self.month 6s) goto 0x000290
0x000268:
    if (== self.month 7s) goto 0x000290
0x00027C:
    push (== self.month 8s)
    goto 0x000294
0x000290:
    push 1s
0x000294:
    if !pop goto 0x0002A4
0x000298:
    self.weather = 3s
0x0002A4:
    if (== self.month 9s) goto 0x0002E0
0x0002B8:
    if (== self.month 10s) goto 0x0002E0
0x0002CC:
    push (== self.month 11s)
    goto 0x0002E4
0x0002E0:
    push 1s
0x0002E4:
    if !pop goto 0x0002F4
0x0002E8:
    self.weather = 4s
0x0002F4:
    self.harp = (caster_load[]:int32 (var "music/harpnoise.ogg"))
    if !(== self.weather 1s) goto 0x000340
0x000324:
    self.weathermusic = (caster_load[]:int32 (var "music/options_winter.ogg"))
0x000340:
    if (== self.weather 2s) goto 0x000368
0x000354:
    push (== self.weather 4s)
    goto 0x00036C
0x000368:
    push 1s
0x00036C:
    if !pop goto 0x00038C
0x000370:
    self.weathermusic = (caster_load[]:int32 (var "music/options_fall.ogg"))
0x00038C:
    if !(== self.weather 3s) goto 0x0003BC
0x0003A0:
    self.weathermusic = (caster_load[]:int32 (var "music/options_summer.ogg"))
0x0003BC:
    exit
