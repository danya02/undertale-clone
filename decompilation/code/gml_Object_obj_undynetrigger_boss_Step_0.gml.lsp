0x000000:
    pushenv 1129s 0x001BC8
0x000008:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000124
0x000020:
    if !(< 1570.y 600s) goto 0x00005C
0x000034:
    if !(== self.con 0s) goto 0x00005C
0x000048:
    push (== global.interact 0s)
    goto 0x000060
0x00005C:
    push 0s
0x000060:
    if !pop goto 0x000124
0x000064:
    self.remembery = 1570.y
    self.rememberyyy = 1570.y
    if !(< 1570.x 128s) goto 0x0000A4
0x000098:
    [obj_mainchara].x = 128s
0x0000A4:
    global.interact = 1s
    self.con = 1s
    self.vol = (caster_get_volume[]:int32 global.currentsong)
    self.undyne = (instance_create[]:int32 (var 1117s) (var 135s) (var 137s))
    push (int32 self.undyne):usprite
    stog.sprite_index* = (int32 self.undyne)
0x000124:
    if !(== self.con 1s) goto 0x000178
0x000138:
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    self.con = 2s
    stog.alarm[4s] = 33s
0x000178:
    if !(== self.con 2s) goto 0x0001DC
0x00018C:
    if !(> self.vol 0s) goto 0x0001C0
0x0001A0:
    self.vol = (- self.vol 0.034d)
0x0001C0:
    call (caster_set_volume[]:int32 self.vol global.currentsong)
0x0001DC:
    if !(== self.con 3s) goto 0x00023C
0x0001F0:
    push -1s
    stog.view_yview[(- 0s:view_yview 4s)] = 0s
    push -1s
    if !(< 0s:view_yview 80s) goto 0x00023C
0x000230:
    self.con = 4s
0x00023C:
    if !(== self.con 4s) goto 0x000270
0x000250:
    self.con = 5s
    stog.alarm[4s] = 30s
0x000270:
    if !(== self.con 6s) goto 0x0003CC
0x000284:
    global.facechoice = 0s
    global.typer = 37s
    global.msc = 0s
    stog.msg[0s] = "* Seven./"
    stog.msg[1s] = "\\W* Seven human souls^1, and&  \\RKing ASGORE\\W will become&  a god./"
    stog.msg[2s] = "* Six./"
    stog.msg[3s] = "* That's how many we have&  collected thus far./"
    stog.msg[4s] = "* Understand?/"
    stog.msg[5s] = "* Through your seventh and&  final soul^1, this world will&  be transformed./"
    stog.msg[6s] = "* First^1, however^1, as is customary&  for those who make it this&  far.../"
    stog.msg[7s] = "* I shall tell you the tragic&  tale of our people./"
    stog.msg[8s] = "* It all started^1, long ago.../%%"
    self.g = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.g)
    self.con = 7s
0x0003CC:
    if !(== self.con 7s) goto 0x0003F8
0x0003E0:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0003FC
0x0003F8:
    push 0s
0x0003FC:
    if !pop goto 0x00052C
0x000400:
    if !(== 782.stringno 2s) goto 0x00043C
0x000414:
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
0x00043C:
    if !(== 782.stringno 4s) goto 0x000478
0x000450:
    push (int32 self.undyne):dsprite
    stog.sprite_index* = (int32 self.undyne)
0x000478:
    if !(== 782.stringno 6s) goto 0x0004B4
0x00048C:
    push (int32 self.undyne):lsprite
    stog.sprite_index* = (int32 self.undyne)
0x0004B4:
    if !(== 782.stringno 7s) goto 0x0004F0
0x0004C8:
    push (int32 self.undyne):dsprite
    stog.sprite_index* = (int32 self.undyne)
0x0004F0:
    if !(== 782.stringno 8s) goto 0x00052C
0x000504:
    push (int32 self.undyne):lsprite
    stog.sprite_index* = (int32 self.undyne)
0x00052C:
    if !(== self.con 7s) goto 0x00055C
0x000540:
    push (~ (bool (instance_exists[]:int32 (var 782s))))
    goto 0x000560
0x00055C:
    push 0s
0x000560:
    if !pop goto 0x0005AC
0x000564:
    self.con = 8s
    push -5s
    if !(== 67s:flag 1s) goto 0x000598
0x00058C:
    self.con = 49s
0x000598:
    stog.alarm[4s] = 60s
0x0005AC:
    if !(== self.con 9s) goto 0x000664
