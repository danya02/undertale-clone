0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (It's playing poker against&  itself.)/"
    stog.msg[1s] = "* (It appears to be losing.)/%%"
    if !(> global.plot 122s) goto 0x000098
0x000080:
    stog.msg[0s] = "* (It has switched to Go Fish.)/%%"
0x000098:
    push -5s
    if !(== 7s:flag 1s) goto 0x0000CC
0x0000B4:
    stog.msg[0s] = "* (It finally won a game of&  poker against itself...?)/%%"
0x0000CC:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x00010C:
    exit
