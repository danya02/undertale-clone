0x000000:
    self.myinteract = 3s
    global.msc = 585s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* NO!/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0000A8
0x000070:
    push -5s
    if !(== 85s:flag 1s) goto 0x0000A8
0x00008C:
    push -5s
    push (== 86s:flag 0s)
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x0000D4
0x0000B0:
    global.msc = 0s
    stog.msg[0s] = "* (No point in giving it an&  umbrella now.)/%%"
0x0000D4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000114:
    exit