0x0005C0:
    push (int32 self.undyne):dsprite
    stog.sprite_index* = (int32 self.undyne)
    stog.msg[0s] = "* .../"
    stog.msg[1s] = "* No^1, you know what?/%%"
    self.g = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.g)
    self.con = 10s
0x000664:
    if !(== self.con 10s) goto 0x000694
0x000678:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000698
0x000694:
    push 0s
0x000698:
    if !pop goto 0x0006D4
0x00069C:
    stog.msg[0s] = "* SCREW IT^3!%%"
    call (event_user[]:int32 (var 1s))
    self.con = 11s
0x0006D4:
    if !(== self.con 11s) goto 0x000704
0x0006E8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000708
0x000704:
    push 0s
0x000708:
    if !pop goto 0x000744
0x00070C:
    stog.msg[0s] = "* WHY SHOULD I TELL THAT STORY^1 %%"
    call (event_user[]:int32 (var 1s))
    self.con = 12s
0x000744:
    if !(== self.con 12s) goto 0x000774
0x000758:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000778
0x000774:
    push 0s
0x000778:
    if !pop goto 0x0007B4
0x00077C:
    stog.msg[0s] = "* WHEN YOU'RE ABOUT TO DIE!?^1! %%"
    call (event_user[]:int32 (var 1s))
    self.con = 13s
0x0007B4:
    if !(== self.con 13s) goto 0x0007E4
0x0007C8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0007E8
0x0007E4:
    push 0s
0x0007E8:
    if !pop goto 0x000838
0x0007EC:
    stog.msg[0s] = "* NGAAAAAHHHHHHHHHHHHHHHHH^1! %%"
    call (event_user[]:int32 (var 1s))
    stog.view_angle[0s] = 0s
    self.con = 14s
0x000838:
    if !(== self.con 14s) goto 0x00091C
0x00084C:
    self.con = 15s
    self.white = (instance_create[]:int32 (var 1363s) (var 0s) (var 0s))
    push 999s
    stog.sprite_index* = (int32 self.white)
    push 0s
    stog.image_speed* = (int32 self.white)
    push 200s
    stog.image_xscale* = (int32 self.white)
    push 200s
    stog.image_yscale* = (int32 self.white)
    push 1s
    stog.visible* = (int32 self.white)
    push 0s
    stog.image_alpha* = (int32 self.white)
    self.alp = 0s
0x00091C:
    if !(== self.con 15s) goto 0x00098C
0x000930:
    self.alp = (+ self.alp 0.02d)
    push self.alp
    stog.image_alpha* = (int32 self.white)
    if !(>= self.alp 1s) goto 0x00098C
0x000980:
    self.con = 16s
0x00098C:
    if !(== self.con 16s) goto 0x000B18
0x0009A0:
    self.con = 17s
    stog.x* = (+ (int32 self.undyne):x 3s)
    push 1434s
    stog.sprite_index* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.fakedrawer = 0s
    stog.view_visible[1s] = 0s
    stog.view_hview[1s] = 240s
    stog.view_wview[1s] = 320s
    stog.view_xview[1s] = 0s
    stog.view_yview[1s] = 60s
    stog.view_object[0s] = -4s
    stog.flag[18s] = 0s
    stog.view_xview[0s] = 0s
    stog.view_yview[0s] = 60s
    stog.view_hview[0s] = 240s
    stog.view_wview[0s] = 320s
    stog.alarm[4s] = 20s
0x000B18:
    push (int32 self.undyne)
    if !(== self.con 18s) goto 0x000B4C
0x000B2C:
    self.con = 19s
    stog.alarm[4s] = 60s
0x000B4C:
    if !(== self.con 19s) goto 0x000BB0
0x000B60:
    if !(> self.alp 0s) goto 0x000B94
0x000B74:
    self.alp = (- self.alp 0.05d)
0x000B94:
    push self.alp
    stog.image_alpha* = (int32 self.white)
0x000BB0:
    if !(== self.con 20s) goto 0x000C10
0x000BC4:
    pushenv (int32 self.white) 0x000BE0
0x000BD4:
    call (instance_destroy[]:int32 )
0x000BE0:
    popenv 0x000BD4
0x000BE4:
    self.con = 21s
    self.ax = 0s
    stog.alarm[4s] = 90s
0x000C10:
    if !(== self.con 21s) goto 0x000CA4
0x000C24:
    if !(< self.ax 8s) goto 0x000C58
0x000C38:
    self.ax = (+ self.ax 0.2d)
