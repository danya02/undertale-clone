0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Error!/%%"
    if !(== self.room 83s) goto 0x0001C4
0x000068:
    if !(bool (instance_exists[]:int32 (var 1358s))) goto 0x0001AC
0x000080:
    if !(== 1358.talkedto 0s) goto 0x0000D0
0x000094:
    stog.msg[0s] = "* All that gives my life&  validation is explaining&  the Echo Flower.../"
    stog.msg[1s] = "* No one can know.../%%"
    self.v = 1s
0x0000D0:
    if !(== 1358.talkedto 1s) goto 0x0000F8
0x0000E4:
    push (== self.v 0s)
    goto 0x0000FC
0x0000F8:
    push 0s
0x0000FC:
    if !pop goto 0x000118
0x000100:
    stog.msg[0s] = "* This is an Echo Flower^1.&* It repeats the last thing&  it heard^1, over and over.../%%"
0x000118:
    if !(> 1358.talkedto 1s) goto 0x000140
0x00012C:
    push (== self.v 0s)
    goto 0x000144
0x000140:
    push 0s
0x000144:
    if !pop goto 0x000160
0x000148:
    stog.msg[0s] = "* Neat^1, huh?/%%"
0x000160:
    if !(> 1358.talkedto 0s) goto 0x000188
0x000174:
    push (== self.v 1s)
    goto 0x00018C
0x000188:
    push 0s
0x00018C:
    if !pop goto 0x0001A8
0x000190:
    stog.msg[0s] = "* Never trust a flower..^1.&* That's one of the constants&  of this world./%%"
0x0001A8:
    goto 0x0001C4
0x0001AC:
    stog.msg[0s] = "* (It's strangely silent.)/%%"
0x0001C4:
    if !(== self.room 84s) goto 0x000250
0x0001D8:
    if !(< self.x (/ self.room_width (double 2s))) goto 0x000214
0x0001FC:
    stog.msg[0s] = "* Sitting behind rushing water..^1.&* It makes me feel relaxed./%%"
0x000214:
    if !(> self.x (/ self.room_width (double 2s))) goto 0x000250
0x000238:
    stog.msg[0s] = "* I swore I saw something..^1.&* Behind that rushing water.../%%"
0x000250:
    if !(== self.room 89s) goto 0x00027C
0x000264:
    stog.msg[0s] = "* I just wasn't ready for&  the responsibility./%%"
0x00027C:
    if !(== self.room 90s) goto 0x00045C
0x000290:
    if !(> self.x 40s) goto 0x000318
0x0002A4:
    stog.msg[0s] = "* A long time ago^1, monsters would&  whisper their wishes to the&  stars in the sky./"
    stog.msg[1s] = "* If you hoped with all your&  heart^1, your wish would come&  true./"
    stog.msg[2s] = "* Now^1, all we have are these&  sparkling stones on the&  ceiling.../%%"
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x000318
0x000300:
    stog.msg[0s] = "* (It's strangely silent.)/%%"
0x000318:
    if !(> self.x 180s) goto 0x000388
0x00032C:
    stog.msg[0s] = "* Thousands of people wishing&  together can't be wrong!/"
    stog.msg[1s] = "* The king will prove that./%%"
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x000388
0x000370:
    stog.msg[0s] = "* (It's strangely silent.)/%%"
0x000388:
    if !(> self.x 280s) goto 0x0003B4
0x00039C:
    stog.msg[0s] = "* C'mon^1, sis^1!&* Make a wish!/%%"
0x0003B4:
    if !(> self.x 380s) goto 0x0003E0
0x0003C8:
    stog.msg[0s] = "* I wish my sister and I will&  see the real stars someday.../%%"
0x0003E0:
    if !(> self.x 620s) goto 0x00040C
0x0003F4:
    stog.msg[0s] = "* Ah..^1. seems my horoscope is&  the same as last week's.../%%"
0x00040C:
    if (>= (scr_murderlv[]:int32 ) 8s) goto 0x00043C
0x000420:
    push -5s
    push (== 350s:flag 1s)
    goto 0x000440
0x00043C:
    push 1s
0x000440:
    if !pop goto 0x00045C
0x000444:
    stog.msg[0s] = "* (It's strangely silent.)/%%"
0x00045C:
    if !(== self.room 91s) goto 0x0004AC
0x000470:
    if !(< self.x (/ self.room_width (double 2s))) goto 0x0004AC
