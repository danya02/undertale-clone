0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 17s
    global.facechoice = 3s
    global.faceemotion = 0s
    stog.msg[0s] = "* you oughta get going^1.&* he might come back^1.&* and if he does.../"
    stog.msg[1s] = "\\E2* ... you'll have to&  sit through more of&  my hilarious jokes./%%"
    if !(> self.talkedto 0s) goto 0x0000F0
0x000080:
    if !(== self.talkedto 1s) goto 0x0000C4
0x000094:
    stog.msg[0s] = "* what's the holdup^1?&* look^1, there's nothin&  to be afraid of./"
    stog.msg[1s] = "\\E2* it's just a dark cavern&  filled with skeletons&  and horrible monsters./%%"
0x0000C4:
    if !(== self.talkedto 2s) goto 0x0000F0
0x0000D8:
    stog.msg[0s] = "* well?/%%"
0x0000F0:
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x00011C
0x000104:
    stog.msg[0s] = "* ... are you just gonna&  stare at me^1, or...?/%%"
0x00011C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x00015C:
    exit
