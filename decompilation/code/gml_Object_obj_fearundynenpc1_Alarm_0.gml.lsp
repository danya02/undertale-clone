0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* We're about to visit Snowdin&  for the first time./"
    stog.msg[1s] = "* You just came from there^1,&  right?/"
    stog.msg[2s] = "* How is it...?/%%"
    if !(> global.plot 105s) goto 0x0000B0
0x000098:
    stog.msg[0s] = "* You should go back to&  Snowdin./%%"
0x0000B0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000F0:
    exit
