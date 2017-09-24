0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* This cheese has been here&  quite a long time./"
    stog.msg[1s] = "* It's stuck to the table.../%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0000A0
0x000088:
    stog.msg[0s] = "* (Looks like cheese has a&  nibble taken out of it.)/%%"
0x0000A0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000C8:
    exit
