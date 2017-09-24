0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* ..^1.&* ..^1.&* ..^1./"
    stog.msg[1s] = "* Grillbz said that he'd offer&  you a glass of water^1, but he&  doesn't touch the stuff./%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0000A0
0x000088:
    stog.msg[0s] = "* .............^1.&* ..............^1.&* ... good job./%%"
0x0000A0:
    if !(== self.sansmode 1s) goto 0x0000E4
0x0000B4:
    stog.msg[0s] = "* ..^1.&* ..^1.&* ..^1./"
    stog.msg[1s] = "* Grillbz said that your&  food is probably cold&  by now./%%"
0x0000E4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000124:
    exit
