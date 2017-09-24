0x000000:
    self.up = 0s
    self.down = 0s
    self.left = 0s
    self.right = 0s
    self.quit = 0s
    self.try_up = 0s
    self.try_down = 0s
    self.try_left = 0s
    self.try_right = 0s
    self.canquit = 1s
    self.h_skip = 0s
    self.j_xpos = 0s
    self.j_ypos = 0s
    self.j_dir = 0s
    self.j_fr = 0s
    self.j_fl = 0s
    self.j_fu = 0s
    self.j_fd = 0s
    self.j_fr_p = 0s
    self.j_fl_p = 0s
    self.j_fu_p = 0s
    self.j_fd_p = 0s
    self.i = 0s
    if !(< self.i 12s) goto 0x00017C
0x000128:
    stog.j_prev[(int32 self.i)] = 0s
    stog.j_on[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    goto 0x000114
0x00017C:
    global.button0 = 2s
    global.button1 = 1s
    global.button2 = 4s
    global.analog_sense = 0.15d
    global.analog_sense_sense = 0.01d
    global.joy_dir = 0s
    call (ini_open[]:int32 (var "config.ini"))
    self.b0_i = (ini_read_real[]:int32 (var -1s) (var "b0") (var "joypad1"))
    self.b1_i = (ini_read_real[]:int32 (var -1s) (var "b1") (var "joypad1"))
    self.b2_i = (ini_read_real[]:int32 (var -1s) (var "b2") (var "joypad1"))
    self.as_i = (ini_read_real[]:int32 (var -1s) (var "as") (var "joypad1"))
    self.jd_i = (ini_read_real[]:int32 (var -1s) (var "jd") (var "joypad1"))
    if !(>= self.b0_i 0s) goto 0x000300
0x0002F0:
    global.button0 = self.b0_i
0x000300:
    if !(>= self.b1_i 0s) goto 0x000324
0x000314:
    global.button1 = self.b1_i
0x000324:
    if !(>= self.b2_i 0s) goto 0x000348
0x000338:
    global.button2 = self.b2_i
0x000348:
    if !(>= self.as_i 0s) goto 0x00036C
0x00035C:
    global.analog_sense = self.as_i
0x00036C:
    if !(>= self.jd_i 0s) goto 0x000390
0x000380:
    global.joy_dir = self.jd_i
0x000390:
    call (ini_close[]:int32 )
    self.debug_r = 0s
    self.debug_f = 0s
    self.j1 = 0s
    self.j2 = 0s
    self.ja = 0s
    self.j_ch = 0s
    self.jt = 0s
    self.spec_rtimer = 0s
0x0003FC:
    exit