0x000C58:
    if !(== self.ax 4s) goto 0x000C80
0x000C6C:
    call (snd_play[]:int32 (var 28s))
0x000C80:
    push (floor[]:int32 self.ax)
    stog.image_index* = (int32 self.undyne)
0x000CA4:
    if !(== self.con 22s) goto 0x000D08
0x000CB8:
    push 1421s
    stog.sprite_index* = (int32 self.undyne)
    self.con = 23s
    [obj_mainchara].y = 0s
    [obj_mainchara].visible = 0s
    stog.alarm[4s] = 2s
0x000D08:
    if !(== self.con 24s) goto 0x0016B0
0x000D1C:
    global.facechoice = 5s
    global.faceemotion = 1s
    global.typer = 37s
    self.q = 0s
    if !(> global.kills 0s) goto 0x000D6C
0x000D60:
    self.q = 1s
0x000D6C:
    if !(== global.kills 1s) goto 0x000D9C
0x000D80:
    push -5s
    push (== 4s:flag 1s)
    goto 0x000DA0
0x000D9C:
    push 0s
0x000DA0:
    if !pop goto 0x000DB0
0x000DA4:
    self.q = 0s
0x000DB0:
    if !(== global.kills 0s) goto 0x000DD0
0x000DC4:
    self.q = 0s
0x000DD0:
    if !(== self.q 0s) goto 0x0011BC
0x000DE4:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.ud = (ini_read_real[]:int32 (var 0s) (var "UD") (var "Undyne"))
    call (ini_close[]:int32 )
    stog.msg[0s] = "* YOU!/"
    stog.msg[1s] = "* You're standing in&  the way of everybody's&  hopes and dreams!/"
    stog.msg[2s] = "\\E4* Alphys's history books&  made me think&  humans were cool.../"
    stog.msg[3s] = "\\E0* ... with their giant&  robots and flowery&  swordswomen./"
    stog.msg[4s] = "\\E1* BUT YOU?/"
    stog.msg[5s] = "\\E2* You're just a coward!/"
    stog.msg[6s] = "\\E3* Hiding behind that kid&  so you could run away&  from me again!/"
    push -5s
    if (== 98s:flag 2s) goto 0x000F18
0x000EFC:
    push -5s
    push (== 98s:flag 0s)
    goto 0x000F1C
0x000F18:
    push 1s
0x000F1C:
    if !pop goto 0x000F38
0x000F20:
    stog.msg[6s] = "* You abandoned your&  friend just so you&  could run away!/"
0x000F38:
    stog.msg[7s] = "\\E2* And let's not forget&  your wimpy goody-two-&  shoes-schtick!/"
    stog.msg[8s] = "\\E6* Oooh^1! I'm making such a&  difference by hugging&  random strangers!/"
    stog.msg[9s] = "*\\E3 You know what would&  be more valuable&  to everyone?/"
    stog.msg[10s] = "*\\E1 IF YOU WERE DEAD!!!/"
    stog.msg[11s] = "\\E0* That's right^1, human^1!&* Your continued&  existence is a crime!/"
    stog.msg[12s] = "* Your life is all&  that stands between&  us and our freedom!/"
    stog.msg[13s] = "* Right now^1, I can&  feel everyone's hearts&  pounding together!/"
    stog.msg[14s] = "\\E0* Everyone's been&  waiting their whole&  lives for this moment!/"
    stog.msg[15s] = "\\E0* But we're not&  nervous at all./"
    stog.msg[16s] = "\\E1* When everyone puts&  their hearts together^1,&  they can't lose!/"
    stog.msg[17s] = "\\E5* Now^1, human^1!&* Let's end this^1,&  right here^1, right now./"
    stog.msg[18s] = "\\E0* I'll show you how&  determined monsters&  can be!/"
    stog.msg[19s] = "\\E0* Step forward when&  you're ready^1!&* Fuhuhuhu!/%%"
    if !(> self.ud 0s) goto 0x0011BC
