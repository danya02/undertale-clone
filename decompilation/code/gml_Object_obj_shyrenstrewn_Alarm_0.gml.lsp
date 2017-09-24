0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    push -5s
    if !(== 81s:flag 2s) goto 0x000074
0x000058:
    stog.msg[0s] = "* It's a mixture of socks^1,&  fanmail^1, and toilet paper./%%"
    goto 0x00008C
0x000074:
    stog.msg[0s] = "* There's a conspicuous&  lack of anything on the&  ground./%%"
0x00008C:
    self.read = (+ self.read 1s)
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000CC:
    exit
