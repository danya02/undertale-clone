0x000000:
    self.myinteract = 3s
    global.msc = 224s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(== self.reeled 1s) goto 0x00008C
0x000050:
    self.image_index = 0s
    self.reeled = 0s
    global.msc = 0s
    stog.msg[0s] = "* You send the line back out./%%"
0x00008C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000B4:
    exit
