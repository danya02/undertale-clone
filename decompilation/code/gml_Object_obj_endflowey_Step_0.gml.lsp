0x000000:
    if !(== self.con 1s) goto 0x0005A8
0x000014:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.AF = (ini_read_real[]:int32 (var 0s) (var "AF") (var "Flowey"))
    self.AK = (ini_read_real[]:int32 (var 0s) (var "AK") (var "Flowey"))
    self.NK = (ini_read_real[]:int32 (var 0s) (var "NK") (var "Flowey"))
    self.IK = (ini_read_real[]:int32 (var 0s) (var "IK") (var "Flowey"))
    self.CK = (ini_read_real[]:int32 (var 0s) (var "CK") (var "Flowey"))
    self.CHANGE = (ini_read_real[]:int32 (var 0s) (var "CHANGE") (var "Flowey"))
    self.EX = (ini_read_real[]:int32 (var 0s) (var "EX") (var "Flowey"))
    self.truename = (ini_read_real[]:int32 (var 0s) (var "truename") (var "Flowey"))
    call (ini_close[]:int32 )
    if !(== self.EX 0s) goto 0x0001D8
0x0001CC:
    self.con = 100s
0x0001D8:
    if !(== self.EX 1s) goto 0x0001F8
0x0001EC:
    self.con = 110s
0x0001F8:
    if !(== self.EX 2s) goto 0x000218
0x00020C:
    self.con = 120s
0x000218:
    if !(== self.EX 3s) goto 0x000238
0x00022C:
    self.con = 130s
0x000238:
    if !(>= self.EX 4s) goto 0x000258
0x00024C:
    self.con = 140s
0x000258:
    push -5s
    if !(== 476s:flag 1s) goto 0x00028C
0x000274:
    global.kills = (+ global.kills 1s)
0x00028C:
    if (> self.NK 0s) goto 0x0002B4
0x0002A0:
    push (> self.CHANGE 0s)
    goto 0x0002B8
0x0002B4:
    push 1s
0x0002B8:
    if !pop goto 0x0002F0
0x0002BC:
    if !(< self.CHANGE 2s) goto 0x0002F0
0x0002D0:
    if !(>= global.kills 1s) goto 0x0002F0
0x0002E4:
    self.con = 70s
0x0002F0:
    if !(> self.IK 0s) goto 0x000338
0x000304:
    if !(== self.CHANGE 0s) goto 0x000338
0x000318:
    if !(== global.kills 0s) goto 0x000338
0x00032C:
    self.con = 60s
0x000338:
    if !(== self.AK 0s) goto 0x00039C
0x00034C:
    if !(> self.IK 0s) goto 0x00039C
0x000360:
    push -5s
    if !(== 476s:flag 1s) goto 0x00039C
0x00037C:
    if !(== global.kills 1s) goto 0x00039C
0x000390:
    self.con = 30s
0x00039C:
    if !(== self.NK 0s) goto 0x0003C4
0x0003B0:
    push (== self.IK 0s)
    goto 0x0003C8
0x0003C4:
    push 0s
0x0003C8:
    if !pop goto 0x0003EC
0x0003CC:
    if !(>= global.kills 1s) goto 0x0003EC
0x0003E0:
    self.con = 50s
0x0003EC:
    if !(== self.NK 0s) goto 0x000414
0x000400:
    push (== self.IK 0s)
    goto 0x000418
0x000414:
    push 0s
0x000418:
    if !pop goto 0x0004AC
0x00041C:
    push -5s
    if !(!= 45s:flag 4s) goto 0x0004AC
0x000438:
    push -5s
    if !(<= 67s:flag 0s) goto 0x0004AC
0x000454:
    push -5s
    if !(!= 350s:flag 1s) goto 0x0004AC
0x000470:
    push -5s
    if !(== 425s:flag 0s) goto 0x0004AC
0x00048C:
    if !(<= global.kills 0s) goto 0x0004AC
0x0004A0:
    self.con = 10s
0x0004AC:
    if !(== self.AF 0s) goto 0x000588
0x0004C0:
    push -5s
    if !(!= 45s:flag 4s) goto 0x000588
0x0004DC:
    push -5s
    if !(<= 67s:flag 0s) goto 0x000588
