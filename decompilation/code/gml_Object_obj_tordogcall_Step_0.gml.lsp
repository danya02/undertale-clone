0x000000:
    if !(== global.interact 0s) goto 0x00002C
0x000014:
    self.dogtimer = (+ self.dogtimer 1s)
0x00002C:
    self.factor = 40s
    if !(== global.interact 0s) goto 0x00006C
0x00004C:
    push (== self.dogtimer (* 150s self.factor))
    goto 0x000070
0x00006C:
    push 0s
0x000070:
    if !pop goto 0x0001B4
0x000074:
    call (snd_play[]:int32 (var 104s))
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Ring..\\E0.\\TT /"
    stog.msg[1s] = "\\F1 %"
    stog.msg[2s] = "* Hello^1!&* This is TORIEL./"
    stog.msg[3s] = "\\E1* My errands are taking&  longer than I thought&  they would./"
    stog.msg[4s] = "\\E1* You must wait 5 more&  minutes./"
    stog.msg[5s] = "\\E0* Thank you for being&  patient./"
    stog.msg[6s] = "\\TS \\F0 \\T0 %"
    stog.msg[7s] = "* Click.../%%"
    global.interact = 1s
    self.con = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0001B4:
    if !(== global.interact 0s) goto 0x0001E8
0x0001C8:
    push (== self.dogtimer (* 300s self.factor))
    goto 0x0001EC
0x0001E8:
    push 0s
0x0001EC:
    if !pop goto 0x000390
0x0001F0:
    call (snd_play[]:int32 (var 104s))
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Ring..\\E1.\\TT /"
    stog.msg[1s] = "\\F1 %"
    stog.msg[2s] = "* Hello..^1.&* This is TORIEL./"
    stog.msg[3s] = "\\E1* I found what I was&  looking for./"
    stog.msg[4s] = "* But before I could&  take it.../"
    stog.msg[5s] = "* A small^1, white puppy&  snatched it away./"
    stog.msg[6s] = "\\E0* How odd./"
    stog.msg[7s] = "\\E1* Do dogs even LIKE&  flour?/"
    stog.msg[8s] = "\\E8* Err^1, that is an&  unrelated question^1,&  of course./"
    stog.msg[9s] = "\\E1* It will take a little&  longer^1.&* Please understand./"
    stog.msg[10s] = "\\TS \\F0 \\T0 %"
    stog.msg[11s] = "* Click.../%%"
    global.interact = 1s
    self.con = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000390:
    if !(== global.interact 0s) goto 0x0003C4
0x0003A4:
    push (== self.dogtimer (* 450s self.factor))
    goto 0x0003C8
0x0003C4:
    push 0s
0x0003C8:
    if !pop goto 0x000580
0x0003CC:
    call (snd_play[]:int32 (var 104s))
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "* (...)/"
    stog.msg[2s] = "* (You hear heavy panting on&  the other end of the&  phone...)/"
    stog.msg[3s] = "* (...)/"
    stog.msg[4s] = "* Bark^1!&* Bark!/"
    stog.msg[5s] = "* Bark..^1.&* Bark!/"
    stog.msg[6s] = "* (You hear a distant voice.)/"
    stog.msg[7s] = "\\TT* Stop^1, please!/"
    stog.msg[8s] = "* Come back here with my&  CELLPHONE!/"
    stog.msg[9s] = "\\TS \\F0 \\T0 %"
    stog.msg[10s] = "* Click.../%%"
    global.interact = 1s
    self.con = 1s
    stog.flag[37s] = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.d = 0s
    self.d_noise = 1s
0x000580:
    if !(== self.d_noise 1s) goto 0x0005AC
0x000594:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0005B0
0x0005AC:
    push 0s
0x0005B0:
    if !pop goto 0x000654
0x0005B4:
    if !(== 782.stringno 4s) goto 0x0005DC
0x0005C8:
    push (== self.d 0s)
    goto 0x0005E0
0x0005DC:
    push 0s
0x0005E0:
    if !pop goto 0x000604
0x0005E4:
    self.d = 1s
    call (snd_play[]:int32 (var 41s))
0x000604:
    if !(== 782.stringno 5s) goto 0x00062C
0x000618:
    push (== self.d 1s)
    goto 0x000630
0x00062C:
    push 0s
0x000630:
    if !pop goto 0x000654
0x000634:
    self.d = 2s
    call (snd_play[]:int32 (var 41s))
0x000654:
    if !(== global.interact 0s) goto 0x000688
