0x000000:
    if !(== self.con 1s) goto 0x0000D8
0x000014:
    stog.flag[17s] = 1s
    global.msc = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* H-hey^1, it's kind of&  dark \\M9in there^1, isn't&  it?/"
    stog.msg[3s] = "\\E6* Don't worry!/"
    stog.msg[4s] = "\\E0* I'll hack into the&  light system and&  brighten it up!/%%"
    call (scr_regulartext[]:int32 )
    self.con = 2s
    call (snd_play[]:int32 (var 104s))
0x0000D8:
    if !(== self.con 2s) goto 0x000108
0x0000EC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00010C
0x000108:
    push 0s
0x00010C:
    if !pop goto 0x000380
0x000110:
    self.bossa = (caster_load[]:int32 (var "music/hotel.ogg"))
    self.con = 3s
    self.ff1 = (instance_create[]:int32 (var 1183s) (var 320s) (var 20s))
    push 5s
    stog.image_yscale* = (int32 self.ff1)
    push 500000
    stog.depth* = (int32 self.ff1)
    self.ff2 = (instance_create[]:int32 (var 1183s) (var 320s) (var 300s))
    push 6s
    stog.image_yscale* = (int32 self.ff2)
    push 500000
    stog.depth* = (int32 self.ff2)
    self.eggs = (instance_create[]:int32 (var 1187s) (+ 60s self.yoffset1) (var 104s))
    push 1704s
    stog.sprite_index* = (int32 self.eggs)
    self.milk = (instance_create[]:int32 (var 1191s) (+ 74s self.yoffset1) (var 136s))
    push 1703s
    stog.sprite_index* = (int32 self.milk)
    self.sugar = (instance_create[]:int32 (var 1186s) (+ 60s self.yoffset1) (var 172s))
    self.mett = (instance_create[]:int32 (var 1172s) (+ 158s self.yoffset1) (var 192s))
    push 1s
    stog.d* = (int32 self.mett)
    push 999900
    stog.depth* = (int32 self.mett)
    push 0s
    stog.image_speed* = (int32 self.mett)
    push 1663s
    stog.sprite_index* = (int32 self.mett)
    self.chefhat = (instance_create[]:int32 (var 1194s) (var 0s) (var 0s))
    stog.alarm[4s] = 30s
0x000380:
    if !(== self.con 4s) goto 0x0003D4
0x000394:
    global.facing = 0s
    call (snd_play[]:int32 (var 106s))
    self.con = 5s
    stog.alarm[4s] = 60s
0x0003D4:
    if !(== self.con 6s) goto 0x000458
0x0003E8:
    global.faceemotion = 3s
    stog.msg[0s] = "* Oh no./%%"
    self.g = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.g)
    self.con = 7s
0x000458:
    if !(== self.con 7s) goto 0x000488
0x00046C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00048C
0x000488:
    push 0s
0x00048C:
    if !pop goto 0x0004EC
0x000490:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.bossa)
    self.con = 8s
    push -1s
    stog.vspeed* = (int32 self.mett)
    stog.alarm[4s] = 45s
0x0004EC:
    if !(== self.con 9s) goto 0x0005E4
0x000500:
    push 0s
    stog.vspeed* = (int32 self.mett)
    global.typer = 27s
    push 1655s
    stog.sprite_index* = (int32 self.mett)
    push 0.2d
    stog.image_speed* = (int32 self.mett)
    global.facechoice = 0s
    stog.msg[0s] = "* OHHHH YES!!!/"
    stog.msg[1s] = "* WELCOME^1, BEAUTIES, TO THE&  UNDERGROUND'S PREMIER COOKING&  SHOW!!!/%%"
    self.g = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.g)
    self.con = 10s
0x0005E4:
    if !(== self.con 10s) goto 0x000614
0x0005F8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000618
0x000614:
    push 0s
0x000618:
    if !pop goto 0x000694
0x00061C:
    self.g = (instance_create[]:int32 (var 1198s) (+ 180s self.yoffset1) (var 40s))
    pushenv (int32 self.g) 0x000670
0x00065C:
    call (event_user[]:int32 (var 0s))
0x000670:
    popenv 0x00065C
0x000674:
    self.con = 11s
    stog.alarm[4s] = 160s
0x000694:
    if !(== self.con 12s) goto 0x000770
