0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    push -5s
    if !(== 490s:flag 1s) goto 0x000080
0x000058:
    stog.msg[0s] = "* (It's a refrigerator.^1)&* (It's empty.)/%%"
    self.con = 1s
    goto 0x000098
0x000080:
    stog.msg[0s] = "* (It's some sort of cold^1,&  rectangular object.)/%%"
0x000098:
    push -5s
    if !(== 482s:flag 1s) goto 0x0000D8
0x0000B4:
    stog.msg[0s] = "* (You found a blue key on&  the ground.^1)&* (You put it on your keychain.)/%%"
    self.con = 10s
0x0000D8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000118:
    exit
