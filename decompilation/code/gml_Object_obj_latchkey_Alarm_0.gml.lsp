0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (You took the key and&  put it on your phone's&  key-chain.)/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    if !(== self.room 225s) goto 0x0000A4
0x000090:
    stog.flag[452s] = 1s
0x0000A4:
    if !(== self.room 222s) goto 0x0000CC
0x0000B8:
    stog.flag[453s] = 1s
0x0000CC:
    exit