0x0004F8:
    push -5s
    if !(!= 350s:flag 1s) goto 0x000588
0x000514:
    push -5s
    if !(== 425s:flag 0s) goto 0x000588
0x000530:
    push -5s
    if !(>= 389s:flag 3s) goto 0x000588
0x00054C:
    push -5s
    if !(>= 493s:flag 10s) goto 0x000588
0x000568:
    if !(<= global.kills 0s) goto 0x000588
0x00057C:
    self.con = 20s
0x000588:
    if !(== self.truename 1s) goto 0x0005A8
0x00059C:
    self.con = 80s
0x0005A8:
    if !(== self.con 10s) goto 0x000950
0x0005BC:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "NK") (var "Flowey"))
    call (ini_close[]:int32 )
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "\\E0Why...?/"
    stog.msg[1s] = "Why did you let me go? /"
    stog.msg[2s] = "\\E7Don't you realize that&being nice.../"
    stog.msg[3s] = "\\E1... just makes you&get hurt?/"
    stog.msg[4s] = "\\E0Look at yourself./"
    stog.msg[5s] = "\\E9You made all these&great friends.../"
    stog.msg[6s] = "\\E0But now^1, you'll probably&never see them again./"
    stog.msg[7s] = "\\E9Not to mention how&much they've been&set back by you./"
    stog.msg[8s] = "\\E6Hurts^1, doesn't it?/"
    stog.msg[9s] = "\\E7If you had just gone&through without caring&about anyone.../"
    stog.msg[10s] = "\\E6You wouldn't have to&feel bad now./"
    stog.msg[11s] = "\\E0So I don't get it./"
    stog.msg[12s] = "\\E7If you really did&everything the right&way../"
    stog.msg[13s] = "\\E0Why did things still&end up like this?/"
    stog.msg[14s] = "\\E6Why...?/"
    stog.msg[15s] = "\\E5Is life really&that unfair?/"
    stog.msg[16s] = "\\E9.../"
    stog.msg[17s] = "\\E0Say./"
    stog.msg[18s] = "\\E9What if I told you.../"
    stog.msg[19s] = "\\E0I knew some way&to get you a better&ending?/"
    stog.msg[20s] = "\\E9You'll have to load&your SAVE file, and.../"
    if !(== (file_exists[]:int32 (var "file0")) 0s) goto 0x000854
0x00083C:
    stog.msg[20s] = "\\E9You'll have to&start over^1, and.../"
0x000854:
    push -5s
    if !(>= 389s:flag 3s) goto 0x00088C
0x000870:
    stog.msg[21s] = "\\E0Well, in the meantime^1,&why don't you go see&Dr. Alphys?/"
    goto 0x0008A4
0x00088C:
    stog.msg[21s] = "\\E0Well^1, in the meantime^1,&why don't you go see&Undyne?/"
0x0008A4:
    push -5s
    if !(< 88s:flag 4s) goto 0x0008D8
0x0008C0:
    stog.msg[21s] = "\\E0Well^1, in the meantime^1,&why don't you go see&Papyrus^1, then Undyne?/"
0x0008D8:
    stog.msg[22s] = "\\E9It seems like you&could have been&better friends./"
    stog.msg[23s] = "Who knows..^1. maybe&she's got the key&to your happiness...?/"
    stog.msg[24s] = "\\E4See you soon./%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 2s
0x000950:
    if !(== self.con 20s) goto 0x000A74
0x000964:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "AF") (var "Flowey"))
    call (ini_close[]:int32 )
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "But^1, despite everything^1,&your happy ending&didn't come./"
    stog.msg[1s] = "\\E5Why...?/"
    stog.msg[2s] = "\\E4I know why./"
    stog.msg[3s] = "\\E4Go to Dr. Alphys./"
    stog.msg[4s] = "\\E5Your date with her&has really just&begun./%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 2s
0x000A74:
    if !(== self.con 30s) goto 0x000C40
