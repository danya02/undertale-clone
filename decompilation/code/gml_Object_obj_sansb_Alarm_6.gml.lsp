0x000000:
    self.sm = 0s
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "del"
    stog.msg[1s] = "%%%"
    self.yoff = 0s
    if !(> self.hit_try self.hit_reached) goto 0x000D20
0x0000A0:
    if !(== self.hit_try 1s) goto 0x0000EC
0x0000B4:
    global.faceemotion = 3s
    stog.flag[20s] = 1s
    stog.msg[0s] = "what^1?&you think i'm just&gonna stand there&and take it?/%%"
0x0000EC:
    if !(== self.hit_try 2s) goto 0x000130
0x000100:
    stog.msg[0s] = "our reports showed&a massive anomaly&in the timespace&continuum./"
    stog.msg[1s] = "timelines jumping&left and right,&stopping and&starting.../%%"
0x000130:
    if !(== self.hit_try 3s) goto 0x00015C
0x000144:
    stog.msg[0s] = "\\E4until suddenly^1,&everything ends./%%"
0x00015C:
    if !(== self.hit_try 4s) goto 0x0001A0
0x000170:
    stog.msg[0s] = "\\E4heh heh heh.../"
    stog.msg[1s] = "\\E5that's your fault^1,&isn't it?/%%"
0x0001A0:
    if !(== self.hit_try 5s) goto 0x0001CC
0x0001B4:
    stog.msg[0s] = "\\E1you can't understand&how this feels./%%"
0x0001CC:
    if !(== self.hit_try 6s) goto 0x000210
0x0001E0:
    stog.msg[0s] = "\\E4knowing that one&day^1, without any&warning.../"
    stog.msg[1s] = "\\E9it's all going to&be reset./%%"
0x000210:
    if !(== self.hit_try 7s) goto 0x000250
0x000224:
    stog.flag[20s] = 1s
    stog.msg[0s] = "\\E9look^1.&i gave up trying&to go back a long&time ago./%%"
0x000250:
    if !(== self.hit_try 8s) goto 0x000290
0x000264:
    stog.flag[20s] = 1s
    stog.msg[0s] = "\\E4and getting to the&surface doesn't&really appeal&anymore^1, either./%%"
0x000290:
    if !(== self.hit_try 9s) goto 0x0002E8
0x0002A4:
    stog.flag[20s] = 1s
    stog.msg[0s] = "\\E4cause even if we&do.../"
    stog.msg[1s] = "\\E5we'll just end up&right back here^1,&without any memory&of it^1, right?/%%"
0x0002E8:
    if !(== self.hit_try 10s) goto 0x000340
0x0002FC:
    stog.flag[20s] = 1s
    stog.msg[0s] = "\\E1to be blunt.../"
    stog.msg[1s] = "\\E4it makes it kind&of hard to give&it my all./%%"
0x000340:
    if !(== self.hit_try 11s) goto 0x000398
0x000354:
    stog.flag[20s] = 1s
    stog.msg[0s] = "\\E1... or is that just&a poor excuse for&being lazy...?/"
    stog.msg[1s] = "\\E3hell if i know./%%"
0x000398:
    if !(== self.hit_try 12s) goto 0x0003F0
0x0003AC:
    stog.flag[20s] = 1s
    stog.msg[0s] = "\\E4all i know is..^1.&seeing what comes&next.../"
    stog.msg[1s] = "\\E9i can't afford not&to care anymore./%%"
0x0003F0:
    if !(== self.hit_try 13s) goto 0x000768
0x000404:
    stog.flag[20s] = 0s
    pushenv (int32 self.mypart1) 0x000434
0x000428:
    self.sweat = 2s
0x000434:
    popenv 0x000428