0x0006A8:
    self.con = 13s
    stog.msg[0s] = "* PRE-HEAT YOUR OVENS^1, BECAUSE&  WE'VE GOT A VERY SPECIAL&  RECIPE FOR YOU TODAY!/"
    stog.msg[1s] = "* WE'RE GOING TO BE MAKING.../"
    stog.msg[2s] = "* A CAKE!/"
    stog.msg[3s] = "* MY LOVELY ASSISTANT HERE&  WILL GATHER THE INGREDIENTS./"
    stog.msg[4s] = "* EVERYONE GIVE THEM A BIG&  HAND!!!/%%"
    self.g = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.applause = (caster_load[]:int32 (var "music/mett_applause.ogg"))
0x000770:
    if !(== self.con 13s) goto 0x0007A0
0x000784:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0007A4
0x0007A0:
    push 0s
0x0007A4:
    if !pop goto 0x000824
0x0007A8:
    push 1664s
    stog.sprite_index* = (int32 self.mett)
    push 0.5d
    stog.image_speed* = (int32 self.mett)
    call (caster_play[]:int32 (var 1s) (var 1s) self.applause)
    self.con = 14s
    stog.alarm[4s] = 90s
0x000824:
    if !(== self.con 14s) goto 0x0008B8
0x000838:
    push (var 109s)
    self.conf = (instance_create[]:int32 -1s (- 0s:view_yview 2s) (+ (- 1570.x 5s) (random[]:int32 (var 20s))))
    push (+ -1s (random[]:int32 (var 2s)))
    stog.hspeed* = (int32 self.conf)
0x0008B8:
    if !(== self.con 15s) goto 0x000964
0x0008CC:
    push 0.25d
    stog.image_speed* = (int32 self.mett)
    push 1655s
    stog.sprite_index* = (int32 self.mett)
    stog.msg[0s] = "\\W* WE'LL NEED \\YSUGAR^1,&  MILK^1, \\WAND\\Y EGGS.\\W /"
    stog.msg[1s] = "* GO FOR IT^1, SWEETHEART!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 16s
0x000964:
    if !(== self.con 16s) goto 0x000994
0x000978:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000998
0x000994:
    push 0s
0x000998:
    if !pop goto 0x000A64
0x00099C:
    self.mett2 = (instance_create[]:int32 (var 1173s) (int32 self.mett):y (int32 self.mett):x)
    pushenv (int32 self.mett) 0x0009F8
0x0009EC:
    call (instance_destroy[]:int32 )
0x0009F8:
    popenv 0x0009EC
0x0009FC:
    self.mett = self.mett2
    push 0s
    stog.image_speed* = (int32 self.mett)
    push 900000
    stog.depth* = (int32 self.mett)
    self.con = 17s
    self.y = 300s
    global.interact = 0s
0x000A64:
    if !(== self.con 20s) goto 0x000AC8
0x000A78:
    push 0s
    stog.image_speed* = (int32 self.mett)
    push 1663s
    stog.sprite_index* = (int32 self.mett)
    self.con = 21s
    stog.alarm[4s] = 20s
0x000AC8:
    if !(== self.con 22s) goto 0x000BAC
0x000ADC:
    global.facing = 1s
    self.con = 23s
    self.chainsaw = (instance_create[]:int32 (var 1363s) (+ 140s self.yoffset1) (- (int32 self.mett):x 8s))
    push 1s
    stog.visible* = (int32 self.chainsaw)
    push (- (int32 self.mett):depth 1s)
    stog.depth* = (int32 self.chainsaw)
    push 1715s
    stog.sprite_index* = (int32 self.chainsaw)
    stog.alarm[4s] = 40s
0x000BAC:
    if !(== self.con 23s) goto 0x000BF0
0x000BC0:
    stog.y* = (- (int32 self.chainsaw):y 0.5d)
0x000BF0:
    push (int32 self.chainsaw)
    if !(== self.con 24s) goto 0x000C40
0x000C04:
    self.con = 25s
    self.bad = (caster_load[]:int32 (var "music/bad.ogg"))
    stog.alarm[4s] = 20s
0x000C40:
    if !(== self.con 26s) goto 0x000C9C
0x000C54:
    stog.msg[0s] = "\\W* A \\YHUMAN SOUL\\W!!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 27s
0x000C9C:
    if !(== self.con 27s) goto 0x000CCC
