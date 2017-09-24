0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(bool (instance_exists[]:int32 (var 1025s))) goto 0x000160
0x000054:
    call (scr_papface[]:int32 (var 0s) (var 0s))
    stog.msg[1s] = "THAT'S MY BED!/"
    stog.msg[2s] = "IF I EVER GET&TO THE SURFACE.../"
    stog.msg[3s] = "I'D LIKE TO&DRIVE DOWN A&LONG HIGHWAY./"
    stog.msg[4s] = "WIND IN MY&HAIR.../"
    stog.msg[5s] = "SUN ON MY&SKIN.../"
    stog.msg[6s] = "\\E3OF COURSE^1, THAT'S&JUST A DREAM./"
    stog.msg[7s] = "\\E0SO INSTEAD I&CRUISE WHILE I&SNOOZE./%%"
    if !(> self.read 0s) goto 0x00015C
0x00012C:
    stog.msg[1s] = "WHY ARE YOU SO&INTERESTED IN MY&BED?/"
    stog.msg[2s] = "\\E3ARE YOU TIRED?/%%"
0x00015C:
    goto 0x000178
0x000160:
    stog.msg[0s] = "* (It's a racecar bed^1, neatly&  made.)/%%"
0x000178:
    self.read = (+ self.read 1s)
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0001B8:
    exit
