0x000000:
    if !(== self.t 0s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x001E74
0x000030:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 0s
    self.t = 1s
    if !(== self.room 196s) goto 0x000094
0x000080:
    push (< global.plot 185s)
    goto 0x000098
0x000094:
    push 0s
0x000098:
    if !pop goto 0x0001EC
0x00009C:
    global.plot = 185s
    stog.flag[416s] = 1s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E6 \\F6 \\TA %"
    stog.msg[2s] = "* OK^1!&* Y-you should..^1.&* You should.../"
    stog.msg[3s] = "* Head to the..^1.&* Head to the.../"
    stog.msg[4s] = "\\E9* I..^1. I.../"
    stog.msg[3s] = "\\E9* I don't know?/"
    stog.msg[4s] = "\\E8* This doesn't look&  like my map&  at all.../"
    stog.msg[5s] = "\\E9* I'm sorry..^1.&* I..^1. I.../"
    stog.msg[6s] = "\\E8* I have to go./"
    stog.msg[7s] = "\\TS \\F0 \\T0 %"
    stog.msg[8s] = "* Click.../%%"
    push -5s
    if !(== 367s:flag 1s) goto 0x0001EC
0x0001E0:
    self.donotcall = 1s
0x0001EC:
    if !(== self.room 195s) goto 0x000214
0x000200:
    push (< global.plot 183s)
    goto 0x000218
0x000214:
    push 0s
0x000218:
    if !pop goto 0x00025C
0x00021C:
    global.plot = 183s
    [obj_powerlaser_event].con = 10s
    push -5s
    if !(== 367s:flag 1s) goto 0x00025C
0x000250:
    self.donotcall = 1s
0x00025C:
    if !(== self.room 193s) goto 0x0002A0
0x000270:
    push -5s
    if !(== 416s:flag 0s) goto 0x0002A0
0x00028C:
    push (> self.x 140s)
    goto 0x0002A4
0x0002A0:
    push 0s
0x0002A4:
    if !pop goto 0x00035C
0x0002A8:
    stog.flag[416s] = 1s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* W-wait^1!&* No^1, I think you&  should h-head up!/"
    stog.msg[3s] = "\\TS \\F0 \\T0 %"
    stog.msg[4s] = "* Click.../%%"
    push -5s
    if !(== 367s:flag 1s) goto 0x00035C
0x000350:
    self.donotcall = 1s
0x00035C:
    if !(== self.room 193s) goto 0x000398
0x000370:
    if !(< global.plot 182s) goto 0x000398
0x000384:
    push (< self.x 140s)
    goto 0x00039C
0x000398:
    push 0s
0x00039C:
    if !pop goto 0x00047C
0x0003A0:
    global.plot = 182s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* A crossroads..^1.&* Uhh.../"
    stog.msg[3s] = "* Uhhh.../"
    stog.msg[4s] = "\\E6* Tr..^1.&* Try heading to the&  right!/"
    stog.msg[5s] = "\\TS \\F0 \\T0 %"
    stog.msg[6s] = "* Click.../%%"
    push -5s
    if !(== 367s:flag 1s) goto 0x00047C
0x000470:
    self.donotcall = 1s
0x00047C:
    if !(== self.room 192s) goto 0x0004A4
0x000490:
    push (< global.plot 180s)
    goto 0x0004A8
0x0004A4:
    push 0s
0x0004A8:
    if !pop goto 0x0005B8
0x0004AC:
    global.plot = 180s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Looks like you can't&  proceed until you&  hit the switch./"
    stog.msg[3s] = "* B-but^1, those lasers&  will activate when&  you do./"
    stog.msg[4s] = "\\E6* Ummm..^1.&* Looks like they'll&  come in this order:/"
    stog.msg[5s] = "\\W* \\OOrange\\W. \\OOrange\\W. \\LBlue\\W./"
    stog.msg[6s] = "* G-got it^1?&* Move until the&  third one!/"
    stog.msg[7s] = "\\TS \\F0 \\T0 %"
    stog.msg[8s] = "* Click.../%%"
    push -5s
    if !(== 367s:flag 1s) goto 0x0005B8
0x0005AC:
    self.donotcall = 1s
0x0005B8:
    if !(== self.room 190s) goto 0x0005E8
0x0005CC:
    push -5s
    push (== 415s:flag 0s)
    goto 0x0005EC
0x0005E8:
    push 0s
0x0005EC:
    if !pop goto 0x00086C
0x0005F0:
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E6 \\F6 \\TA %"
    stog.msg[2s] = "* Alright^1, now just&  keep heading&  up!/"
    stog.msg[3s] = "\\E6* .../"
    stog.msg[4s] = "\\E3* ..^1.&* That pit..^1.&* Isn't on my map./"
    stog.msg[5s] = "\\E6* Forget it^1!&* Let's try the&  left side!/"
    stog.msg[6s] = "\\TS \\F0 \\T0 %"
    stog.msg[7s] = "* Click.../%%"
    push -5s
    if !(== 414s:flag 0s) goto 0x00078C
0x0006CC:
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* H-hey^1, aren't&  you gonna use&  the elevator?/"
    stog.msg[3s] = "\\E6* I guess you can&  go this way!/"
    stog.msg[4s] = "\\E3* .../"
    stog.msg[5s] = "* If there wasn't&  a huge pit in&  the way...?/"
    stog.msg[6s] = "\\TS \\F0 \\T0 %"
    stog.msg[7s] = "* Click.../%%"
0x00078C:
    if !(> global.plot 178s) goto 0x000830
0x0007A0:
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Wh..^1. where'd this&  pit come from?/"
    stog.msg[3s] = "\\E8* You should be able&  to walk across&  here.../"
    stog.msg[4s] = "\\TS \\F0 \\T0 %"
    stog.msg[5s] = "* Click.../%%"
0x000830:
    stog.flag[415s] = 1s
    push -5s
    if !(== 367s:flag 1s) goto 0x00086C
0x000860:
    self.donotcall = 1s
0x00086C:
    if !(== self.room 189s) goto 0x000894
0x000880:
    push (< global.plot 177s)
    goto 0x000898
0x000894:
    push 0s
0x000898:
    if !pop goto 0x000960
0x00089C:
    global.plot = 177s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E6 \\F6 \\TA %"
    stog.msg[2s] = "* Ready^1?&* This is it!/"
    stog.msg[3s] = "* Take the elevator&  up to the top&  of the CORE!/"
    stog.msg[4s] = "\\TS \\F0 \\T0 %"
    stog.msg[5s] = "* Click.../%%"
    push -5s
    if !(== 367s:flag 1s) goto 0x000960
0x000954:
    self.donotcall = 1s
0x000960:
    if !(== self.room 172s) goto 0x000A00
0x000974:
    push -5s
    if !(< 369s:flag 26s) goto 0x0009F4
0x000990:
    stog.flag[369s] = 26s
    global.msc = 837s
    stog.msg[0s] = "* Ring.../%%"
    push -5s
    if !(== 367s:flag 1s) goto 0x0009F0
0x0009E4:
    self.donotcall = 1s
0x0009F0:
    goto 0x000A00
0x0009F4:
    self.donotcall = 1s
0x000A00:
    if !(== self.room 171s) goto 0x000C4C
0x000A14:
    if !(< global.plot 163s) goto 0x000C40
0x000A28:
    global.plot = 163s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Hi^1, Alphys here!/"
    stog.msg[3s] = "* This room is like&  the room we saw&  before./"
    stog.msg[4s] = "* There are two puzzles&  to the north and&  south.../"
    stog.msg[5s] = "* You'll have to solve&  them both to proceed!/"
    stog.msg[6s] = "\\E2* .../"
    stog.msg[7s] = "\\E0* A-also... I'd like&  to say!/"
    stog.msg[8s] = "\\E3* I don't really...&* Like giving away&  puzzle solutions./"
    stog.msg[9s] = "\\E6* But if you need&  help^1, just call&  me^1, ok?/"
    stog.msg[10s] = "\\E3* Actually^1, wait^1, I&  have an idea!/"
    stog.msg[11s] = "\\E0* Let's be friends&  on UnderNet!/"
    stog.msg[12s] = "\\E7* Then you can just&  ping me when you&  need help!/"
    stog.msg[13s] = "\\E0* .../"
    stog.msg[14s] = "\\E4* Wait^1, we're already&  friends^1, aren't we?/"
    stog.msg[15s] = "\\E5* I signed you up^1,&  didn't I?/"
    stog.msg[16s] = "\\E5* You've been reading&  my posts the whole&  time.../"
    stog.msg[17s] = "\\E6* Well^1! I hope^1!&  You agree with me^1!&* About Mew Mew 2!/"
    stog.msg[18s] = "\\TS \\F0 \\T0 %"
    stog.msg[19s] = "* Click.../%%"
    push -5s
    if !(== 367s:flag 1s) goto 0x000C3C
0x000C30:
    self.donotcall = 1s
0x000C3C:
    goto 0x000C4C
0x000C40:
    self.donotcall = 1s
0x000C4C:
    if !(== self.room 167s) goto 0x000CC4
0x000C60:
    if !(< global.plot 162s) goto 0x000CB8
0x000C74:
    global.plot = 162s
    global.msc = 684s
    push -5s
    if !(== 367s:flag 1s) goto 0x000CB4
0x000CA8:
    self.donotcall = 1s
0x000CB4:
    goto 0x000CC4
0x000CB8:
    self.donotcall = 1s
0x000CC4:
    if !(== self.room 163s) goto 0x000DE4
0x000CD8:
    if !(< global.plot 143s) goto 0x000DD8
0x000CEC:
    global.msc = 0s
    global.plot = 143s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Uh^1, h-h-hey!/"
    stog.msg[3s] = "\\E0* I'm going to the&  bathroom^1, so I'll&  be MIA for a bit./"
    stog.msg[4s] = "* I'm..^1. I'm sure you&  can handle this&  puzzle yourself!/"
    stog.msg[5s] = "\\TS \\F0 \\T0 %"
    stog.msg[6s] = "* Click.../%%"
    push -5s
    if !(== 367s:flag 1s) goto 0x000DD4
0x000DC8:
    self.donotcall = 1s
0x000DD4:
    goto 0x000DE4
0x000DD8:
    self.donotcall = 1s
0x000DE4:
    if !(== self.room 155s) goto 0x000E0C
0x000DF8:
    push (< global.plot 137s)
    goto 0x000E10
0x000E0C:
    push 0s
0x000E10:
    if !pop goto 0x000F68
0x000E14:
    if !(< global.plot 137s) goto 0x000F34
0x000E28:
    global.msc = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* S-see that building in&  the distance?/"
    stog.msg[3s] = "\\E0* That's the CORE^1.&* The source of all power&  for the underground./"
    stog.msg[4s] = "\\E6* It converts geothermal&  energy into magical&  electricity^1, by.../"
    stog.msg[5s] = "\\E3* Uhh^1, anyway^1, that's&  where we're going to&  go./"
    stog.msg[6s] = "\\E0* In the CORE is an&  elevator directly to&  ASGORE's castle./"
    stog.msg[7s] = "\\E0* And from there..^1.&* You can go home./"
    stog.msg[8s] = "\\TS \\F0 \\T0 %"
    stog.msg[9s] = "* Click.../%%"
    global.plot = 137s
    goto 0x000F40
0x000F34:
    self.donotcall = 1s
0x000F40:
    push -5s
    if !(== 367s:flag 1s) goto 0x000F68
0x000F5C:
    self.donotcall = 1s
0x000F68:
    if !(== self.room 153s) goto 0x000F98
0x000F7C:
    push (< global.plot 133.5d)
    goto 0x000F9C
0x000F98:
    push 0s
0x000F9C:
    if !pop goto 0x0010B4
0x000FA0:
    global.plot = 133.5d
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Uuuh^1, I think...&* Umm.../"
    stog.msg[3s] = "\\E6* Hey^1!&* About the puzzles on&  the left and right...!/"
    stog.msg[4s] = "\\E6* They're a bit difficult&  to explain^1, but.../"
    stog.msg[5s] = "\\E4* ... uhhh^1, you already&  s-solved them?/"
    stog.msg[6s] = "\\E5* Awesome!/"
    stog.msg[7s] = "\\TS \\F0 \\T0 %"
    stog.msg[8s] = "* Click.../%%"
    push -5s
    if !(== 367s:flag 1s) goto 0x0010B4
0x0010A8:
    self.donotcall = 1s
0x0010B4:
    if !(== self.room 149s) goto 0x0010E4
0x0010C8:
    push -5s
    push (== 373s:flag 0s)
    goto 0x0010E8
0x0010E4:
    push 0s
0x0010E8:
    if !pop goto 0x0012C4
0x0010EC:
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Alphys^1! Here!/"
    stog.msg[3s] = "\\E6* Th-that blue laser&  seems totally&  impassable!/"
    stog.msg[4s] = "\\E3* B-b-but!/"
    stog.msg[5s] = "\\E6* As the Royal Scientist^1,&  I h-have some tricks&  up my sleeve!/"
    stog.msg[6s] = "* I'll h-hack into th-the&  Hotland laser database&  and take it out!/"
    stog.msg[7s] = "\\TS \\F0 \\T0 %"
    stog.msg[8s] = "* Click.../%%"
    push -5s
    if !(== 372s:flag 1s) goto 0x001288
0x0011E0:
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* A-another laser^1,&  huh?/"
    stog.msg[3s] = "\\E8* I'm sorry^1, I won't&  play around this&  time./"
    stog.msg[4s] = "\\E6* Hold on a second!!/"
    stog.msg[5s] = "\\TS \\F0 \\T0 %"
    stog.msg[6s] = "* Click.../%%"
0x001288:
    stog.flag[373s] = 1s
    push -5s
    if !(== 367s:flag 1s) goto 0x0012C4
0x0012B8:
    self.donotcall = 1s
0x0012C4:
    if !(== self.room 148s) goto 0x0012EC
0x0012D8:
    push (< global.plot 132s)
    goto 0x0012F0
0x0012EC:
    push 0s
0x0012F0:
    if !pop goto 0x0014D8
0x0012F4:
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E0 \\F6 \\TA %"
    stog.msg[2s] = "\\E0* Your next location&  is that door up&  north./"
    stog.msg[3s] = "* But^1! It's locked by&  two switched to the&  east and west./"
    stog.msg[4s] = "* So!!^1!&* Head to those rooms&  first!!!/"
    stog.msg[5s] = "\\E6* I.M.O!!!!/"
    stog.msg[6s] = "\\E1* .../"
    stog.msg[7s] = "\\E0* Acronyms kind of lose&  their punch out&  loud^1, huh?/"
    stog.msg[8s] = "\\TS \\F0 \\T0 %"
    stog.msg[9s] = "* Click.../%%"
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E6 \\F6 \\TA %"
    stog.msg[2s] = "\\E6* A-A-Alphys here!!!!/"
    stog.msg[3s] = "\\E3* Th..^1. the northern door&  will stay locked until&  you.../"
    stog.msg[4s] = "* S-solve the puzzles on&  the right and left!/"
    stog.msg[5s] = "\\E0* I..^1. I think you&  sh-should g-g-go to the&  right first!/"
    stog.msg[6s] = "\\TS \\F0 \\T0 %"
    stog.msg[7s] = "* Click.../%%"
    global.plot = 132s
    push -5s
    if !(== 367s:flag 1s) goto 0x0014D8
0x0014CC:
    self.donotcall = 1s
0x0014D8:
    if !(== self.room 147s) goto 0x001500
0x0014EC:
    push (< global.plot 131s)
    goto 0x001504
0x001500:
    push 0s
0x001504:
    if !pop goto 0x0017D8
0x001508:
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E4 \\F6 \\TA %"
    stog.msg[2s] = "\\E4* H..^1. h..^1. hi.../"
    stog.msg[3s] = "\\E0* It's me..^1. Dr. Alphys..^1.&* I said I would&  guide you...?/"
    stog.msg[4s] = "\\E4* But^1, um^1, I'm not&  very good at talking&  on the phone./"
    stog.msg[5s] = "\\E0* Errrr^1, anyway!&* See those lasers?/"
    stog.msg[6s] = "* Try to remember your&  elementary bullet&  pattern class./"
    stog.msg[7s] = "\\W* \\OOrange attacks\\W can't&  hurt you if you're&  moving./"
    stog.msg[8s] = "\\W* \\LBlue attacks\\W can't&  hurt you if you're&  standing still./"
    stog.msg[9s] = "* These lasers are the&  same way!/"
    stog.msg[10s] = "\\E3* It's^1, it's sort of like&  that episode where&  they.../"
    stog.msg[11s] = "\\TS*\\E2 (Crash^1! Bang^1! Boom!)/"
    stog.msg[12s] = "\\TA*\\E4 Uhhhhh^1, gotta go^1!&* Talk to you later!/"
    stog.msg[13s] = "\\TS \\F0 \\T0 %"
    stog.msg[14s] = "* Click.../%%"
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Uhh^1!&* H-hi^1, so^1, the blue&  lasers.../"
    stog.msg[3s] = "\\E4* Uhh^1!&* I mean^1, Alphys here^1!&* Hi!/"
    stog.msg[4s] = "\\W*\\E6 The \\Lblue lasers\\W won't&  hurt you if you don't&  move!/"
    stog.msg[5s] = "\\W*\\E3 \\OO-orange\\W ones^1, um..^1.&* Y-you have to be&  moving^1, and they.../"
    stog.msg[6s] = "\\E4* Um^1, they won't^1, um.../"
    stog.msg[7s] = "\\E6* Move through those&  ones!/"
    stog.msg[8s] = "\\E1* .../"
    stog.msg[9s] = "\\E5* Uhh^1, bye!/"
    stog.msg[10s] = "\\TS \\F0 \\T0 %"
    stog.msg[11s] = "* Click.../%%"
    global.plot = 131s
    stog.flag[462s] = 0s
    push -5s
    if !(== 367s:flag 1s) goto 0x0017D8
0x0017CC:
    self.donotcall = 1s
0x0017D8:
    if !(== self.room 145s) goto 0x001800
0x0017EC:
    push (< global.plot 130s)
    goto 0x001804
0x001800:
    push 0s
0x001804:
    if !pop goto 0x001884
0x001808:
    stog.msg[0s] = "* Ring..^1. Ring.../"
    stog.msg[1s] = "* Click...?/"
    stog.msg[2s] = "* (Whoever was calling hung up&  before you answered it.)/%%"
    global.plot = 130s
    push -5s
    if !(== 367s:flag 1s) goto 0x001884
0x001878:
    self.donotcall = 1s
0x001884:
    if !(== self.room 88s) goto 0x0018AC
0x001898:
    push (< global.plot 107s)
    goto 0x0018B0
0x0018AC:
    push 0s
0x0018B0:
    if !pop goto 0x001930
0x0018B4:
    stog.msg[0s] = " "
    global.plot = 107s
    call (instance_create[]:int32 (var 1339s) (var 340s) (var 40s))
    global.msc = 553s
    push -5s
    if !(== 67s:flag 1s) goto 0x001930
0x001924:
    self.donotcall = 1s
0x001930:
    if !(== self.room 97s) goto 0x001960
0x001944:
    push -5s
    push (< 354s:flag 1s)
    goto 0x001964
0x001960:
    push 0s
0x001964:
    if !pop goto 0x0019EC
0x001968:
    stog.msg[0s] = " "
    stog.flag[354s] = 1s
    call (instance_create[]:int32 (var 1339s) (var 40s) (var 380s))
    global.msc = 632s
    push -5s
    if !(== 67s:flag 1s) goto 0x0019EC
0x0019E0:
    self.donotcall = 1s
0x0019EC:
    if !(== self.room 136s) goto 0x001A1C
0x001A00:
    push -5s
    push (< 354s:flag 2s)
    goto 0x001A20
0x001A1C:
    push 0s
0x001A20:
    if !pop goto 0x001AA8
0x001A24:
    stog.msg[0s] = " "
    stog.flag[354s] = 2s
    global.msc = 633s
    push -5s
    if !(== 67s:flag 1s) goto 0x001A84
0x001A78:
    self.donotcall = 1s
0x001A84:
    if !(bool (instance_exists[]:int32 (var 1118s))) goto 0x001AA8
0x001A9C:
    [obj_undynea_chaser].con = 20s
0x001AA8:
    if !(== self.room 115s) goto 0x001AD8
0x001ABC:
    push -5s
    push (== 493s:flag 10s)
    goto 0x001ADC
0x001AD8:
    push 0s
0x001ADC:
    if !pop goto 0x001CCC
0x001AE0:
    stog.msg[0s] = "* Ring.../"
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "HOWDY!/"
    stog.msg[3s] = "IF IT ISN'T MY&GOOD FRIEND^1,&WHO TRUSTS ME./"
    stog.msg[4s] = "THIS IS PAPYRUS^1.&YOUR ALSO&MUTUAL FRIEND./"
    stog.msg[5s] = "\\E3ALPHYS AND I&FINISHED OUR&TRAINING EARLY./"
    stog.msg[6s] = "\\E5VERY EARLY./"
    stog.msg[7s] = "\\E3SO I SENT HER&HOME./"
    stog.msg[8s] = "\\E5VERY HOME./"
    stog.msg[9s] = "\\E3UH... NOW./"
    stog.msg[10s] = "\\E0I FEEL STRONGLY&AND FOR NO&APPARENT REASON./"
    stog.msg[11s] = "\\E3YOU SHOULD ALSO&GO..^1. THERE./"
    stog.msg[12s] = "\\E0TO HER^1.&LAB..^1. HOUSE./"
    stog.msg[13s] = "I HAVE ONLY&GOOD FEELINGS&ABOUT THIS./"
    stog.msg[14s] = "\\E5GOODBYE./"
    stog.msg[15s] = "\\TS \\F0 \\T0 %"
    stog.msg[16s] = "* Click.../%%"
    push -5s
    if !(== 67s:flag 1s) goto 0x001CA4
0x001C98:
    self.donotcall = 1s
0x001CA4:
    stog.flag[492s] = 0s
    stog.flag[493s] = 11s
0x001CCC:
    if !(== self.room 162s) goto 0x001CF4
0x001CE0:
    push (< global.plot 139s)
    goto 0x001CF8
0x001CF4:
    push 0s
0x001CF8:
    if !pop goto 0x001E08
0x001CFC:
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E4 \\F6 \\TA %"
    stog.msg[2s] = "\\E3* H..^1. hi...^1!&* It's Dr. Alphys./"
    stog.msg[3s] = "\\E0* This p-puzzle is&  kinda..^1. um..^1. timing-&  based./"
    stog.msg[4s] = "\\E3* Y-you see those&  switches over there?/"
    stog.msg[5s] = "\\E0* Y-you'll have to press&  all three of them&  within 3 seconds./"
    stog.msg[6s] = "\\E6* I'll t-try to help&  you with the&  rhythm!/"
    stog.msg[7s] = "\\TS \\F0 \\T0 %"
    stog.msg[8s] = "* Click.../%%"
    global.plot = 139s
    push -5s
    if !(== 367s:flag 1s) goto 0x001E08
0x001DFC:
    self.donotcall = 1s
0x001E08:
    if !(== self.donotcall 0s) goto 0x001E30
0x001E1C:
    call (snd_play[]:int32 (var 104s))
0x001E30:
    if !(== self.donotcall 0s) goto 0x001E74
0x001E44:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    global.interact = 1s
0x001E74:
    exit