0x000A88:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "AK") (var "Flowey"))
    call (ini_close[]:int32 )
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "So you went the&whole way through&without killing.../"
    stog.msg[1s] = "\\E5And then you decided&to kill ASGORE?/"
    stog.msg[2s] = "\\E6What the hell is&WRONG with you?/"
    stog.msg[3s] = "\\E4You COMPLETELY missed&the point./"
    stog.msg[4s] = "\\E2Are you trolling me?/"
    stog.msg[5s] = "\\E0Because./"
    stog.msg[6s] = "\\E4No./"
    stog.msg[7s] = "\\E5You are only&trolling yourself./"
    stog.msg[8s] = "\\E6What a waste of&everybody's time./"
    stog.msg[9s] = "\\E7All you had to&do was make friends./"
    stog.msg[10s] = "With Papyrus^1, Undyne^1,&and then Alphys./"
    stog.msg[11s] = "\\E2But you were too&busy messing it up!/%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 2s
0x000C40:
    if !(== self.con 50s) goto 0x000EE0
0x000C54:
    self.facetype = 1s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "IK") (var "Flowey"))
    call (ini_close[]:int32 )
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "Hey./"
    stog.msg[1s] = "Since you defeated me./"
    stog.msg[2s] = "I've been thinking./"
    stog.msg[3s] = "\\E3Is killing things&really necessary?/"
    stog.msg[4s] = "\\E1I.../"
    stog.msg[5s] = "\\E3I honestly don't&know anymore./"
    stog.msg[6s] = "\\E0I have a request&for you./"
    stog.msg[7s] = "\\E4Prove to me.../"
    stog.msg[8s] = "\\E5Prove to me you&are strong enough&to survive./"
    stog.msg[9s] = "\\E6Get here from&the beginning./"
    stog.msg[10s] = "\\E0Without killing a&single thing.../"
    push -5s
    if !(== 476s:flag 0s) goto 0x000E08
0x000DEC:
    stog.msg[11s] = "\\E4... and I won't&kill the king./"
    goto 0x000E20
0x000E08:
    stog.msg[11s] = "\\E4... and^1, maybe.../"
0x000E20:
    stog.msg[12s] = "\\E7Then you'll have&your so-called&\"happy ending.\"/"
    stog.msg[13s] = "\\E6So^1, what will&it be?/"
    stog.msg[14s] = "\\E5Will you prove&yourself?/"
    stog.msg[15s] = "\\E8Or will I get to&watch you suffer...?/"
    stog.msg[16s] = "Either way^1, I'm&interested!!!/"
    stog.msg[17s] = "\\E4Hee hee hee.../%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 2s
0x000EE0:
    if !(== self.con 60s) goto 0x001118
0x000EF4:
    self.facetype = 1s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "CHANGE") (var "Flowey"))
    call (ini_close[]:int32 )
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "Interesting.../"
    stog.msg[1s] = "\\E6So^1, even with&everything you did.../"
    stog.msg[2s] = "\\E5The outcome's still&the same./"
    stog.msg[3s] = "\\E9In the end^1, your&choices were an&illusion./"
    stog.msg[4s] = "\\E9NOTHING you do&really matters!/"
    stog.msg[5s] = "\\E8Hee hee hee!/"
    stog.msg[6s] = "\\E8.../"
    stog.msg[7s] = "\\E0Well./"
    stog.msg[8s] = "\\E6You DID do what&I told you./"
    stog.msg[9s] = "\\E5I guess it's up&to me to get you a&REAL happy ending./"
    stog.msg[10s] = "\\E0For starters^1, you&can't do it by&yourself./"
    stog.msg[11s] = "Papyrus^1, Undyne^1,&Alphys..^1. these guys./"
    stog.msg[12s] = "\\E4Are you friends with&all of them yet?/"
    stog.msg[13s] = "\\E5Maybe you should go&back and..^1. \"hang\"&with them./"
    stog.msg[14s] = "\\E4The power of&friendship.../"
    stog.msg[15s] = "That always saves&the day^1, right?/%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 2s
0x001118:
    if !(== self.con 70s) goto 0x0012A8
