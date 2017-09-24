0x000000:
    self.myinteract = 3s
    global.msc = 680s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Come on! What are you doing!/%%"
    push -5s
    if !(== 85s:flag 1s) goto 0x000094
0x000070:
    global.msc = 0s
    stog.msg[0s] = "* Ahhh..^1.&* No umbrellas allowed!/%%"
0x000094:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000D4:
    exit