0x000438:
    call (caster_pause[]:int32 global.batmusic)
    self.drama = 1s
    [obj_heart].speed = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.SS = (ini_read_real[]:int32 (var 0s) (var "SS") (var "Sans"))
    self.MP = (ini_read_real[]:int32 (var 0s) (var "MP") (var "Sans"))
    call (ini_write_real[]:int32 (+ self.MP 1s) (var "MP") (var "Sans"))
    call (ini_close[]:int32 )
    stog.msg[0s] = "\\E9ugh..^1.&that being said.../"
    stog.msg[1s] = "\\E1you^1, uh^1, really&like swinging that&thing around^1,&huh?/"
    stog.msg[2s] = "\\E0.../"
    stog.msg[3s] = "\\E4listen./"
    stog.msg[4s] = "i know you didn't&answer me before^1,&but.../"
    stog.msg[5s] = "\\E4somewhere in&there^1.&i can feel it./"
    stog.msg[6s] = "\\E0there's a glimmer&of a good person&inside of you./"
    stog.msg[7s] = "\\E4the memory of&someone who once&wanted to do the&right thing./"
    stog.msg[8s] = "\\E1someone who^1, in&another time^1,&might have even&been.../"
    stog.msg[9s] = "\\E4a friend?/"
    stog.msg[10s] = "\\E3c'mon^1, buddy./"
    stog.msg[11s] = "\\E0do you remember&me?/"
    stog.msg[12s] = "\\E4please^1, if you're&listening.../"
    stog.msg[13s] = "\\E9let's forget all&this^1, ok?/"
    stog.msg[14s] = "\\E3just lay down&your weapon^1, and.../"
    stog.msg[15s] = "\\E4well^1, my job&will be a lot&easier./%%"
    if !(> self.SS 0s) goto 0x000758
0x0006B0:
    stog.msg[0s] = "\\E9ugh..^1.&that being said.../"
    stog.msg[1s] = "\\E1you^1, uh^1, really&like swinging that&thing around^1,&huh?/"
    stog.msg[2s] = "\\E0.../"
    stog.msg[3s] = "\\E4listen./"
    stog.msg[4s] = "friendship.../"
    stog.msg[5s] = "\\E3it's really great^1,&right?/"
    stog.msg[6s] = "let's quit fighting./%%"
0x000758:
    self.mercymod = 999999
0x000768:
    if !(== self.hit_try 14s) goto 0x00099C
0x00077C:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.SS = (ini_read_real[]:int32 (var 0s) (var "SS") (var "Sans"))
    self.SS2 = (ini_read_real[]:int32 (var 0s) (var "SS2") (var "Sans"))
    if !(> self.SS 0s) goto 0x00083C
0x000808:
    call (ini_write_real[]:int32 (+ self.SS2 1s) (var "SS2") (var "Sans"))
0x00083C:
    call (ini_close[]:int32 )
    if !(== self.drama 2s) goto 0x000870
0x00085C:
    call (caster_free[]:int32 self.d_music)
0x000870:
    stog.flag[20s] = 1s
    stog.msg[0s] = "\\E3welp^1, it was&worth a shot./"
    stog.msg[1s] = "\\E5guess you like&doing things the&hard way^1, huh?/%%"
    if !(> self.SS 0s) goto 0x0008DC
0x0008C8:
    push (== self.SS2 0s)
    goto 0x0008E0
0x0008DC:
    push 0s
0x0008E0:
    if !pop goto 0x00098C
0x0008E4:
    stog.msg[0s] = "\\E3woah^1, you look&REALLY pissed off.../"
    stog.msg[1s] = "\\E4heheheh.../"
    stog.msg[2s] = "\\E5did i getcha?/"
    stog.msg[3s] = "\\E4well^1, if you came&back anyway.../"
    stog.msg[4s] = "\\E1i guess that means&we never really&WERE friends^1, huh?/"
    stog.msg[5s] = "\\E4heh./"
    stog.msg[6s] = "\\E9don't tell that&to the other&sans-es^1, ok?/%%"
0x00098C:
    self.mercymod = 999999
