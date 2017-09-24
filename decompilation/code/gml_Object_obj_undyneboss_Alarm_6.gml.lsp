0x000000:
    if !(== 743.sprite_index 39s) goto 0x000028
0x000014:
    push (== self.died 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0001E0
0x000030:
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (* (int32 self.myself):monstermaxhp 0.75d)) goto 0x00008C
0x000078:
    push (< self.lesson 5s)
    goto 0x000090
0x00008C:
    push 0s
0x000090:
    if !pop goto 0x0000B8
0x000094:
    self.lesson = 6s
    self.order = 6s
    self.damagecause = 1s
0x0000B8:
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (* (int32 self.myself):monstermaxhp 0.5d)) goto 0x000114
0x000100:
    push (< self.lesson 11s)
    goto 0x000118
0x000114:
    push 0s
0x000118:
    if !pop goto 0x000140
0x00011C:
    self.lesson = 11s
    self.order = 12s
    self.damagecause = 2s
0x000140:
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (* (int32 self.myself):monstermaxhp 0.2d)) goto 0x00019C
0x000188:
    push (< self.lesson 20s)
    goto 0x0001A0
0x00019C:
    push 0s
0x0001A0:
    if !pop goto 0x0001E0
0x0001A4:
    self.lesson = 20s
    self.order = 22s
    self.damagecause = 3s
    self.rating = (+ self.rating 2s)
0x0001E0:
    if !(== self.order 12s) goto 0x000210
0x0001F4:
    push -5s
    push (< 99s:flag 2s)
    goto 0x000214
0x000210:
    push 0s
0x000214:
    if !pop goto 0x00022C
0x000218:
    stog.flag[99s] = 2s
0x00022C:
    if !(== self.order 22s) goto 0x00025C
0x000240:
    push -5s
    push (< 99s:flag 3s)
    goto 0x000260
0x00025C:
    push 0s
0x000260:
    if !pop goto 0x000278
0x000264:
    stog.flag[99s] = 3s
0x000278:
    if !(> self.lesson 19s) goto 0x0002B4
0x00028C:
    if !(== 743.sprite_index 34s) goto 0x0002B4
0x0002A0:
    push (== self.defadjust 0s)
    goto 0x0002B8
0x0002B4:
    push 0s
0x0002B8:
    if !pop goto 0x0004C8
0x0002BC:
    stog.monsterdef[(int32 self.myself)] = -15s
    push -5s
    push (int32 self.myself):monsterhp
    if !(> -5s (* (int32 self.myself):monstermaxhp 0.3d)) goto 0x00033C
0x000320:
    stog.monsterdef[(int32 self.myself)] = -25s
0x00033C:
    push -5s
    push (int32 self.myself):monsterhp
    if !(> -5s (* (int32 self.myself):monstermaxhp 0.4d)) goto 0x0003A0
0x000384:
    stog.monsterdef[(int32 self.myself)] = -35s
0x0003A0:
    push -5s
    push (int32 self.myself):monsterhp
    if !(> -5s (* (int32 self.myself):monstermaxhp 0.5d)) goto 0x000404
0x0003E8:
    stog.monsterdef[(int32 self.myself)] = -50s
0x000404:
    push -5s
    push (int32 self.myself):monsterhp
    if !(> -5s (* (int32 self.myself):monstermaxhp 0.75d)) goto 0x000468
0x00044C:
    stog.monsterdef[(int32 self.myself)] = -70s
0x000468:
    push -5s
    push (int32 self.myself):monsterhp
    if !(== -5s (int32 self.myself):monstermaxhp) goto 0x0004BC
0x0004A0:
    stog.monsterdef[(int32 self.myself)] = -90s
0x0004BC:
    self.defadjust = 1s
0x0004C8:
    self.blcontype = 0s
    self.uncancel = 0s
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "Ngahhh!"
    if !(< self.mycommand 20s) goto 0x000564
0x00054C:
    stog.msg[0s] = "Bring&it on!"
0x000564:
    if !(< self.mycommand 40s) goto 0x000590
0x000578:
    stog.msg[0s] = "C'mon!"
0x000590:
    if !(< self.mycommand 60s) goto 0x0005BC
0x0005A4:
    stog.msg[0s] = "Fuhuhu!"
0x0005BC:
    if !(< self.mycommand 80s) goto 0x0005E8
0x0005D0:
    stog.msg[0s] = "Ngahh!!"
0x0005E8:
    if !(< self.mycommand 100s) goto 0x000614
0x0005FC:
    stog.msg[0s] = "Urahhh!!"
0x000614:
    if !(> self.damagecause 0s) goto 0x0006B8
0x000628:
    if !(== self.damagecause 1s) goto 0x000654
