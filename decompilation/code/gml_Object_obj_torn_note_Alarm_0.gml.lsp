0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = " error/%%"
    if !(== self.room 246s) goto 0x0000B0
0x000068:
    stog.msg[0s] = "* (There's a note on the&  ground...^1)&* (You can't make it all out.)/"
    stog.msg[1s] = "* \"elevator..^1. lost power..^1.\"&* \"enter the center door...\"/"
    stog.msg[2s] = "* (That's all you could read.)/%%"
0x0000B0:
    if !(== self.room 249s) goto 0x00010C
0x0000C4:
    stog.msg[0s] = "* (There's a note on the&  ground...^1)&* (You can't make it all out.)/"
    stog.msg[1s] = "* \"drain..^1. dropped it...\"/"
    stog.msg[2s] = "* (That's all you could read.)/%%"
0x00010C:
    if !(== self.room 253s) goto 0x000168
0x000120:
    stog.msg[0s] = "* (There's a note on the&  ground...^1)&* (You can't make it all out.)/"
    stog.msg[1s] = "* \"cold...\"/"
    stog.msg[2s] = "* (That's all you could read.)/%%"
0x000168:
    if !(== self.room 259s) goto 0x0001C4
0x00017C:
    stog.msg[0s] = "* (There's a note on the&  ground...^1)&* (You can't make it all out.)/"
    stog.msg[1s] = "* \"curtain...\"/"
    stog.msg[2s] = "* (That's all you could read.)/%%"
0x0001C4:
    if !(== self.room 257s) goto 0x000220
0x0001D8:
    stog.msg[0s] = "* (There's a note on the&  ground...^1)&* (You can't make it all out.)/"
    stog.msg[1s] = "* \"under..^1. sheets...\"/"
    stog.msg[2s] = "* (That's all you could read.)/%%"
0x000220:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000260:
    exit