0x000494:
    stog.msg[0s] = "* Sitting behind rushing water..^1.&* It makes me feel relaxed./%%"
0x0004AC:
    if !(== self.room 94s) goto 0x000504
0x0004C0:
    stog.msg[0s] = "* Squeak./%%"
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x000504
0x0004EC:
    stog.msg[0s] = "* (It's strangely silent.)/%%"
0x000504:
    if !(== self.room 97s) goto 0x000670
0x000518:
    stog.msg[0s] = "* (You hear a passing&  conversation.)/"
    stog.msg[1s] = "* Don't say that^1!&* Come on^1, I promise I&  won't laugh./%%"
    if !(< self.x 700s) goto 0x000570
0x00055C:
    push (< self.y 360s)
    goto 0x000574
0x000570:
    push 0s
0x000574:
    if !pop goto 0x0005A8
0x000578:
    stog.msg[0s] = "* (You hear a passing&  conversation.)/"
    stog.msg[1s] = "* So^1? Don't you have any&  wishes to make?/%%"
0x0005A8:
    if !(< self.x 700s) goto 0x0005D0
0x0005BC:
    push (> self.y 360s)
    goto 0x0005D4
0x0005D0:
    push 0s
0x0005D4:
    if !pop goto 0x000620
0x0005D8:
    stog.msg[0s] = "* (You hear a passing&  conversation.)/"
    stog.msg[1s] = "* ... hmmm^1, just one^1, but.../"
    stog.msg[2s] = "* It's kind of stupid./%%"
0x000620:
    if (>= (scr_murderlv[]:int32 ) 8s) goto 0x000650
0x000634:
    push -5s
    push (== 350s:flag 1s)
    goto 0x000654
0x000650:
    push 1s
0x000654:
    if !pop goto 0x000670
0x000658:
    stog.msg[0s] = "* (It's strangely silent.)/%%"
0x000670:
    if !(== self.room 98s) goto 0x00069C
0x000684:
    stog.msg[0s] = "* I can't run any longer..^1.&* Somebody^1, anybody.../%%"
0x00069C:
    if !(== self.room 131s) goto 0x000A20
0x0006B0:
    stog.msg[0s] = "* Someday^1, I'd like to climb&  this mountain we're all&  buried under./%%"
    if !(== self.y 160s) goto 0x000724
0x0006DC:
    stog.msg[0s] = "* (You hear a passing&  conversation.)/"
    stog.msg[1s] = "* Sorry^1, it's just funny.../"
    stog.msg[2s] = "* That's my wish^1, too./%%"
0x000724:
    if !(== self.y 240s) goto 0x000768
0x000738:
    stog.msg[0s] = "* (You hear laughter.)/"
    stog.msg[1s] = "* ... hey^1, you said you wouldn't&  laugh at it!/%%"
0x000768:
    if !(== self.y 320s) goto 0x0007C4
0x00077C:
    stog.msg[0s] = "* (You hear a passing&  conversation.)/"
    stog.msg[1s] = "* Someday^1, I'd like to climb&  this mountain we're all&  buried under./"
    stog.msg[2s] = "* Standing under the sky^1, looking&  at the world all around..^1.&* That's my wish./%%"
0x0007C4:
    if !(== self.y 420s) goto 0x000808
0x0007D8:
    stog.msg[0s] = "* (You hear a passing&  conversation.)/"
    stog.msg[1s] = "* Of course I won't laugh!/%%"
0x000808:
    if !(> self.y 450s) goto 0x00084C
0x00081C:
    stog.msg[0s] = "* (You hear a passing&  conversation.)/"
    stog.msg[1s] = "* ... hmmm..^1. if I say my wish..^1.&* You promise you won't&  laugh at me?/%%"
0x00084C:
    if !(== self.xxx 1s) goto 0x000874
0x000860:
    push (== self.y 420s)
    goto 0x000878
0x000874:
    push 0s
0x000878:
    if !pop goto 0x0009D0
0x00087C:
    global.typer = 4s
    stog.msg[0s] = "* Where oh where could that&  child be...?/"
    stog.msg[1s] = "* I've been looking all over&  for them.../"
    stog.msg[2s] = "\\TS* .../"
    stog.msg[3s] = "\\TF* Hee hee hee./"
    stog.msg[4s] = "* THAT'S not true./"
    stog.msg[5s] = "* She'll find another kid^1, and&  instantly forget about you./"
    stog.msg[6s] = "* You'll NEVER see her again./%%"
    push -5s
    if !(== 45s:flag 4s) goto 0x0009D0
