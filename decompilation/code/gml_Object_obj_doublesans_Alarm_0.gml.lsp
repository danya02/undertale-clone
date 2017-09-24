0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 17s
    global.facechoice = 3s
    global.faceemotion = 0s
    stog.msg[0s] = "* say..^./"
    stog.msg[1s] = "\\E1* are you following me?/%%"
    if !(>= 1022.talkedto 2s) goto 0x000098
0x000080:
    stog.msg[0s] = "* are you lost?/%%"
0x000098:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000D8:
    exit
