0x000000:
    self.myinteract = 3s
    global.msc = 782s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(> 1570.x self.x) goto 0x000090
0x000054:
    stog.msg[0s] = "* (Seems like a comfy bed.)/"
    stog.msg[1s] = "* (You could probably climb&  into it if you were to&  the left of it.)/%%"
    global.msc = 0s
0x000090:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000D0:
    exit