0x00099C:
    if !(== self.hit_try 15s) goto 0x0009F8
0x0009B0:
    stog.msg[0s] = "\\E4sounds strange^1, but&before all this i&was secretly hoping&we could be friends./"
    stog.msg[1s] = "\\E1i always thought the&anomaly was doing&this cause they&were unhappy./"
    stog.msg[2s] = "and when they got&what they wanted^1,&they would stop&all this./%%"
0x0009F8:
    if !(== self.hit_try 16s) goto 0x000A3C
0x000A0C:
    stog.msg[0s] = "\\E3and maybe all they&needed was..^1.&i dunno./"
    stog.msg[1s] = "\\M1some good food^1,&some bad laughs^1,&some nice friends./%%"
0x000A3C:
    if !(== self.hit_try 17s) goto 0x000A80
0x000A50:
    stog.msg[0s] = "\\E4but that's&ridiculous^1,&right?/"
    stog.msg[1s] = "\\E5yeah^1, you're the&type of person&who won't EVER&be happy./%%"
0x000A80:
    if !(== self.hit_try 18s) goto 0x000B24
0x000A94:
    stog.msg[0s] = "\\E5you'll keep&consuming timelines&over and over^1,&until.../"
    stog.msg[1s] = "\\E4well./"
    stog.msg[2s] = "\\M1hey./"
    stog.msg[3s] = "\\E3take it from me^1,&kid./"
    stog.msg[4s] = "someday.../"
    stog.msg[5s] = "you gotta learn&when to QUIT./%%"
0x000B24:
    if !(== self.hit_try 19s) goto 0x000B50
0x000B38:
    stog.msg[0s] = "\\E3and that day's&TODAY./%%"
0x000B50:
    if !(== self.hit_try 20s) goto 0x000BB4
0x000B64:
    pushenv (int32 self.mypart1) 0x000B80
0x000B74:
    self.sweat = 1s
0x000B80:
    popenv 0x000B74
0x000B84:
    stog.msg[0s] = "\\E4cause..^1.&y'see../"
    stog.msg[1s] = "\\E1all this fighting&is really tiring&me out./%%"
0x000BB4:
    if !(== self.hit_try 21s) goto 0x000C18
0x000BC8:
    pushenv (int32 self.mypart1) 0x000BE4
0x000BD8:
    self.sweat = 1s
0x000BE4:
    popenv 0x000BD8
0x000BE8:
    stog.msg[0s] = "\\E4and if you keep&pushing me.../"
    stog.msg[1s] = "\\Xt\\E3hen i'll be&forced to use my\\R &special attack\\X./%%"
0x000C18:
    if !(== self.hit_try 22s) goto 0x000C94
0x000C2C:
    pushenv (int32 self.mypart1) 0x000C48
0x000C3C:
    self.sweat = 2s
0x000C48:
    popenv 0x000C3C
0x000C4C:
    stog.msg[0s] = "\\Xy\\E3eah^1, my \\Rspecial&attack\\X.&sound familiar?/"
    stog.msg[1s] = "\\Xw\\E1ell^1, get ready^1.&cause after the&next move^1, i'm&going to \\Ruse it\\X./"
    stog.msg[2s] = "\\E3so^1, if you don't&wanna see it^1, now&would be a good&time to die./%%"
0x000C94:
    if !(== self.hit_try 23s) goto 0x000D10
0x000CA8:
    pushenv (int32 self.mypart1) 0x000CC4
0x000CB8:
    self.sweat = 0s
0x000CC4:
    popenv 0x000CB8
0x000CC8:
    stog.msg[0s] = "\\E4well^1, here goes&nothing.../"
    stog.msg[1s] = "\\E3are you ready?/"
    stog.msg[2s] = "\\Xs\\E5urvive THIS^1, and&i'll show you my\\R &special attack\\X!/%%"
0x000D10:
    self.hit_reached = self.hit_try
