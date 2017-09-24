0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Since you flexed at me^1,&  I've been thinking of a&  lot of things ; )/"
    stog.msg[1s] = "* Like..^1.&* Flexing ; )/%%"
    if !(> self.talkedto 0s) goto 0x000098
0x000080:
    stog.msg[0s] = "* And flexing ; )/%%"
0x000098:
    push -5s
    if !(== 7s:flag 1s) goto 0x0000E4
0x0000B4:
    stog.msg[0s] = "* You came all this way to&  see me flex ; )/"
    stog.msg[1s] = "* This really says something&  about you ; )/%%"
0x0000E4:
    push -5s
    if !(== 95s:flag 1s) goto 0x00017C
0x000100:
    stog.msg[0s] = "* I..^1. I'm sc-scared... ; )/"
    stog.msg[1s] = "* Ghosts aren't real^1, right?&* ; )/"
    stog.msg[2s] = "* What^1? They are real^1?&* Oh nooooooo ; )/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x00017C
0x000164:
    stog.msg[0s] = "* First ghosts^1, are real^1, now&  anime's real ; )&* All my nightmares are true ; )/%%"
0x00017C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0001BC:
    exit