0x000CB0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000CD0
0x000CCC:
    push 0s
0x000CD0:
    if !pop goto 0x000D98
0x000CD4:
    call (snd_play[]:int32 (var 24s))
    call (caster_loop[]:int32 (var 1s) (var 1s) self.bad)
    push 0.5d
    stog.image_speed* = (int32 self.mett)
    push -0.2d
    stog.hspeed* = (int32 self.mett)
    push -0.2d
    stog.hspeed* = (int32 self.chainsaw)
    self.con = 28s
    self.siner = 0s
    stog.alarm[4s] = 100s
0x000D98:
    if !(== self.con 28s) goto 0x000E4C
0x000DAC:
    self.siner = (+ self.siner 1s)
    stog.x* = (+ (int32 self.chainsaw):x (sin[]:int32 (* self.siner 1.5d)))
    stog.y* = (+ (int32 self.chainsaw):y (cos[]:int32 (* self.siner 1.5d)))
0x000E4C:
    push (int32 self.chainsaw)
    push (int32 self.chainsaw)
    if !(== self.con 29s) goto 0x000F20
0x000E60:
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0s
    stog.hspeed* = (int32 self.chainsaw)
    push 0s
    stog.image_speed* = (int32 self.mett)
    call (caster_free[]:int32 self.bad)
    call (caster_free[]:int32 (var -3s))
    self.mettsong = (caster_load[]:int32 (var "music/mtgameshow.ogg"))
    call (snd_play[]:int32 (var 104s))
    self.con = 30s
    stog.alarm[4s] = 60s
0x000F20:
    if !(== self.con 31s) goto 0x00114C
