0x000000:
    self.myinteract = 3s
    if !(< global.plot 5s) goto 0x000150
0x000020:
    if !(bool (instance_exists[]:int32 (var 870s))) goto 0x0000F4
0x000038:
    [obj_torinteractable2].lsprite = 1110s
    global.msc = 0s
    global.typer = 4s
    global.facechoice = 1s
    global.faceemotion = 1s
    stog.msg[0s] = "* No no no^1!/"
    stog.msg[1s] = "\\E0* You want to press the&  other switch./"
    stog.msg[2s] = "\\E1* I even labelled it for&  you.../%%"
    push -5s
    if !(== 6s:flag 1s) goto 0x0000F0
0x0000D8:
    stog.msg[0s] = "* It seems that is not&  the correct switch./%%"
0x0000F0:
    goto 0x000150
0x0000F4:
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    call (snd_play[]:int32 (var 27s))
    stog.msg[0s] = "* (Wow!^1)&* (You are superfast at being&  wrong.)/%%"
0x000150:
    if !(>= global.plot 5s) goto 0x0001AC
0x000164:
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* This switch doesn't even&  work.../%%"
0x0001AC:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0001D4:
    exit