0x000D20:
    if !(== self.mercy_death 1s) goto 0x000EF4
0x000D34:
    stog.flag[272s] = 1s
    call (caster_free[]:int32 (var -3s))
    stog.flag[20s] = 0s
    global.faceemotion = 4s
    stog.msg[0s] = ".../"
    stog.msg[1s] = "you're sparing me?/"
    stog.msg[2s] = "\\E1finally./"
    stog.msg[3s] = "\\E3buddy^1.&pal./"
    stog.msg[4s] = "\\E4i know how hard&it must be.../"
    stog.msg[5s] = "to make that&choice./"
    stog.msg[6s] = "to go back on&everything you've&worked up to./"
    stog.msg[7s] = "\\E0i want you to&know..^1.&i won't let it&go to waste./"
    stog.msg[8s] = "\\M1.../"
    stog.msg[9s] = "\\E3c'mere^1, pal./%%"
    call (ini_open[]:int32 (var "undertale.ini"))
    self.SS = (ini_read_real[]:int32 (var 0s) (var "SS") (var "Sans"))
    call (ini_write_real[]:int32 (+ self.SS 1s) (var "SS") (var "Sans"))
    call (ini_close[]:int32 )
0x000EF4:
    global.typer = 109s
    global.border = 35s
    self.a_choose = 0s
    if !(< self.hit_try 13s) goto 0x001128
0x000F2C:
    stog.flag[271s] = 1s
    self.a_choose = self.part
    if !(>= self.part 13s) goto 0x000F70
0x000F64:
    self.a_choose = 10s
0x000F70:
    if !(== self.a_choose 0s) goto 0x000F90
0x000F84:
    global.border = 35s
0x000F90:
    if !(== self.a_choose 1s) goto 0x000FB0
0x000FA4:
    global.border = 35s
0x000FB0:
    if !(== self.a_choose 2s) goto 0x000FD0
0x000FC4:
    global.border = 35s
0x000FD0:
    if !(== self.a_choose 3s) goto 0x000FF0
0x000FE4:
    global.border = 35s
0x000FF0:
    if !(== self.a_choose 4s) goto 0x001010
0x001004:
    global.border = 35s
0x001010:
    if !(== self.a_choose 5s) goto 0x001030
0x001024:
    global.border = 35s
0x001030:
    if !(== self.a_choose 6s) goto 0x001050
0x001044:
    global.border = 39s
0x001050:
    if !(== self.a_choose 7s) goto 0x001070
0x001064:
    global.border = 35s
0x001070:
    if !(== self.a_choose 8s) goto 0x001090
0x001084:
    global.border = 39s
0x001090:
    if !(== self.a_choose 9s) goto 0x0010B0
0x0010A4:
    global.border = 35s
0x0010B0:
    if !(== self.a_choose 10s) goto 0x0010D0
0x0010C4:
    global.border = 35s
0x0010D0:
    if !(== self.a_choose 11s) goto 0x0010F0
0x0010E4:
    global.border = 35s
0x0010F0:
    if !(== self.a_choose 12s) goto 0x001110
0x001104:
    global.border = 35s
0x001110:
    [obj_heart].movement = 2s
    [obj_heart].sprite_index = 40s
0x001128:
    if !(>= self.hit_try 14s) goto 0x001164
0x00113C:
    if !(< self.hit_try 23s) goto 0x001164
0x001150:
    push (== self.nx 1s)
    goto 0x001168
0x001164:
    push 0s
0x001168:
    if !pop goto 0x001328
0x00116C:
    [obj_heart].movement = 1s
    [obj_heart].sprite_index = 34s
    self.c_choose = 0s
    if !(== self.part 0s) goto 0x0011B0
0x0011A4:
    global.border = 37s
0x0011B0:
    if !(== self.part 1s) goto 0x0011D0
0x0011C4:
    global.border = 0s
