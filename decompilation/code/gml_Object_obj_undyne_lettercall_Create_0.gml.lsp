0x000000:
    self.con = 0s
    self.d = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.won = (ini_read_real[]:int32 (var 0s) (var "Won") (var "General"))
    call (ini_close[]:int32 )
    if !(< self.won 1s) goto 0x00008C
0x000080:
    self.d = 1s
0x00008C:
    push -5s
    if !(< 389s:flag 3s) goto 0x0000B4
0x0000A8:
    self.d = 1s
0x0000B4:
    if !(> global.kills 0s) goto 0x0000D4
0x0000C8:
    self.d = 1s
0x0000D4:
    if !(<= global.plot 198s) goto 0x0000F4
0x0000E8:
    self.d = 1s
0x0000F4:
    push -5s
    if !(>= 493s:flag 8s) goto 0x00011C
0x000110:
    self.d = 1s
0x00011C:
    if !(== self.d 1s) goto 0x00014C
0x000130:
    self.con = -1s
    call (instance_destroy[]:int32 )
    exit
0x00014C:
    self.image_yscale = 12s
    if !(== self.room 188s) goto 0x000184
0x00016C:
    self.image_yscale = 1s
    self.image_xscale = 30s
0x000184:
    exit
