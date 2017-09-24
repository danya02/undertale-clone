0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(bool (instance_exists[]:int32 (var 1025s))) goto 0x000148
0x000054:
    call (scr_papface[]:int32 (var 0s) (var 0s))
    stog.msg[1s] = "AH^1, YES^1, ACTION&FIGURES./"
    stog.msg[2s] = "A GREAT REFERENCE&FOR THEORETICAL&BATTLE SCENARIOS./"
    stog.msg[3s] = "\\E3HOW DO I HAVE&SO MANY?/"
    stog.msg[4s] = "\\E2WELL^1, LET'S JUST&SAY THEY'RE&FROM.../"
    stog.msg[5s] = "\\E0A CHUBBY^1, SMILING&MAN WHO LOVES TO&SURPRISE PEOPLE./"
    stog.msg[6s] = "YEAH^1!!&THAT'S RIGHT!/"
    stog.msg[7s] = "SANTA!!!!/%%"
    if !(> self.read 0s) goto 0x000144
0x00012C:
    stog.msg[0s] = "* (Action figures of many&  sexy robots.)/%%"
0x000144:
    goto 0x000160
0x000148:
    stog.msg[0s] = "* (Action figures of many&  sexy robots.)/%%"
0x000160:
    self.read = (+ self.read 1s)
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0001A0:
    exit