0x0011D0:
    if !(== self.part 2s) goto 0x0011F0
0x0011E4:
    global.border = 36s
0x0011F0:
    if !(== self.part 3s) goto 0x001210
0x001204:
    global.border = 36s
0x001210:
    if !(== self.part 4s) goto 0x001230
0x001224:
    global.border = 37s
0x001230:
    if !(== self.part 5s) goto 0x001250
0x001244:
    global.border = 36s
0x001250:
    if !(== self.part 6s) goto 0x001270
0x001264:
    global.border = 0s
0x001270:
    if !(== self.part 7s) goto 0x001290
0x001284:
    global.border = 36s
0x001290:
    if !(>= self.part 8s) goto 0x0012CC
0x0012A4:
    self.c_choose = (choose[]:int32 (var 2s) (var 1s) (var 3s))
0x0012CC:
    if !(== self.c_choose 3s) goto 0x0012EC
0x0012E0:
    global.border = 37s
0x0012EC:
    if (== self.c_choose 1s) goto 0x001314
0x001300:
    push (== self.c_choose 2s)
    goto 0x001318
0x001314:
    push 1s
0x001318:
    if !pop goto 0x001328
0x00131C:
    global.border = 36s
0x001328:
    if !(== self.hit_try 23s) goto 0x001360
0x00133C:
    global.border = 36s
    [obj_heart].movement = 1s
    [obj_heart].sprite_index = 34s
0x001360:
    if !(== self.mercy_death 1s) goto 0x001398
0x001374:
    global.border = 38s
    call (SCR_BORDERSETUP[]:int32 )
    [obj_heart].speed = 0s
0x001398:
    push -5s
    push 0s:idealborder
    [obj_heart].x = (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s)))
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
    if !(== 743.movement 2s) goto 0x001478
0x001434:
    pushenv 743s 0x001474
0x00143C:
    push -5s
    self.y = (- 3s:idealborder 15s)
    self.speed = 0s
    self.jumpstage = 1s
0x001474:
    popenv 0x00143C
0x001478:
    if !(== global.border 39s) goto 0x0014AC
0x00148C:
    push -5s
    [obj_heart].y = (- 3s:idealborder 70s)
0x0014AC:
    if !(== self.mercy_death 1s) goto 0x001568
0x0014C0:
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
    [obj_heart].sprite_index = 34s
    [obj_heart].movement = 1s
0x001568:
    pushenv 505s 0x00157C
0x001570:
    self.terminate = 1s
0x00157C:
    popenv 0x001570
0x001580:
    pushenv 504s 0x001594
0x001588:
    self.terminate = 1s
0x001594:
    popenv 0x001588
0x001598:
    pushenv 510s 0x0015AC
0x0015A0:
    call (instance_destroy[]:int32 )
0x0015AC:
    popenv 0x0015A0
0x0015B0:
    call (SCR_BORDERSETUP[]:int32 )
    push 250s
    self.yoff = (- -5s 2s:idealborder)
    if !(< self.yoff 0s) goto 0x0015FC
0x0015F0:
    self.yoff = 0s
0x0015FC:
    if !(== self.sm 1s) goto 0x001650
0x001610:
    self.blcon = (instance_create[]:int32 (var 186s) (- self.y self.yoff) (+ self.x 120s))
    goto 0x00168C
0x001650:
    self.blcon = (instance_create[]:int32 (var 187s) (- self.y self.yoff) (+ self.x 120s))
0x00168C:
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 30s))
    push -5s
    if !(== 0s:msg "del") goto 0x00173C
0x0016FC:
    pushenv (int32 self.blconwd) 0x001718
0x00170C:
    call (instance_destroy[]:int32 )
0x001718:
    popenv 0x00170C
0x00171C:
    pushenv (int32 self.blcon) 0x001738
0x00172C:
    call (instance_destroy[]:int32 )
0x001738:
    popenv 0x00172C
0x00173C:
    exit
