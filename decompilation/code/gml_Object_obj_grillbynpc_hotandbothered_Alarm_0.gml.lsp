0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* No matter where I go^1,&  it's the same menu^1, the&  same people.../"
    stog.msg[1s] = "* Help^1!&* I want new drinks an'&  ^1h-^1h-^1h-hot guys!!!!/%%"
    if !(> self.talkedto 0s) goto 0x000098
0x000080:
    stog.msg[0s] = "* I guess the bartender's kind&  of ^1h-^1h-^1h-hot.../%%"
0x000098:
    if !(>= global.plot 122s) goto 0x0000DC
0x0000AC:
    stog.msg[0s] = "* C'mon everybody!!^1!&* ^1L-^1l-^1l-let's party!!!/"
    stog.msg[1s] = "* ... anyone?/%%"
0x0000DC:
    if !(== self.sansmode 1s) goto 0x000120
0x0000F0:
    stog.msg[0s] = "* Sansyyyy..^1.&* Come back and sit with me.../"
    stog.msg[1s] = "* Everything's so fun when&  you're around!!!/%%"
0x000120:
    if !(bool (scr_deaddog[]:int32 )) goto 0x000160
0x000130:
    stog.msg[0s] = "* It's s-s-so quiet in here./"
    stog.msg[1s] = "* L-lighten up everybody^1!&* This is why I hate&  th-this place./%%"
0x000160:
    push -5s
    if !(== 7s:flag 1s) goto 0x0001C4
0x00017C:
    stog.msg[0s] = "* I w-wonder if the&  o-overworld h-has h-hot&  guys.../"
    stog.msg[1s] = "*  A-and neat d-drinks.../"
    stog.msg[2s] = "* Ooooooo^1, I'm ready!/%%"
0x0001C4:
    push -5s
    if !(== 67s:flag 1s) goto 0x000210
0x0001E0:
    stog.msg[0s] = "* H-hey^1, isn't Sansy s'posed&  to come swinging in right&  about now???/"
    stog.msg[1s] = "* C'mon Sansy^1!&* You're the life of the&  party.../%%"
0x000210:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000250:
    exit
