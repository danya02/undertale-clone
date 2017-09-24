0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 28s
    global.facechoice = 0s
    global.faceemotion = 0s
    push -5s
    if !(== 269s:flag 1s) goto 0x000074
0x000058:
    stog.msg[0s] = "* hOIVS!/%%"
    goto 0x0000C8
0x000074:
    stog.msg[0s] = "* p..^1.&* tem heard human allergics&  to tem.../"
    stog.msg[1s] = "* dat OK..^1.&* tem understan.../"
    stog.msg[2s] = "* tem..^1.&* ALSO allergic to tem!!!/%%"
    self.con = 2s
0x0000C8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000108:
    exit
