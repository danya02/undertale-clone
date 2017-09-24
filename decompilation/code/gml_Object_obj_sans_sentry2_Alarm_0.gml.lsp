0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 17s
    global.facechoice = 3s
    global.faceemotion = 0s
    stog.msg[0s] = "* grievous error/%%"
    push -5s
    if !(== 89s:flag 0s) goto 0x00007C
0x000070:
    global.msc = 567s
0x00007C:
    push -5s
    if !(== 89s:flag 2s) goto 0x0000B0
0x000098:
    stog.msg[0s] = "* let's hang out again&  sometime./%%"
0x0000B0:
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x00010C
0x0000C4:
    global.faceemotion = 3s
    global.msc = 0s
    stog.msg[0s] = "\\E3* hey^1, i really&  respect what you did&  back there./"
    stog.msg[1s] = "\\E2* thanks./%%"
0x00010C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x00014C:
    exit
