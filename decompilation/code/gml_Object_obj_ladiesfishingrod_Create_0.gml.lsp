0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.reeled = 0s
    self.image_speed = 0s
    self.orx = 0s
    if !(> global.plot 100s) goto 0x0000C8
0x000090:
    push -5s
    if !(== 5s:flag 65s) goto 0x0000C8
0x0000AC:
    push -5s
    push (== 7s:flag 0s)
    goto 0x0000CC
0x0000C8:
    push 0s
0x0000CC:
    if !pop goto 0x0001E0
0x0000D0:
    self.orx = 0s
    if !(bool (file_exists[]:int32 (var "undertale.ini"))) goto 0x0001AC
0x0000F8:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.srx = (ini_read_real[]:int32 (var 0s) (var "fun") (var "General"))
    if !(== self.srx 65s) goto 0x0001A0
0x000154:
    self.orx = 1s
    stog.flag[5s] = 0s
    call (ini_write_real[]:int32 (var 0s) (var "fun") (var "General"))
0x0001A0:
    call (ini_close[]:int32 )
0x0001AC:
    if !(== self.orx 1s) goto 0x0001E0
0x0001C0:
    self.orx = (choose[]:int32 (var 1s) (var 0s))
0x0001E0:
    if !(== self.orx 1s) goto 0x000208
0x0001F4:
    call (room_goto[]:int32 (var 270s))
0x000208:
    exit