0x000668:
    push (== self.dogtimer (* 600s self.factor))
    goto 0x00068C
0x000688:
    push 0s
0x00068C:
    if !pop goto 0x00085C
0x000690:
    call (snd_play[]:int32 (var 104s))
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "* (...)/"
    stog.msg[2s] = "* (Snore..^1. snore...)/"
    stog.msg[3s] = "* (It sounds like a small^1,&  white dog is sleeping on&  the cell phone.)/"
    stog.msg[4s] = "* (You hear a distant voice.)\\TT/"
    stog.msg[5s] = "* Helloooo^1?&* Little puppy...?/"
    stog.msg[6s] = "* Where are you...?/"
    stog.msg[7s] = "* I will give you a nice pat&  on the head!/"
    stog.msg[8s] = "\\T0* (The snoring stops.)/"
    stog.msg[9s] = "\\TT* ... if you return my CELLPHONE./"
    stog.msg[10s] = "\\T0* (The snoring resumes.)/"
    stog.msg[11s] = "\\TS \\F0 \\T0 %"
    stog.msg[12s] = "* Click.../%%"
    global.interact = 1s
    self.con = 1s
    stog.flag[37s] = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x00085C:
    if !(== global.interact 0s) goto 0x000890
0x000870:
    push (== self.dogtimer (* 750s self.factor))
    goto 0x000894
0x000890:
    push 0s
0x000894:
    if !pop goto 0x000A64
0x000898:
    call (snd_play[]:int32 (var 104s))
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "* (...)/"
    stog.msg[2s] = "* (Snore..^1. snore...)/"
    stog.msg[3s] = "* (Achoo!)/"
    stog.msg[4s] = "* (It sounds like a small^1,&  white dog sneezing in its&  sleep.)/"
    stog.msg[5s] = "* (You hear a distant voice.)\\TT/"
    stog.msg[6s] = "* Here^1, pup-pup-puppy!/"
    stog.msg[7s] = "* Oh dear^1, I should not keep&  my guest waiting any longer./"
    stog.msg[8s] = "* ... Oh no^1, how long has it&  been since I have talked to&  them...?/"
    stog.msg[9s] = "* Perhaps they have been calling&  the phone^1, and...?/"
    stog.msg[10s] = "* ... here^1, puppy!/"
    stog.msg[11s] = "\\TS \\F0 \\T0 %"
    stog.msg[12s] = "* Click.../%%"
    global.interact = 1s
    self.con = 1s
    stog.flag[37s] = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000A64:
    if !(== global.interact 0s) goto 0x000A98
0x000A78:
    push (== self.dogtimer (* 900s self.factor))
    goto 0x000A9C
0x000A98:
    push 0s
0x000A9C:
    if !pop goto 0x000C6C
0x000AA0:
    call (snd_play[]:int32 (var 104s))
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "* (...)/"
    stog.msg[2s] = "* (Snore..^1. snore...)/"
    stog.msg[3s] = "* (Yawn...)/"
    stog.msg[4s] = "* (Blink blink.)/"
    stog.msg[5s] = "* (Yawn...)/"
    stog.msg[6s] = "* (Snore..^1. snore...)/"
    stog.msg[7s] = "* (You hear a tired voice.)\\TT/"
    stog.msg[8s] = "* Doggie..^1.&* Here^1, doggie.../"
    stog.msg[9s] = "* Oh dear.../"
    stog.msg[10s] = "* I do wonder how they are.../"
    stog.msg[11s] = "\\TS \\F0 \\T0 %"
    stog.msg[12s] = "* Click.../%%"
    global.interact = 1s
    self.con = 1s
    stog.flag[37s] = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000C6C:
    if !(== global.interact 0s) goto 0x000CA0
0x000C80:
    push (== self.dogtimer (* 1050s self.factor))
    goto 0x000CA4
0x000CA0:
    push 0s
0x000CA4:
    if !pop goto 0x000DB4
0x000CA8:
    call (snd_play[]:int32 (var 104s))
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "* (Snore..^1. snore...)/"
    stog.msg[2s] = "\\TS \\F0 \\T0 %"
    stog.msg[3s] = "* Click.../%%"
    global.interact = 1s
    self.con = 1s
    stog.flag[37s] = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.dogtimer = (* 910s self.factor)
0x000DB4:
    if !(== self.con 1s) goto 0x000DFC
0x000DC8:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000DFC
0x000DE4:
    self.con = 0s
    global.interact = 0s
0x000DFC:
    exit