0x00094C:
    global.typer = 4s
    stog.msg[0s] = "* Where am I...?/"
    stog.msg[1s] = "* It's so cold here..^1.&* And so dark.../"
    stog.msg[2s] = "* Someone help me..^1.&* Anyone..^1. please..^1.&* Help me.../"
    stog.msg[3s] = "\\TF* .../"
    stog.msg[4s] = "* But nobody came./%%"
0x0009D0:
    if (>= (scr_murderlv[]:int32 ) 8s) goto 0x000A00
0x0009E4:
    push -5s
    push (== 350s:flag 1s)
    goto 0x000A04
0x000A00:
    push 1s
0x000A04:
    if !pop goto 0x000A20
0x000A08:
    stog.msg[0s] = "* (It's strangely silent.)/%%"
0x000A20:
    if !(== self.room 9999s) goto 0x000DB8
0x000A34:
    self.no = 0s
    self.i = 1s
    if !(< self.i 6s) goto 0x000AB4
0x000A60:
    if !(== self.id (instance_find[]:int32 self.i self.object_index)) goto 0x000A98
0x000A88:
    self.no = self.i
0x000A98:
    self.i = (+ self.i 1s)
    goto 0x000A4C
0x000AB4:
    if !(> self.y 400s) goto 0x000AD4
0x000AC8:
    self.no = 0s
0x000AD4:
    if !(== self.no 0s) goto 0x000B00
0x000AE8:
    stog.msg[0s] = "* I'm gonna run around in a&  huge field of flowers./%%"
0x000B00:
    if !(== self.no 0s) goto 0x000B28
0x000B14:
    push (== self.xxx 1s)
    goto 0x000B2C
0x000B28:
    push 0s
0x000B2C:
    if !pop goto 0x000C84
0x000B30:
    global.typer = 4s
    stog.msg[0s] = "* Where oh where could that&  child be...?/"
    stog.msg[1s] = "* I've been looking all over&  for them.../"
    stog.msg[2s] = "\\TS* .../"
    stog.msg[3s] = "\\TF* Hee hee hee./"
    stog.msg[4s] = "* THAT'S not true./"
    stog.msg[5s] = "* She'll find another kid^1, and&  instantly forget about you./"
    stog.msg[6s] = "* You'll NEVER see her again./%%"
    push -5s
    if !(== 45s:flag 4s) goto 0x000C84
0x000C00:
    global.typer = 4s
    stog.msg[0s] = "* Where am I...?/"
    stog.msg[1s] = "* It's so cold here..^1.&* And so dark.../"
    stog.msg[2s] = "* Someone help me..^1.&* Anyone..^1. please..^1.&* Help me.../"
    stog.msg[3s] = "\\TF* .../"
    stog.msg[4s] = "* But nobody came./%%"
0x000C84:
    if !(== self.no 4s) goto 0x000CB0
0x000C98:
    stog.msg[0s] = "* Maybe I could jump without&  hitting my head./%%"
0x000CB0:
    if !(== self.no 3s) goto 0x000CDC
0x000CC4:
    stog.msg[0s] = "* ... I wanna..^1.&* I wanna.../%%"
0x000CDC:
    if !(== self.no 2s) goto 0x000D08
0x000CF0:
    stog.msg[0s] = "* You wanna ride a train^1, right^1,&  honey?/%%"
0x000D08:
    if !(== self.no 1s) goto 0x000D34
0x000D1C:
    stog.msg[0s] = "* I'll climb this mountain&  and.../%%"
0x000D34:
    if !(> self.x 162s) goto 0x000D60
0x000D48:
    self.no = 5s
    global.typer = 5s
0x000D60:
    if !(== self.no 5s) goto 0x000D8C
0x000D74:
    stog.msg[0s] = "* I just want everyone to be&  happy.../%%"
0x000D8C:
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x000DB8
0x000DA0:
    stog.msg[0s] = "* (It's strangely silent.)/%%"
0x000DB8:
    if !(== self.room 172s) goto 0x000DE4
0x000DCC:
    stog.msg[0s] = "* (You stop to smell the&  flowers.)/%%"
0x000DE4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000E24:
    exit
