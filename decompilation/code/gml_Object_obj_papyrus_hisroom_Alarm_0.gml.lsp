0x000000:
    if !(< self.intro 4s) goto 0x0000A8
0x000014:
    self.myinteract = 3s
    global.msc = 563s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    stog.msg[0s] = "TAKE A LOOK&AROUND!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000A8:
    exit
