0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* You aren't gonna make me&  be the human again^1, are you?/%%"
    if !(>= global.plot 122s) goto 0x000080
0x000068:
    stog.msg[0s] = "* Can we PLEASE play something&  else...?/%%"
0x000080:
    push -5s
    if !(== 7s:flag 1s) goto 0x0000CC
0x00009C:
    stog.msg[0s] = "* Hmmm..^1.&* When humans play Monsters&  and Humans.../"
    stog.msg[1s] = "* Do they just call it&  Humans and Humans?/%%"
0x0000CC:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x00010C:
    exit
