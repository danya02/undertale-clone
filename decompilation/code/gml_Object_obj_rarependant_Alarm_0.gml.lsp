0x000000:
    if !(== self.anti_buffer 0s) goto 0x000090
0x000014:
    self.myinteract = 3s
    global.msc = 256s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000090:
    exit