0x00063C:
    stog.msg[0s] = "\\E1  You're strong...&  But not strong&  enough!"
0x000654:
    if !(== self.damagecause 2s) goto 0x000680
0x000668:
    stog.msg[0s] = "\\E4  You're a pain in&  the neck, huh?"
0x000680:
    if !(== self.damagecause 3s) goto 0x0006AC
0x000694:
    stog.msg[0s] = "\\E5  DIE ALREADY, YOU&  LITTLE BRAT!"
0x0006AC:
    self.blcontype = 1s
0x0006B8:
    stog.msg[1s] = "%%%"
    global.typer = 39s
    if !(> self.order 0s) goto 0x00122C
0x0006F0:
    if !(== self.order 1s) goto 0x000764
0x000704:
    self.uncancel = 1s
    self.blcontype = 1s
    stog.msg[0s] = "  \\XAs long as you're&  \\GGREEN\\X you \\RCAN'T&  ESCAPE\\X!/"
    stog.msg[1s] = "  \\XUnless you learn&  to \\Rface danger&  head-on\\X.../"
    stog.msg[2s] = "  You won't last&  a SECOND against&  ME!/%%"
0x000764:
    if !(== self.order 2s) goto 0x000B4C
0x000778:
    self.uncancel = 1s
    self.blcontype = 1s
    if !(> self.mercied 0s) goto 0x0007BC
0x0007A4:
    stog.msg[0s] = "  You^1?&  Sparing ME^1?&  Fuhuhuhu!/"
0x0007BC:
    stog.msg[1s] = "  How insulting^1!&  I'd NEVER&  surrender to the&  likes of you!/%%"
    stog.msg[0s] = "  Not bad^1!&  Then how about&  THIS!?/%%"
    if !(> self.hitno 0s) goto 0x000814
0x000800:
    push (== self.hitfirst 3s)
    goto 0x000818
0x000814:
    push 0s
0x000818:
    if !pop goto 0x000924
0x00081C:
    stog.msg[0s] = "\\E0  I wanted this to&  be a fair fight./"
    stog.msg[1s] = "\\E1  I thought if I&  beat you like&  this.../"
    stog.msg[2s] = "  It'd truly show&  how strong&  monsters can be./"
    stog.msg[3s] = "\\E4  BUT NOW???/"
    stog.msg[4s] = "\\E5  I DON'T CARE!/"
    stog.msg[5s] = "  I'M NOT YOUR&  FREAKING&  KINDERGARTEN&  TEACHER!/"
    stog.msg[6s] = "\\E1  Unless your&  kindergarten&  teacher.../"
    stog.msg[7s] = "\\E5  DOES THIS!/%%"
    self.rating = 6s
    self.berserk = 1s
    self.order = 12s
    self.lesson = 11s
    self.hitfirst = (+ self.hitfirst 1s)
0x000924:
    if !(> self.hitno 0s) goto 0x00094C
0x000938:
    push (== self.hitfirst 2s)
    goto 0x000950
0x00094C:
    push 0s
0x000950:
    if !pop goto 0x0009E4
0x000954:
    stog.msg[0s] = "\\E5  WHAT ARE YOU&  DOING?/"
    stog.msg[1s] = "  JUST FACE&  UPWARDS!!!/"
    stog.msg[2s] = "  IT'S NOT HARD!/"
    stog.msg[3s] = "\\E0 %%"
    self.order = 1s
    self.lesson = 1s
    self.hitfirst = (+ self.hitfirst 1s)
0x0009E4:
    if !(> self.hitno 0s) goto 0x000A0C
0x0009F8:
    push (== self.hitfirst 1s)
    goto 0x000A10
0x000A0C:
    push 0s
0x000A10:
    if !pop goto 0x000AA4
0x000A14:
    stog.msg[0s] = "\\E4  Look./"
    stog.msg[1s] = "\\E4  I gave you a&  spear to block&  the bullets with./"
    stog.msg[2s] = "\\E4  Do I have to&  explain this&  any more&  clearly?/"
    stog.msg[3s] = "\\E0 %%"
    self.order = 1s
    self.lesson = 1s
    self.hitfirst = (+ self.hitfirst 1s)
0x000AA4:
    if !(> self.hitno 0s) goto 0x000ACC
0x000AB8:
    push (== self.hitfirst 0s)
    goto 0x000AD0
0x000ACC:
    push 0s
0x000AD0:
    if !pop goto 0x000B4C
0x000AD4:
    stog.msg[0s] = "\\E1  \\XWhen I said&  \\Rface towards&  danger\\X.../"
    stog.msg[1s] = "\\E4  I meant face&  towards the&  bullets!/"
    stog.msg[2s] = "\\E0 %%"
    self.order = 1s
    self.lesson = 1s
    self.hitfirst = (+ self.hitfirst 1s)