0x000F34:
    call (snd_play[]:int32 (var 104s))
    global.typer = 5s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F0 \\TM %"
    stog.msg[2s] = "* HELLO...?&* I'M KIND OF IN THE&  MIDDLE OF SOMETHING HERE./"
    stog.msg[3s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[4s] = "* W-wait a second!!!/"
    stog.msg[5s] = "* Couldn't you make&  a.../"
    stog.msg[6s] = "\\E6* Couldn't you use&  a.../"
    stog.msg[7s] = "\\E4* Couldn't you make&  a substitution in&  the recipe?!/"
    stog.msg[8s] = "\\TS \\E3 \\F0 \\TM %"
    stog.msg[9s] = "* ... A SUBSTITUTION?&* YOU MEAN, USE A DIFFERENT,&  NON-HUMAN INGREDIENT?/"
    stog.msg[10s] = "* ... WHY?/"
    stog.msg[11s] = "\\TS \\E6 \\F6 \\TA %"
    stog.msg[12s] = "* Uhh^1, what if&  someone's.../"
    stog.msg[13s] = "\\E2* .../"
    stog.msg[14s] = "\\E4* Vegan?/"
    stog.msg[15s] = "\\TS \\E3 \\F0 \\TM %"
    stog.msg[16s] = "* ... VEGAN./"
    stog.msg[17s] = "\\TS \\E5 \\F6 \\TA %"
    stog.msg[18s] = "* Uh well I mean%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 32s
0x00114C:
    if !(== self.con 32s) goto 0x00117C
0x001160:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001180
0x00117C:
    push 0s
0x001180:
    if !pop goto 0x00129C
0x001184:
    push 1655s
    stog.sprite_index* = (int32 self.mett)
    push 0.25d
    stog.image_speed* = (int32 self.mett)
    call (caster_loop[]:int32 (var 1s) (var 1s) self.mettsong)
    stog.view_object[0s] = -4s
    global.typer = 27s
    global.facechoice = 0s
    stog.msg[0s] = "* THAT'S A BRILLIANT IDEA,&  ALPHYS!!/"
    stog.msg[1s] = "* ACTUALLY, I HAPPEN TO&  HAVE AN OPTION RIGHT HERE!!!/"
    stog.msg[2s] = "* MTT-BRAND ALWAYS-CONVENIENT&  HUMAN-SOUL-FLAVOR-SUBSTITUTE!/"
    stog.msg[3s] = "* A CAN OF WHICH...&* IS JUST OVER ON THAT&  COUNTER!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 33s
0x00129C:
    if !(== self.con 33s) goto 0x001330
0x0012B0:
    if !(bool (instance_exists[]:int32 self.chainsaw)) goto 0x001330
0x0012C8:
    push 4s
    stog.vspeed* = (int32 self.chainsaw)
    if !(>= (int32 self.chainsaw):y (int32 self.chainsaw):ystart) goto 0x001330
0x001310:
    pushenv (int32 self.chainsaw) 0x00132C
0x001320:
    call (instance_destroy[]:int32 )
0x00132C:
    popenv 0x001320
0x001330:
    if !(== self.con 33s) goto 0x001360
0x001344:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001364
0x001360:
    push 0s
0x001364:
    if !pop goto 0x0013B4
0x001368:
    push -1s
    stog.view_xview[(+ 0s:view_xview 4s)] = 0s
    push -1s
    if !(> 0s:view_xview 318s) goto 0x0013B4
0x0013A8:
    self.con = 34s
0x0013B4:
    if !(== self.con 34s) goto 0x00141C
0x0013C8:
    stog.view_xview[0s] = 320s
    pushenv (int32 self.ff2) 0x0013F8
0x0013EC:
    call (instance_destroy[]:int32 )
0x0013F8:
    popenv 0x0013EC
0x0013FC:
    self.con = 37s
    stog.alarm[4s] = 60s
0x00141C:
    if !(== self.con 38s) goto 0x001450
0x001430:
    self.con = 39s
    stog.alarm[4s] = 30s
0x001450:
    if !(== self.con 39s) goto 0x0014A4
0x001464:
    push -1s
    if !(> 0s:view_xview 0s) goto 0x0014A4
0x001480:
    push -1s
    stog.view_xview[(- 0s:view_xview 16s)] = 0s
0x0014A4:
    if !(== self.con 40s) goto 0x001540
0x0014B8:
    stog.msg[0s] = "* WELL, DARLING?&* WHY DON'T YOU GO GET IT?/%%"
    push 0.25d
    stog.image_speed* = (int32 self.mett)
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    stog.view_object[0s] = 1570s
    [obj_mainchara].cutscene = 0s
    self.con = 41s
0x001540:
    if !(== self.con 41s) goto 0x001570
0x001554:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001574
0x001570:
    push 0s
0x001574:
    if !pop goto 0x0015B4
0x001578:
    global.plot = 134s
    push 0s
    stog.image_speed* = (int32 self.mett)
    self.con = 42s
    global.interact = 0s
0x0015B4:
    if !(== self.con 50s) goto 0x001600
0x0015C8:
    global.interact = 1s
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    self.con = 51s
0x001600:
    if !(== self.con 51s) goto 0x001674
0x001614:
    push -1s
    stog.view_xview[(+ 0s:view_xview 3s)] = 0s
    push -1s
    if !(>= 0s:view_xview 320s) goto 0x001674
0x001654:
    stog.view_xview[0s] = 320s
    self.con = 52s
0x001674:
    if !(== self.con 52s) goto 0x0016C8
0x001688:
    pushenv 1196s 0x0016A4
0x001690:
    call (event_user[]:int32 (var 0s))
0x0016A4:
    popenv 0x001690
0x0016A8:
    self.con = 53s
    stog.alarm[4s] = 150s
0x0016C8:
    if !(== self.con 54s) goto 0x001784
0x0016DC:
    pushenv 1173s 0x0016F0
0x0016E4:
    call (instance_destroy[]:int32 )
0x0016F0:
    popenv 0x0016E4
0x0016F4:
    pushenv 1172s 0x001708
0x0016FC:
    call (instance_destroy[]:int32 )
0x001708:
    popenv 0x0016FC
0x00170C:
    self.mett = (instance_create[]:int32 (var 1173s) (var 340s) (var 280s))
    push 280s
    stog.x* = (int32 self.mett)
    push 1s
    stog.hspeed* = (int32 self.mett)
    self.con = 55s
    stog.alarm[4s] = 50s
0x001784:
    if !(== self.con 56s) goto 0x001884
0x001798:
    global.msc = 0s
    global.facechoice = 0s
    global.typer = 27s
    push 0s
    stog.hspeed* = (int32 self.mett)
    push 0.25d
    stog.image_speed* = (int32 self.mett)
    stog.msg[0s] = "* BY THE WAY^1, OUR SHOW RUNS ON&  A STRICT SCHEDULE./"
    stog.msg[1s] = "\\W* IF YOU CAN'T GET THE&  CAN IN THE NEXT&  \\YONE MINUTE...\\W /"
    stog.msg[2s] = "\\W* WE'LL JUST HAVE TO GO&  BACK TO THE \\RORIGINAL PLAN\\W!!!/"
    stog.msg[3s] = "* SO...&* BETTER START CLIMBING,&  BEAUTIFUL!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 57s
0x001884:
    if !(== self.con 57s) goto 0x0018B4
0x001898:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0018B8
0x0018B4:
    push 0s
0x0018B8:
    if !pop goto 0x0019D8
0x0018BC:
    global.plot = 134s
    self.mett2 = (instance_create[]:int32 (var 1172s) (int32 self.mett):y (int32 self.mett):x)
    push (int32 self.mett):depth
    stog.depth* = (int32 self.mett2)
    push (int32 self.mett):sprite_index
    stog.sprite_index* = (int32 self.mett2)
    push 0.25d
    stog.image_speed* = (int32 self.mett2)
    push 1s
    stog.visible* = (int32 self.mett2)
    pushenv 1173s 0x0019A4
0x001998:
    call (instance_destroy[]:int32 )
0x0019A4:
    popenv 0x001998
0x0019A8:
    self.mett = self.mett2
    self.con = 58s
    stog.alarm[4s] = 20s
0x0019D8:
    if !(== self.con 59s) goto 0x001A24
0x0019EC:
    push -6s
    stog.vspeed* = (int32 self.mett)
    self.con = 60s
    stog.alarm[4s] = 30s
0x001A24:
    if !(== self.con 61s) goto 0x001B58
0x001A38:
    call (caster_free[]:int32 (var -3s))
    global.msc = 0s
    global.typer = 5s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Oh no!!^1!&* There's not enough&  time to climb up!/"
    stog.msg[3s] = "\\E2* .../"
    stog.msg[4s] = "\\E6* F-f-fortunately, I&  might have a plan!/"
    stog.msg[5s] = "\\E0* When I was upgrading&  your phone, I added&  a few... features./"
    stog.msg[6s] = "\\E6* You see that huge&  button that says..^1.&* \"JETPACK\"?/"
    stog.msg[7s] = "\\E3* Watch this!/%%"
    call (scr_regulartext[]:int32 )
    self.con = 61.1d
    call (snd_play[]:int32 (var 104s))
0x001B58:
    if !(== self.con 61.1d) goto 0x001B90
0x001B74:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001B94
0x001B90:
    push 0s
0x001B94:
    if !pop goto 0x001C14
0x001B98:
    global.facing = 0s
    self.jetpack = (instance_create[]:int32 (var 1199s) (+ 1570.y 10s) 1570.x)
    push 1570s
    stog.clip* = (int32 self.jetpack)
    self.con = 60.2d
    stog.alarm[4s] = 150s
0x001C14:
    if !(== self.con 61.2d) goto 0x001C3C
0x001C30:
    self.con = 62s
0x001C3C:
    if !(== self.con 62s) goto 0x001C6C
0x001C50:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001C70
0x001C6C:
    push 0s
0x001C70:
    if !pop goto 0x001D64
0x001C74:
    stog.view_object[0s] = -4s
    [obj_mainchara].cutscene = 1s
    [obj_mainchara].visible = 0s
    self.chara = (instance_create[]:int32 (var 1363s) 1570.y 1570.x)
    push 9000s
    stog.depth* = (int32 self.chara)
    push self.chara
    stog.clip* = (int32 self.jetpack)
    push 1044s
    stog.sprite_index* = (int32 self.chara)
    push 1s
    stog.visible* = (int32 self.chara)
    push 0s
    stog.image_speed* = (int32 self.chara)
    self.con = 63s
    stog.alarm[4s] = 30s
0x001D64:
    if !(== self.con 64s) goto 0x001DFC
0x001D78:
    global.faceemotion = 6s
    stog.msg[0s] = "* There!/"
    stog.msg[1s] = "* You should have&  just enough fuel to&  reach the top!/"
    stog.msg[2s] = "\\E3* Now^1, get up&  there!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 65s
0x001DFC:
    if !(== self.con 65s) goto 0x001E2C
0x001E10:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001E30
0x001E2C:
    push 0s
0x001E30:
    if !pop goto 0x001E84
0x001E34:
    self.race = (caster_load[]:int32 (var "music/hotel_battle.ogg"))
    global.currentsong = (caster_loop[]:int32 (var 1s) (var 1s) self.race)
    self.con = 66s
0x001E84:
    if !(== self.con 66s) goto 0x002028
0x001E98:
    push -1s
    stog.view_yview[(- 0s:view_yview 5s)] = 0s
    push (int32 self.chara):y
    if !(>= -1s (+ 0s:view_yview 205s)) goto 0x001F1C
0x001EF0:
    push -1s
    push (+ 0s:view_yview 205s)
    stog.y* = (int32 self.chara)
0x001F1C:
    push -1s
    if !(<= 0s:view_yview 90s) goto 0x002028
0x001F38:
    stog.view_yview[0s] = 90s
    push -1s
    push (+ 0s:view_yview 205s)
    stog.y* = (int32 self.chara)
    self.con = 67s
    [obj_counterscroller].fakev = 3s
    [obj_counterscroller].mode = 1s
    self.chara2 = (instance_create[]:int32 (var 1185s) (int32 self.chara):y (int32 self.chara):x)
    push self.chara2
    stog.clip* = (int32 self.jetpack)
    pushenv (int32 self.chara) 0x002014
0x002008:
    call (instance_destroy[]:int32 )
0x002014:
    popenv 0x002008
0x002018:
    self.chara = self.chara2
0x002028:
    if !(== self.con 70s) goto 0x0020EC
0x00203C:
    [obj_mainchara].x = (int32 self.chara):x
    [obj_mainchara].y = (int32 self.chara):y
    pushenv (int32 self.jetpack) 0x002090
0x002084:
    call (instance_destroy[]:int32 )
0x002090:
    popenv 0x002084
0x002094:
    pushenv (int32 self.chara) 0x0020B0
0x0020A4:
    call (instance_destroy[]:int32 )
0x0020B0:
    popenv 0x0020A4
0x0020B4:
    [obj_mainchara].visible = 1s
    global.facing = 0s
    self.con = 71s
    stog.alarm[4s] = 20s
0x0020EC:
    if !(== self.con 72s) goto 0x0022EC
0x002100:
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Wow^1!&* We..^1. we did it!!/"
    stog.msg[3s] = "\\E0* We..^1. we really did&  it!!!/"
    stog.msg[4s] = "\\E0* Great job out&  there^1, team!/"
    stog.msg[5s] = "\\E3* W-well^1, uh^1, anyway^1,&  let's keep heading&  forward!!!/"
    stog.msg[6s] = "\\TS \\F0 \\T0 %"
    stog.msg[7s] = "* Click.../%%"
    push -5s
    if !(== 377s:flag 1s) goto 0x002284
0x0021DC:
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E1 \\F6 \\TA %"
    stog.msg[2s] = "* .../"
    stog.msg[3s] = "\\E4* U-um..^1.&* I guess we..^1.&* ... did it?/"
    stog.msg[4s] = "\\E3* W-well^1, uh^1, anyway^1,&  let's keep heading&  forward!!!/"
    stog.msg[5s] = "\\TS \\F0 \\T0 %"
    stog.msg[6s] = "* Click.../%%"
0x002284:
    global.typer = 5s
    global.facechoice = 0s
    global.msc = 0s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    call (snd_play[]:int32 (var 104s))
    self.con = 73s
0x0022EC:
    if !(== self.con 73s) goto 0x00231C
0x002300:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002320
0x00231C:
    push 0s
0x002320:
    if !pop goto 0x002364
0x002324:
    self.dn = 1s
    self.con = 74s
    stog.view_object[0s] = 1570s
    stog.view_hborder[0s] = 140s
0x002364:
    if !(== self.con 74s) goto 0x00241C
0x002378:
    self.flowey = (instance_create[]:int32 (var 1339s) (var 360s) (var 40s))
    call (caster_free[]:int32 (var -3s))
    stog.flag[17s] = 0s
    global.interact = 0s
    global.plot = 135s
    pushenv 1183s 0x0023F4
0x0023E8:
    call (instance_destroy[]:int32 )
0x0023F4:
    popenv 0x0023E8
0x0023F8:
    self.con = 75s
    call (scr_tempsave[]:int32 )
    call (instance_destroy[]:int32 )
0x00241C:
    exit
