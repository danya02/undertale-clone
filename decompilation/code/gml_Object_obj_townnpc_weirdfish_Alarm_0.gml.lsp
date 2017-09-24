0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* I \"put out a line\" for some&  girls today./"
    stog.msg[1s] = "* Someone told me that there&  are plenty of fish in the&  sea.../"
    stog.msg[2s] = "* Well^1, I'm taking that&  seriously./"
    stog.msg[3s] = "* I'm literally going to make&  out with a fish./%%"
    if !(> self.talkedto 0s) goto 0x0000C8
0x0000B0:
    stog.msg[0s] = "* I guess I could ask out Undyne^1.&* But I think she likes someone&  already./%%"
0x0000C8:
    if !(>= global.plot 122s) goto 0x0000F4
0x0000DC:
    stog.msg[0s] = "* Did I catch anyone yet^1?&* I can't bear to look.../%%"
0x0000F4:
    if !(== self.sansmode 1s) goto 0x000138
0x000108:
    stog.msg[0s] = "* Sans is the most regular&  regular of all./"
    stog.msg[1s] = "* He hasn't been showing up&  as much recently though./%%"
0x000138:
    push -5s
    if !(== 67s:flag 1s) goto 0x0001B4
0x000154:
    stog.msg[0s] = "* Where the heck is Sans?/"
    stog.msg[1s] = "* He told me he had some&  bait I could use./"
    stog.msg[2s] = "* Though it was probably&  some kind of prank./"
    stog.msg[3s] = "* But I wanted to know what&  the prank was!/%%"
0x0001B4:
    push -5s
    if !(== 7s:flag 1s) goto 0x000230
0x0001D0:
    stog.msg[0s] = "* In the end^1, I never caught&  any girls on my fishing&  line./"
    stog.msg[1s] = "* So kid^1, take it from me.../"
    stog.msg[2s] = "* Don't try to catch hot&  people with a fishing rod./"
    stog.msg[3s] = "* (Somewhere^1, you hear a whinny&  of dismay.)/%%"
0x000230:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000270:
    exit