0x000B4C:
    if !(== self.order 3s) goto 0x000B84
0x000B60:
    self.blcontype = 1s
    stog.msg[0s] = "  For years,&  we've dreamed&  of a happy&  ending..."
0x000B84:
    if !(== self.order 4s) goto 0x000BBC
0x000B98:
    self.blcontype = 1s
    stog.msg[0s] = "  And now,&  sunlight is&  just within&  our reach!"
0x000BBC:
    if !(== self.order 5s) goto 0x000BF4
0x000BD0:
    self.blcontype = 1s
    stog.msg[0s] = "  I won't let&  you snatch it&  away from&  us!"
0x000BF4:
    if !(== self.order 6s) goto 0x000C38
0x000C08:
    stog.msg[0s] = "\\E1  NGAHHH!&  Enough warming&  up!/%%"
    self.blcontype = 1s
    self.uncancel = 1s
0x000C38:
    if !(== self.order 7s) goto 0x000CC0
0x000C4C:
    self.blcontype = 1s
    stog.msg[0s] = "  Heh...&  You're tough!"
    if !(> self.mercied 0s) goto 0x000CC0
0x000C84:
    self.uncancel = 1s
    stog.msg[0s] = "  Mercy^1!&  Ha!/"
    stog.msg[1s] = "  I still can't&  believe YOU&  want to spare&  ME!/%%"
0x000CC0:
    if !(== self.order 8s) goto 0x000D24
0x000CD4:
    self.blcontype = 1s
    stog.msg[0s] = "  But even if&  you could&  beat me..."
    if !(> self.mercied 0s) goto 0x000D24
0x000D0C:
    stog.msg[0s] = "  But even if&  I spared&  YOU..."
0x000D24:
    if !(== self.order 9s) goto 0x000D5C
0x000D38:
    self.blcontype = 1s
    stog.msg[0s] = "\\X  No human has&  EVER made it&  past&  \\RASGORE\\X!"
0x000D5C:
    if !(== self.order 10s) goto 0x000D94
0x000D70:
    self.blcontype = 1s
    stog.msg[0s] = "  Honestly^1,&  killing you&  now is an act&  of mercy...!"
0x000D94:
    if !(== self.order 11s) goto 0x000DCC
0x000DA8:
    self.blcontype = 1s
    stog.msg[0s] = "  ..."
0x000DCC:
    push -5s
    if !(> 99s:flag 1s) goto 0x000E90
0x000DE8:
    if !(== self.order 9s) goto 0x000E20
0x000DFC:
    self.blcontype = 1s
    stog.msg[0s] = "  Honestly, I'm&  doing you&  a favor..."
0x000E20:
    if !(== self.order 10s) goto 0x000E58
0x000E34:
    self.blcontype = 1s
    stog.msg[0s] = "\\X  No human has&  EVER made it&  past&  \\RASGORE\\X!"
0x000E58:
    if !(== self.order 11s) goto 0x000E90
0x000E6C:
    self.blcontype = 1s
    stog.msg[0s] = "\\E1  Killing you&  now is an act&  of mercy!"
0x000E90:
    if !(== self.order 12s) goto 0x000EB8
0x000EA4:
    push (< self.hitfirst 3s)
    goto 0x000EBC
0x000EB8:
    push 0s
0x000EBC:
    if !pop goto 0x000EF0
0x000EC0:
    stog.msg[0s] = "\\E4  So STOP being&  so damn&  resilient!/%%"
    self.blcontype = 1s
    self.uncancel = 1s
0x000EF0:
    if !(== self.order 13s) goto 0x000F28
0x000F04:
    self.blcontype = 1s
    stog.msg[0s] = "  What the&  hell are&  humans made&  out of!?"
0x000F28:
    if !(== self.order 14s) goto 0x000F60
0x000F3C:
    self.blcontype = 1s
    stog.msg[0s] = "  Anyone else&  would be DEAD&  by now!"
0x000F60:
    if !(== self.order 15s) goto 0x000F98
0x000F74:
    self.blcontype = 1s
    stog.msg[0s] = "  Alphys told me&  humans were&  determined..."
0x000F98:
    if !(== self.order 16s) goto 0x000FD0
0x000FAC:
    self.blcontype = 1s
    stog.msg[0s] = "  I see now what&  she meant by&  that!"
0x000FD0:
    if !(== self.order 17s) goto 0x001008
0x000FE4:
    self.blcontype = 1s
    stog.msg[0s] = "  But I'm&  determined,&  too!"
