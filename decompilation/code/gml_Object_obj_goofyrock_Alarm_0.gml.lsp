0x000000:
    self.myinteract = 3s
    global.msc = 505s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    if !(!= self.conversation 9s) goto 0x000090
0x000078:
    self.conversation = (+ self.conversation 1s)
0x000090:
    global.interact = 1s
0x00009C:
    exit
