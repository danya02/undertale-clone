0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "\\W* Heh^1.&* I'm \\RHeats Flamesman\\W.&* Remember my name!/%%"
    if !(== self.room 187s) goto 0x0000F4
0x000068:
    global.msc = 850s
    push -5s
    if !(== 434s:flag 1s) goto 0x0000B4
0x000090:
    global.msc = 0s
    stog.msg[0s] = "* I'll always remember that&  you remembered!/%%"
0x0000B4:
    push -5s
    if !(== 434s:flag 2s) goto 0x0000F4
0x0000D0:
    global.msc = 0s
    stog.msg[0s] = "* I'll never forget that you&  forgot!/%%"
0x0000F4:
    push -5s
    if !(== 7s:flag 1s) goto 0x000128
0x000110:
    stog.msg[0s] = "* What?&* Do you want a rematch?/%%"
0x000128:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000168:
    exit