0x001084:
    stog.msg[7s] = "\\E1* And^1! And!/"
    stog.msg[8s] = "\\E7*... and something's&  been bothering me^1,&  too./"
    stog.msg[9s] = "\\E4* The whole time I was&  chasing after you.../"
    stog.msg[10s] = "\\E7* I felt something..^1.&* Strange./"
    stog.msg[11s] = "* The echoes of something&  warm^1, something.../"
    stog.msg[12s] = "\\E9* Something like \"I miss&  being friends with you.\"/"
    stog.msg[13s] = "\\E2* BUT THAT'S RIDICULOUS!/"
    stog.msg[14s] = "\\E6I WOULD NEVER GET&  CHUMMY WITH A COWARD&  LIKE YOU!/"
    stog.msg[15s] = "\\E1* You^1!&* You must have been&  mind-controlling me!/"
    stog.msg[16s] = "\\E6* Manipulating people to&  make them like you..^1.&* What a Grade-A FREAK!/"
    stog.msg[17s] = "\\E1* Now enough^1!&* For everyone's hopes^1!&* For everyone's dreams!/"
    stog.msg[18s] = "\\E2* And for my own&  freaking dignity!/"
    stog.msg[19s] = "\\E3* I^1, UNDYNE^1, will&  knock you down!/%%"
0x0011BC:
    if !(== self.q 1s) goto 0x001664
0x0011D0:
    stog.msg[0s] = "* YOU!/"
    stog.msg[1s] = "* You're standing in&  the way of everybody's&  hopes and dreams!/"
    stog.msg[2s] = "\\E4* Alphys's history books&  made me think humans&  were compassionate.../"
    stog.msg[3s] = "\\E1* BUT YOU?/"
    stog.msg[4s] = "\\E5* You're just a&  remorseless criminal!/"
    stog.msg[5s] = "* You wander through the&  caverns^1, attacking&  anyone in your path./"
    stog.msg[6s] = "\\E4* Self-defense^1?&* Please./"
    stog.msg[7s] = "* You didn't kill them&  because you had to./"
    stog.msg[8s] = "\\E5* You killed them&  because it was&  easy for you./"
    stog.msg[9s] = "* Because it was fun&  for you./"
    stog.msg[10s] = "\\E4* Do you think it&  was fun when I&  found out...?/"
    stog.msg[11s] = "* Do you think it's&  fun when people's&  family members.../"
    stog.msg[12s] = "* ... never come home^1?&* Is that fun?/"
    push -5s
    if !(== 81s:flag 1s) goto 0x001354
0x001324:
    stog.msg[11s] = "* Shyren^1, who was&  just learning to&  sing.../"
    stog.msg[12s] = "* ... was dead^1, because&  of the whims of&  a single human?/"
0x001354:
    push -5s
    if !(== 57s:flag 2s) goto 0x0013A0
0x001370:
    stog.msg[11s] = "* A teenage comedian&  who fell in with&  the wrong crowd.../"
    stog.msg[12s] = "* ... was dead^1, because&  of the whims of&  a single human?/"
0x0013A0:
    push -5s
    if !(== 52s:flag 1s) goto 0x0013EC
0x0013BC:
    stog.msg[11s] = "* Doggo^1, who always&  made me laugh.../"
    stog.msg[12s] = "* ... was dead^1, because&  of the whims of&  a single human?/"
0x0013EC:
    push -5s
    if !(== 53s:flag 1s) goto 0x001438
0x001408:
    stog.msg[11s] = "* Those two sweet dogs^1,&  who always took care&  of each other.../"
    stog.msg[12s] = "* ... were dead^1, because&  of the whims of&  a single human?/"
0x001438:
    push -5s
    if !(== 54s:flag 1s) goto 0x001484
0x001454:
    stog.msg[11s] = "* That big dog^1, who&  wanted nothing more&  than to play.../"
    stog.msg[12s] = "* ... was dead^1, because&  of the whims of&  a single human?/"
0x001484:
    push -5s
    if !(== 55s:flag 1s) goto 0x0014D0
0x0014A0:
    stog.msg[11s] = "* Lesser Dog^1, who&  wanted nothing more&  than affection.../"
    stog.msg[12s] = "* ... was dead^1, because&  of the whims of&  a single human?/"
0x0014D0:
    push -5s
    if !(== 55s:flag 1s) goto 0x00153C
0x0014EC:
    push -5s
    if !(== 54s:flag 1s) goto 0x00153C
0x001508:
    push -5s
    if !(== 53s:flag 1s) goto 0x00153C
0x001524:
    push -5s
    push (bool 52s:flag)
    goto 0x001540
0x00153C:
    push 0s
0x001540:
    if !pop goto 0x001574
0x001544:
    stog.msg[11s] = "* The Snowdin Canine&  Unit had been&  completely decimated./"
    stog.msg[12s] = "* My troops and friends^1,&  destroyed..^1.&* Is that fun?/"
