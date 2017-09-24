0x000000:
    if !(== global.interact 0s) goto 0x000134
0x000014:
    call (snd_play[]:int32 (var 104s))
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.bs = (ini_read_real[]:int32 (var 0s) (var "Bscotch") (var "Toriel"))
    call (ini_close[]:int32 )
    if !(== self.bs 0s) goto 0x0000F0
0x0000B4:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 222s) (var 146s))
    goto 0x000128
0x0000F0:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 831s) (var 146s))
0x000128:
    global.interact = 1s
0x000134:
    exit
