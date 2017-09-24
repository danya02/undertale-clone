0x000000:
    call (ini_open[]:int32 (var "undertale.ini"))
    global.fplot = (ini_read_real[]:int32 (var 0s) (var "P") (var "FFFFF"))
    global.floss = (ini_read_real[]:int32 (var 0s) (var "D") (var "FFFFF"))
    call (ini_close[]:int32 )
    global.inbattle = 0s
    if !(== global.fplot 0s) goto 0x0000B4
0x0000A4:
    call (room_goto_next[]:int32 )
    goto 0x0000C8
0x0000B4:
    call (room_goto[]:int32 (var 295s))
0x0000C8:
    exit
