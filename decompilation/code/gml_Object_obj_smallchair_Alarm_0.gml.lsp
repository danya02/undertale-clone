0x000000:
    self.myinteract = 3s
    global.msc = 0s
    stog.msg[0s] = "* (Toriel's small chair.)&* (Its name is Chairiel.)/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000064
0x00004C:
    stog.msg[0s] = "* (Who knows what the future&  holds for Chairiel.)/%%"
0x000064:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000B0:
    exit
