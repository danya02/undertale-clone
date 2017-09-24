0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "%%"
    if !(== self.room 118s) goto 0x000074
0x000068:
    global.msc = 716s
0x000074:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x00009C:
    exit
