0x000000:
    if !(< global.plot 10.2d) goto 0x00008C
0x00001C:
    self.myinteract = 3s
    global.msc = 510s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.talkedto = 1s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x00008C:
    exit