0x00112C:
    self.facetype = 1s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 2s) (var "CHANGE") (var "Flowey"))
    call (ini_close[]:int32 )
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "\\E0So^1, killing people&is ACTUALLY fine...?/"
    stog.msg[1s] = "\\E4Sure./"
    stog.msg[2s] = "I'm glad we agree on&the value of a life./"
    stog.msg[3s] = "I've learned SO&MUCH from you./"
    stog.msg[4s] = "\\E0Though..^1. are you&REALLY gonna keep&doing things halfway?/"
    stog.msg[5s] = "\\E8The amount of people&you killed.../"
    stog.msg[6s] = "\\E9It's honestly&DISAPPOINTING./"
    stog.msg[7s] = "\\E8You IDIOT./"
    stog.msg[8s] = "\\E4You really can't do&ANYTHING right./%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 2s
0x0012A8:
    if !(== self.con 80s) goto 0x0015E8
0x0012BC:
    self.facetype = 1s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "SPECIALK") (var "Flowey"))
    call (ini_close[]:int32 )
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = (+ (+ "Why^1, " global.charname) "...?/")
    stog.msg[1s] = "\\E3Why?/"
    stog.msg[2s] = "\\E1WHY?/"
    stog.msg[3s] = "\\E8We were on our way&to REAL victory.../"
    stog.msg[4s] = "\\E9On our way to making&up for LAST time!/"
    stog.msg[5s] = "\\E2Why'd you have to&SCREW IT UP?/"
    stog.msg[6s] = "\\E5Hahaha.../"
    stog.msg[7s] = "\\E9Is this REVENGE?/"
    if !(<= global.kills 3s) goto 0x001438
0x00141C:
    stog.msg[8s] = "\\E1Making me watch you&act so pure and&happy^1, while I...?/"
    goto 0x001450
0x001438:
    stog.msg[8s] = "\\E1Making me watch you&live out your life^1,&while I...?/"
0x001450:
    stog.msg[9s] = "\\E1.../"
    stog.msg[10s] = "\\E7No./"
    stog.msg[11s] = "\\E8NO./"
    stog.msg[12s] = "I KNOW what you're&doing./"
    stog.msg[13s] = "You just want to see&what it's all like./"
    stog.msg[14s] = "Before we TEAR IT&AWAY from them./"
    stog.msg[15s] = "Ahahaha.../"
    stog.msg[16s] = (+ (+ "\\E9Genius^1, " global.charname) "./")
    stog.msg[17s] = "\\E4Well^1, I'll let you&mess around./"
    stog.msg[18s] = "\\E8I know you'll come&back eventually./"
    stog.msg[19s] = "\\E9And when that time&comes.../"
    stog.msg[20s] = (+ (+ "\\E4" global.charname) "./")
    stog.msg[21s] = "\\E4I'll be waiting&for you./%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 2s
0x0015E8:
    if !(== self.con 100s) goto 0x001808
0x0015FC:
    self.facetype = 1s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "EX") (var "Flowey"))
    call (ini_close[]:int32 )
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "Why do you keep&coming back here?/"
    stog.msg[1s] = "\\E5Oh^1, I get it^1.&You wanna be friends^1,&huh...?/"
    stog.msg[2s] = "\\E8You're PATHETIC./"
    stog.msg[3s] = "\\E8You REALLY think I&want to be friends&with YOU?/"
    stog.msg[4s] = "\\E5Heh.../"
    stog.msg[5s] = "\\E9You really DON'T&get it^1, do you?/"
    stog.msg[6s] = "\\E5There's only one&person I could care&about anymore./"
    stog.msg[7s] = "\\E6And even then^1, I&couldn't TRULY care&about them./"
    stog.msg[8s] = "\\E5I just like to think&there's someone out&there.../"
    stog.msg[9s] = "Someone that I&won't get tired of./"
    stog.msg[10s] = "\\E8Someone like ME./"
    stog.msg[11s] = "\\E8.../"
    stog.msg[12s] = "\\E0Say./"
    stog.msg[13s] = "\\E4Quit looking at me&with that stupid&expression./"
    stog.msg[14s] = "You're pissing me&off./%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 2s
0x001808:
    if !(== self.con 110s) goto 0x0019E0