0x001008:
    if !(== self.order 18s) goto 0x001040
0x00101C:
    self.blcontype = 1s
    stog.msg[0s] = "  Determined to&  end this&  RIGHT NOW!"
0x001040:
    if !(== self.order 19s) goto 0x001078
0x001054:
    self.blcontype = 1s
    stog.msg[0s] = "  ... RIGHT NOW!"
0x001078:
    if !(== self.order 20s) goto 0x0010B0
0x00108C:
    self.blcontype = 1s
    stog.msg[0s] = "  ... RIGHT...&  ...&  ... NOW!!"
0x0010B0:
    if !(== self.order 21s) goto 0x0010E8
0x0010C4:
    self.blcontype = 1s
    stog.msg[0s] = "  Ha...&  Ha..."
0x0010E8:
    if !(== self.order 22s) goto 0x00112C
0x0010FC:
    stog.msg[0s] = "\\E5  NGAHHH!!!&  DIE ALREADY, YOU&  LITTLE BRAT!/%%"
    self.blcontype = 1s
    self.uncancel = 1s
0x00112C:
    if !(== self.order 23s) goto 0x001190
0x001140:
    self.blcontype = 1s
    stog.msg[0s] = "  YOU'RE GETTING&  IN MY WAY!"
    if !(> self.mercied 0s) goto 0x001190
0x001178:
    stog.msg[0s] = "  I WILL NEVER&  TAKE MERCY FROM&  THE LIKES OF YOU!"
0x001190:
    if !(== self.order 24s) goto 0x0011F4
0x0011A4:
    self.blcontype = 1s
    stog.msg[0s] = "  I WILL NOT&  BE DEFEATED!"
    if !(> self.mercied 0s) goto 0x0011F4
0x0011DC:
    stog.msg[0s] = "  YOU! WILL!&  NEVER! SPARE! ME!"
0x0011F4:
    if !(> self.order 24s) goto 0x00122C
0x001208:
    self.blcontype = 1s
    stog.msg[0s] = "  ..."
0x00122C:
    if !(< self.order 0s) goto 0x0013A8
0x001240:
    if !(== self.order -40s) goto 0x00126C
0x001254:
    stog.msg[0s] = "  Come on^1, is that&  all you've got!?/%%"
0x00126C:
    if !(== self.order -39s) goto 0x0012B0
0x001280:
    stog.msg[0s] = "  ... pathetic./"
    stog.msg[1s] = "  You're going to&  have to try&  harder than that!/%%"
0x0012B0:
    if !(== self.order -38s) goto 0x0012DC
0x0012C4:
    stog.msg[0s] = "  S-see how strong&  we are when we&  believe in&  ourselves?/%%"
0x0012DC:
    if !(== self.order -37s) goto 0x001320
0x0012F0:
    stog.msg[0s] = "  H... heh.../"
    stog.msg[1s] = "  Had enough yet?/%%"
0x001320:
    if !(== self.order -36s) goto 0x001364
0x001334:
    stog.msg[0s] = "\\E7  .../"
    stog.msg[1s] = "  ... I won't..^1.&  ... give up.../%%"
0x001364:
    if !(== self.order -35s) goto 0x001390
0x001378:
    stog.msg[0s] = "\\E7.../%%"
0x001390:
    self.blcontype = 1s
    self.uncancel = 1s
0x0013A8:
    if !(== self.blcontype 0s) goto 0x0013F4
0x0013BC:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y 52s) (+ self.x 245s))
0x0013F4:
    if !(== self.blcontype 1s) goto 0x001430
0x001408:
    self.blcon = (instance_create[]:int32 (var 187s) self.blcony self.blconx)
0x001430:
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    if !(> self.mycommand 50s) goto 0x0014A8
0x001494:
    push (!= 743.sprite_index 39s)
    goto 0x0014AC
0x0014A8:
    push 0s
0x0014AC:
    if !pop goto 0x0014C0
0x0014B0:
    self.borderspec = 1s
    goto 0x0014CC
0x0014C0:
    self.borderspec = 0s
0x0014CC:
    global.border = 6s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
    if !(== 743.sprite_index 39s) goto 0x0015D4
0x00157C:
    global.border = 13s
    [obj_heart].x = (- (/ self.room_width (double 2s)) 8s)
    [obj_heart].y = (+ 759.y 34s)
    self.greenlock = 1s
    goto 0x001630
0x0015D4:
    if !(== self.borderspec 1s) goto 0x001630
0x0015E8:
    [obj_heart].x = (- (/ self.room_width (double 2s)) 8s)
    [obj_heart].y = (+ 759.y 34s)
    global.border = 14s
0x001630:
    self.damagecause = 0s
0x00163C:
    exit
