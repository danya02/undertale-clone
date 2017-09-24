0x000000:
    call (SCR_GAMESTART[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.time = 0s
    self.image_speed = 0s
    self.jjjjjj = 0s
    if (<= 20s 0) goto 0x0000BC
0x000070:
    push 20s
    stog.tempvalue[(int32 self.jjjjjj)] = 0s
    self.jjjjjj = (+ self.jjjjjj 1s)
    if (bool (- pop 1)) goto 0x000070
0x0000BC:
    push (- pop 1)
    pop
    call (ini_open[]:int32 (var "undertale.ini"))
    self.fskip = (ini_read_real[]:int32 (var -1s) (var "E") (var "FFFFF"))
    self.ftime = (ini_read_real[]:int32 (var -1s) (var "F") (var "FFFFF"))
    self.true_end = (ini_read_real[]:int32 (var -1s) (var "EndF") (var "EndF"))
    call (ini_close[]:int32 )
    self.sksk = 0s
    if !(== self.ftime 1s) goto 0x0001B4
0x000194:
    self.sksk = 1s
    call (room_goto[]:int32 (var 290s))
0x0001B4:
    if !(== self.true_end 1s) goto 0x0001DC
0x0001C8:
    push (== self.sksk 0s)
    goto 0x0001E0
0x0001DC:
    push 0s
0x0001E0:
    if !pop goto 0x000204
0x0001E4:
    self.sksk = 1s
    call (room_goto[]:int32 (var 320s))
0x000204:
    if !(>= self.fskip 1s) goto 0x00022C
0x000218:
    push (== self.sksk 0s)
    goto 0x000230
0x00022C:
    push 0s
0x000230:
    if !pop goto 0x0002A0
0x000234:
    global.filechoice = 8s
    call (scr_load[]:int32 )
    if !(== self.fskip 1s) goto 0x000274
0x000260:
    call (room_goto[]:int32 (var 319s))
0x000274:
    if !(== self.fskip 2s) goto 0x00029C
0x000288:
    call (room_goto[]:int32 (var 238s))
0x00029C:
    goto 0x0002C0
0x0002A0:
    if !(== self.sksk 0s) goto 0x0002C0
0x0002B4:
    call (room_goto_next[]:int32 )
0x0002C0:
    if !(bool (file_exists[]:int32 (var "system_information_962"))) goto 0x0002FC
0x0002DC:
    push (~ (bool (file_exists[]:int32 (var "system_information_963"))))
    goto 0x000300
0x0002FC:
    push 0s
0x000300:
    if !pop goto 0x000318
0x000304:
    call (room_goto[]:int32 (var 324s))
0x000318:
    global.osflavor = 1s
    if !(!= self.os_type 0s) goto 0x000344
0x000338:
    global.osflavor = 2s
0x000344:
    exit