0x00181C:
    self.facetype = 1s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 2s) (var "EX") (var "Flowey"))
    call (ini_close[]:int32 )
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "\\E0So you're here&again./"
    stog.msg[1s] = "\\E2What's wrong with&you?/"
    stog.msg[2s] = "\\E4Are you trying to&start the Flowey&Fan Club?/"
    stog.msg[3s] = "\\E5Because if you&want to join THAT.../"
    stog.msg[4s] = "\\E4You'll have to&talk to Papyrus./"
    stog.msg[5s] = "\\E6Yeah^1, he started&one./"
    stog.msg[6s] = "\\E5A few different&times^1, anyway./"
    stog.msg[7s] = "\\E0I won't lie./"
    stog.msg[8s] = "\\E4He's one of the&better characters&to mess around with./"
    stog.msg[9s] = "\\E5Took me a long&time to get bored&of that one./"
    stog.msg[10s] = "\\E7... Yeah./"
    stog.msg[11s] = "\\E4Talk to him&about it./%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 2s
0x0019E0:
    if !(== self.con 120s) goto 0x001C30
0x0019F4:
    self.facetype = 1s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 3s) (var "EX") (var "Flowey"))
    call (ini_close[]:int32 )
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "\\E0So./"
    stog.msg[1s] = "\\E4Did you start the&Flowey Fan Club?/"
    stog.msg[2s] = "\\E5Ha^1.&I'm just kidding./"
    stog.msg[3s] = "\\E9I was watching^1.&I know you didn't./"
    stog.msg[4s] = "\\E5But I don't care^1.&Really./"
    stog.msg[5s] = "\\E6He probably would&have invited his&garbage brother./"
    stog.msg[6s] = "\\E4You know^1.&Smiley Trashbag./"
    stog.msg[7s] = "\\E0.../"
    stog.msg[8s] = "\\E4Say./"
    stog.msg[9s] = "If I have ONE piece&of advice for you.../"
    stog.msg[10s] = "\\E9DON'T./"
    stog.msg[11s] = "Let his brother./"
    stog.msg[12s] = "Find out ANYTHING&about you./"
    stog.msg[13s] = "\\E6He'll..^1. well.../"
    stog.msg[14s] = "\\E5Let's just say./"
    stog.msg[15s] = "\\E9He's caused me more&than my fair share&of resets./"
    stog.msg[16s] = "\\E4Stay away from&that guy./%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 2s
0x001C30:
    if !(== self.con 130s) goto 0x001E20
0x001C44:
    self.facetype = 1s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 4s) (var "EX") (var "Flowey"))
    call (ini_close[]:int32 )
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "\\E0Why do you keep&coming back here?/"
    stog.msg[1s] = "You don't REALLY&want to be friends^1,&do you...?/"
    stog.msg[2s] = ".../"
    stog.msg[3s] = "\\E4No^1. I get it./"
    stog.msg[4s] = "You're just like me^1,&aren't you?/"
    stog.msg[5s] = "You don't care about&anyone./"
    stog.msg[6s] = "\\E4You're just bored./"
    stog.msg[7s] = "You just want to&see what I'll say./"
    stog.msg[8s] = "\\E5So you can laugh&and throw me away&like a broken toy./"
    stog.msg[9s] = "\\E8Well^1, TOO BAD!/"
    stog.msg[10s] = "\\E9I'm not LIKE everybody&else./"
    stog.msg[11s] = "\\E9So, from now on.../"
    stog.msg[12s] = "\\E4You're not getting&ANYTHING./%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 2s
0x001E20:
    if !(== self.con 140s) goto 0x001F08
0x001E34:
    self.facetype = 1s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 5s) (var "EX") (var "Flowey"))
    call (ini_close[]:int32 )
    global.typer = 68s
    global.msc = 0s
    stog.msg[0s] = ".../"
    stog.msg[1s] = "\\E4Don't you have&anything BETTER to do?/%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 60s))
    self.con = 2s
0x001F08:
    if !(== self.con 2s) goto 0x001F38
0x001F1C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001F3C
0x001F38:
    push 0s
0x001F3C:
    if !pop goto 0x001F6C
0x001F40:
    self.flowey = 3s
    self.con = 3s
    stog.alarm[4s] = 100s
0x001F6C:
    if !(== self.con 4s) goto 0x001F94
0x001F80:
    call (room_goto[]:int32 (var 323s))
0x001F94:
    exit
