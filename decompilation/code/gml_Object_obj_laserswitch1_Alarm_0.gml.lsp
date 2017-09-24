0x000000:
    self.myinteract = 3s
    global.msc = 682s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Hi./%%"
    if !(> global.plot 184s) goto 0x00008C
0x000068:
    global.msc = 0s
    stog.msg[0s] = "* (Didn't work.)/%%"
0x00008C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000B4:
    exit
