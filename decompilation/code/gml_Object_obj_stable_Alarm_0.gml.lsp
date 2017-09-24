0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    stog.msg[0s] = "error/%%"
    push -5s
    if !(== 92s:flag 0s) goto 0x000070
0x000058:
    global.msc = 593s
    global.typer = 5s
0x000070:
    push -5s
    if !(> 92s:flag 0s) goto 0x0000F4
0x00008C:
    global.msc = 595s
    push -5s
    if !(== 92s:flag 2s) goto 0x0000C0
0x0000B4:
    global.msc = 596s
0x0000C0:
    push -5s
    if !(== 92s:flag 3s) goto 0x0000E8
0x0000DC:
    global.msc = 597s
0x0000E8:
    global.typer = 34s
0x0000F4:
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* test/%%"
    push -5s
    if !(!= 92s:flag 4s) goto 0x000184
0x000140:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
    goto 0x000194
0x000184:
    self.bibblybeebly = 349382
0x000194:
    exit
