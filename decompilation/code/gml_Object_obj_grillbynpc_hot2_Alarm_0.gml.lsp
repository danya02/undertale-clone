0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Those dogs are part of&  the ROYAL GUARD^1, the elite&  military group led by UNDYNE./"
    stog.msg[1s] = "* She's rude^1, loud^1, and beats up&  everybody who gets in her&  way.../"
    stog.msg[2s] = "* It's no wonder all the kids&  want to be like her when&  they grow up!/%%"
    if !(> self.talkedto 0s) goto 0x0000B0
0x000098:
    stog.msg[0s] = "* I want to be like UNDYNE&  when I grow up^1, too^1!&* Hoo hoo hoo!/%%"
0x0000B0:
    if !(== self.sansmode 1s) goto 0x0000F4
0x0000C4:
    stog.msg[0s] = "* Sans is a sentry^1.&* But don't let his title make&  you think he does anything./"
    stog.msg[1s] = "\\W* Everyone knows he sits&  around in the forest&  reading \\Ycar magazines\\W./%%"
0x0000F4:
    if !(>= global.plot 122s) goto 0x000120
0x000108:
    stog.msg[0s] = "* Ehhhhhhhhnnnnn..^1.&* I wish I had something else&  to do./%%"
0x000120:
    if !(bool (scr_deaddog[]:int32 )) goto 0x000178
0x000130:
    stog.msg[0s] = "* Those dogs are part of&  the ROYAL GUARD^1, the.../"
    stog.msg[1s] = "* Huh^1?&* Where are they?/"
    stog.msg[2s] = "* Something feels really off./%%"
0x000178:
    push -5s
    if !(== 7s:flag 1s) goto 0x0001DC
0x000194:
    stog.msg[0s] = "* Wow^1, a brand new world.../"
    stog.msg[1s] = "* I might not get to&  translate for Grillby&  anymore.../"
    stog.msg[2s] = "* ... which is fine^1, since I&  was actually just making&  up what he was saying./%%"
0x0001DC:
    push -5s
    if !(== 67s:flag 1s) goto 0x000228
0x0001F8:
    stog.msg[0s] = "* Grillby is getting nervous./"
    stog.msg[1s] = "* Sans is his best customer^1,&  and he hasn't shown up&  at all today.../%%"
0x000228:
    push -5s
    if !(== 350s:flag 1s) goto 0x000274
0x000244:
    stog.msg[0s] = "* Something feels really bad^1.&* Our lives are going nowhere^1,&  aren't they...?/"
    stog.msg[1s] = "* I think I need another&  espresso.../%%"
0x000274:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0002B4:
    exit
