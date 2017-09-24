0x000000:
    self.myinteract = 3s
    global.msc = 516s
    if !(== self.room 170s) goto 0x000038
0x00002C:
    global.msc = 744s
0x000038:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    call (instance_create[]:int32 (var 1525s) (var 0s) (var 0s))
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000A8:
    exit