0x001574:
    stog.msg[13s] = "\\E5* No./"
    stog.msg[14s] = "\\E3* But your time's up^1,&  villain!/"
    stog.msg[15s] = "\\E0* You won't hurt anyone&  else./"
    stog.msg[16s] = "* A knight in shining&  armor has appeared./"
    stog.msg[17s] = "\\E4* And all the pain&  you inflicted on&  the fallen.../"
    stog.msg[18s] = "* Every hope^1, every&  dream you've turned&  to dust.../"
    stog.msg[19s] = "\\E0* She's gonna send&  right back through&  her spear!/"
    stog.msg[20s] = "\\E1* NGAHHH!!!/"
    stog.msg[21s] = "\\E0* I'll show you how&  determined monsters&  truly are!/"
    stog.msg[22s] = "* Come on^1!&* Step forward and&  let's end this!/%%"
0x001664:
    self.g = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.g)
    self.con = 25s
0x0016B0:
    if !(== self.con 25s) goto 0x0016E0
0x0016C4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0016E4
0x0016E0:
    push 0s
0x0016E4:
    if !pop goto 0x0017F8
0x0016E8:
    [obj_mainchara].visible = 1s
    [obj_mainchara].y = self.rememberyyy
    push -1s
    stog.view_yview[(+ 0s:view_yview 8s)] = 0s
    push -1s
    if !(>= 0s:view_yview self.yy) goto 0x0017F8
0x001748:
    self.save = (instance_create[]:int32 (var 1351s) (var 660s) (var 220s))
    stog.view_object[0s] = 1570s
    [obj_mainchara].cutscene = 0s
    global.interact = 0s
    self.con = 26s
    global.plot = 121s
    if !(bool (instance_exists[]:int32 self.undyne)) goto 0x0017EC
0x0017CC:
    pushenv (int32 self.undyne) 0x0017E8
0x0017DC:
    call (instance_destroy[]:int32 )
0x0017E8:
    popenv 0x0017DC
0x0017EC:
    call (instance_destroy[]:int32 )
0x0017F8:
    if !(== self.con 50s) goto 0x0018B0
0x00180C:
    push (int32 self.undyne):usprite
    stog.sprite_index* = (int32 self.undyne)
    stog.msg[0s] = "* .../"
    stog.msg[1s] = "* Forget it./%%"
    self.con = 51s
    self.g = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.g)
0x0018B0:
    if !(== self.con 51s) goto 0x0018E0
0x0018C4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0018E4
0x0018E0:
    push 0s
0x0018E4:
    if !pop goto 0x001930
0x0018E8:
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
    self.con = 52s
    stog.alarm[4s] = 60s
0x001930:
    if !(== self.con 53s) goto 0x001BC8
0x001944:
    push (int32 self.undyne):dsprite
    stog.sprite_index* = (int32 self.undyne)
    global.typer = 37s
    global.msc = 0s
    global.facechoice = 5s
    global.faceemotion = 4s
    stog.msg[0s] = "* Look./"
    stog.msg[1s] = "* Papyrus didn't come&  to his meeting&  today./"
    stog.msg[2s] = "* Say what you want&  about him./"
    stog.msg[3s] = "* He's weird^1, he's&  naive^1, he's self-&  absorbed.../"
    stog.msg[4s] = "\\E5* But Papyrus has&  NEVER missed a&  meeting./"
    stog.msg[5s] = "\\E4* And no matter what&  time you call him&  on the phone.../"
    stog.msg[6s] = "* Night^1, day^1, afternoon^1,&  morning.../"
    stog.msg[7s] = "\\E5* He ALWAYS answers&  within the first&  two rings./"
    stog.msg[8s] = "\\E4* .../"
    stog.msg[9s] = "* But now he's gone./"
    stog.msg[10s] = "* And his brother&  isn't around^1,&  either./"
    stog.msg[11s] = "\\E5* .../"
    stog.msg[12s] = "* What did you do&  to him?/"
    stog.msg[13s] = "* What did you DO&  TO HIM?/"
    stog.msg[14s] = "\\E4* Papyrus^1, who I have&  trained every day.../"
    stog.msg[15s] = "* Even though I KNOW&  he's too goofy to&  ever hurt anyone.../"
    stog.msg[16s] = "\\E5* .../"
    stog.msg[17s] = "\\E4* Go ahead^1.&* Prepare however you&  want./"
    stog.msg[18s] = "\\E5* But when you step&  forward.../"
    stog.msg[19s] = "\\E1* I will KILL you./%%"
    self.g = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.g)
    self.con = 25s
0x001BC8:
    popenv 0x000008
0x001BCC:
    exit
