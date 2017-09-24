0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 47s
    global.facechoice = 6s
    global.faceemotion = 0s
    global.faceemotion = 8s
    stog.msg[0s] = "* Th-that last&  question.../"
    stog.msg[1s] = "\\E4* He wasn't s-supposed&  to ask that one.../%%"
    if !(> global.plot 126s) goto 0x0000A0
0x00008C:
    push (== self.room 141s)
    goto 0x0000A4
0x0000A0:
    push 0s
0x0000A4:
    if !pop goto 0x0000D8
0x0000A8:
    global.facechoice = 0s
    global.typer = 5s
    stog.msg[0s] = "* (Yellow feet are tapping&  just behind the door.)/%%"
0x0000D8:
    if !(== self.room 211s) goto 0x000130
0x0000EC:
    stog.flag[430s] = 1s
    global.facechoice = 6s
    global.faceemotion = 5s
    stog.msg[0s] = "* I..^1. I just need&  a moment./%%"
0x000130:
    if !(== self.room 212s) goto 0x000188
0x000144:
    stog.flag[430s] = 1s
    global.facechoice = 6s
    global.faceemotion = 5s
    stog.msg[0s] = "* .../%%"
0x000188:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0001C8:
    exit
