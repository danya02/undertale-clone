0x000000:
    if (== self.argument1 0s) goto 0x0004AC
0x000018:
    if (== self.argument1 1s) goto 0x0004C8
0x000028:
    if (== self.argument1 2s) goto 0x0005F4
0x000038:
    if (== self.argument1 3s) goto 0x0006A0
0x000048:
    if (== self.argument1 4s) goto 0x000A10
0x000058:
    if (== self.argument1 5s) goto 0x000ABC
0x000068:
    if (== self.argument1 6s) goto 0x000B3C
0x000078:
    if (== self.argument1 7s) goto 0x000BBC
0x000088:
    if (== self.argument1 8s) goto 0x000CE8
0x000098:
    if (== self.argument1 9s) goto 0x000DD8
0x0000A8:
    if (== self.argument1 10s) goto 0x000E90
0x0000B8:
    if (== self.argument1 11s) goto 0x000F48
0x0000C8:
    if (== self.argument1 12s) goto 0x0011C0
0x0000D8:
    if (== self.argument1 13s) goto 0x00122C
0x0000E8:
    if (== self.argument1 14s) goto 0x001298
0x0000F8:
    if (== self.argument1 15s) goto 0x001304
0x000108:
    if (== self.argument1 16s) goto 0x001370
0x000118:
    if (== self.argument1 17s) goto 0x001418
0x000128:
    if (== self.argument1 18s) goto 0x001600
0x000138:
    if (== self.argument1 19s) goto 0x001680
0x000148:
    if (== self.argument1 20s) goto 0x0016F8
0x000158:
    if (== self.argument1 21s) goto 0x001778
0x000168:
    if (== self.argument1 22s) goto 0x0017F8
0x000178:
    if (== self.argument1 23s) goto 0x001878
0x000188:
    if (== self.argument1 24s) goto 0x0018F8
0x000198:
    if (== self.argument1 25s) goto 0x001964
0x0001A8:
    if (== self.argument1 26s) goto 0x0019D0
0x0001B8:
    if (== self.argument1 27s) goto 0x001BE4
0x0001C8:
    if (== self.argument1 28s) goto 0x001C74
0x0001D8:
    if (== self.argument1 29s) goto 0x001ED0
0x0001E8:
    if (== self.argument1 30s) goto 0x0020B0
0x0001F8:
    if (== self.argument1 31s) goto 0x002290
0x000208:
    if (== self.argument1 32s) goto 0x002470
0x000218:
    if (== self.argument1 33s) goto 0x002650
0x000228:
    if (== self.argument1 34s) goto 0x002830
0x000238:
    if (== self.argument1 35s) goto 0x002A10
0x000248:
    if (== self.argument1 36s) goto 0x002A90
0x000258:
    if (== self.argument1 37s) goto 0x002BD0
0x000268:
    if (== self.argument1 38s) goto 0x002C50
0x000278:
    if (== self.argument1 39s) goto 0x002D60
0x000288:
    if (== self.argument1 40s) goto 0x002EB0
0x000298:
    if (== self.argument1 41s) goto 0x002FDC
0x0002A8:
    if (== self.argument1 42s) goto 0x003158
0x0002B8:
    if (== self.argument1 43s) goto 0x003254
0x0002C8:
    if (== self.argument1 44s) goto 0x003410
0x0002D8:
    if (== self.argument1 45s) goto 0x00347C
0x0002E8:
    if (== self.argument1 46s) goto 0x0034E8
0x0002F8:
    if (== self.argument1 47s) goto 0x003554
0x000308:
    if (== self.argument1 48s) goto 0x0035C0
0x000318:
    if (== self.argument1 49s) goto 0x00362C
0x000328:
    if (== self.argument1 50s) goto 0x003698
0x000338:
    if (== self.argument1 51s) goto 0x003704
0x000348:
    if (== self.argument1 52s) goto 0x003770
0x000358:
    if (== self.argument1 53s) goto 0x0037DC
0x000368:
    if (== self.argument1 54s) goto 0x003848
0x000378:
    if (== self.argument1 55s) goto 0x0039A4
0x000388:
    if (== self.argument1 56s) goto 0x003A6C
0x000398:
    if (== self.argument1 57s) goto 0x003B80
0x0003A8:
    if (== self.argument1 58s) goto 0x003C94
0x0003B8:
    if (== self.argument1 59s) goto 0x003D14
0x0003C8:
    if (== self.argument1 60s) goto 0x003DF0
0x0003D8:
    if (== self.argument1 61s) goto 0x003F84
0x0003E8:
    if (== self.argument1 62s) goto 0x004080
0x0003F8:
    if (== self.argument1 63s) goto 0x004168
0x000408:
    if (== self.argument1 64s) goto 0x0043F0
0x000418:
    if (== self.argument1 201s) goto 0x00445C
0x000428:
    if (== self.argument1 202s) goto 0x0045E8
0x000438:
    if (== self.argument1 203s) goto 0x004798
0x000448:
    if (== self.argument1 204s) goto 0x004948
0x000458:
    if (== self.argument1 205s) goto 0x004AF8
0x000468:
    if (== self.argument1 206s) goto 0x004CC4
0x000478:
    if (== self.argument1 210s) goto 0x004DA0
0x000488:
    if (== self.argument1 220s) goto 0x004DF8
0x000498:
    if (== self.argument1 221s) goto 0x004ED4
0x0004A8:
    push self.argument1
    goto 0x004FB0
0x0004AC:
    stog.msg[0s] = "* Error!/%%"
    goto 0x004FB0
0x0004C8:
    stog.msg[0s] = "* You ate the Monster Candy."
    if !(== global.seriousbattle 0s) goto 0x00058C
0x0004F4:
    self.randomtext = (round[]:int32 (random[]:int32 (var 15s)))
    if !(<= self.randomtext 2s) goto 0x000550
0x000528:
    push -5s
    stog.msg[(+ 0s:msg " &* Very un-licorice-like.")] = 0s
0x000550:
    if !(== self.randomtext 15s) goto 0x00058C
0x000564:
    push -5s
    stog.msg[(+ 0s:msg " &* ... tastes like licorice.")] = 0s
0x00058C:
    call (script_execute[]:int32 (var 10s) (var 64s))
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x0005F4:
    stog.msg[0s] = "* You hit the Croquet Roll into&  your mouth."
    if !(== global.seriousbattle 1s) goto 0x000638
0x000620:
    stog.msg[0s] = "* You ate the Croquet Roll."
0x000638:
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 15s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x0006A0:
    if !(bool (instance_exists[]:int32 (var 219s))) goto 0x000858
0x0006B8:
    if !(bool (instance_exists[]:int32 (var 220s))) goto 0x0006F4
0x0006D0:
    if !(< 220.mercymod 60s) goto 0x0006F0
0x0006E4:
    [obj_lesserdoge].mercymod = 102s
0x0006F0:
    goto 0x000700
0x0006F4:
    [obj_dogeparent].mercymod = 102s
0x000700:
    if (bool (instance_exists[]:int32 (var 245s))) goto 0x000730
0x000718:
    push (bool (instance_exists[]:int32 (var 246s)))
    goto 0x000734
0x000730:
    push 1s
0x000734:
    if !pop goto 0x0007D0
0x000738:
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x000794
0x00074C:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You threw the stick^1.&* But nothing happened./%") (var 0s) (var 146s))
    [obj_dogeparent].mercymod = -9999s
    goto 0x0007CC
0x000794:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You threw the stick and&  the dogs ran to get it^1.&* You played fetch for a while./%") (var 0s) (var 146s))
0x0007CC:
    goto 0x00082C
0x0007D0:
    if !(bool (instance_exists[]:int32 (var 224s))) goto 0x0007F4
0x0007E8:
    [obj_dogeparent].mercymod = 250s
0x0007F4:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You threw the stick and&  the dog ran to get it^1.&* You played fetch for a while./%") (var 0s) (var 146s))
0x00082C:
    if !(bool (instance_exists[]:int32 (var 555s))) goto 0x000854
0x000844:
    [obj_endogeny].mercymod = 999999
0x000854:
    goto 0x000A0C
0x000858:
    if (bool (instance_exists[]:int32 (var 232s))) goto 0x0008A0
0x000870:
    if (bool (instance_exists[]:int32 (var 369s))) goto 0x0008A0
0x000888:
    push (bool (instance_exists[]:int32 (var 403s)))
    goto 0x0008A4
0x0008A0:
    push 1s
0x0008A4:
    if !pop goto 0x0009D4
0x0008A8:
    if !(bool (instance_exists[]:int32 (var 232s))) goto 0x0008F8
0x0008C0:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You throw the stick.&* Papyrus brings it back&  in his mouth./%") (var 0s) (var 146s))
0x0008F8:
    if !(bool (instance_exists[]:int32 (var 369s))) goto 0x000954
0x000910:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You raise the stick.&* Madjick mistakes it for&  a magic wand./%") (var 0s) (var 146s))
    [obj_wizard].mercymod = 300s
0x000954:
    if !(bool (instance_exists[]:int32 (var 403s))) goto 0x0009D0
0x00096C:
    pushenv 402s 0x000994
0x000974:
    self.curtype = 7s
    call (event_user[]:int32 (var 0s))
0x000994:
    popenv 0x000974
0x000998:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You throw the stick.&* Mettaton catches it in his&  mouth and winks./%") (var 0s) (var 146s))
0x0009D0:
    goto 0x000A0C
0x0009D4:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You threw the stick away^1.&* Then picked it back up./%") (var 0s) (var 146s))
0x000A0C:
    goto 0x004FB0
0x000A10:
    stog.msg[0s] = "* You re-applied the bandage."
    call (snd_play[]:int32 (var 109s))
    if !(== global.seriousbattle 0s) goto 0x000A78
0x000A50:
    push -5s
    stog.msg[(+ 0s:msg "&* Still kind of gooey.")] = 0s
0x000A78:
    call (script_execute[]:int32 (var 10s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x000ABC:
    stog.msg[0s] = "* You ate the Rock Candy."
    call (script_execute[]:int32 (var 1s) (var 64s))
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x000B3C:
    stog.msg[0s] = "* You ate the Pumpkin Rings."
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 8s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x000BBC:
    stog.msg[0s] = "* You ate the Spider Donut."
    if !(== global.seriousbattle 0s) goto 0x000C48
0x000BE8:
    if !(== global.inbattle 1s) goto 0x000C48
0x000BFC:
    self.randomtext = (ceil[]:int32 (random[]:int32 (var 10s)))
    if !(> self.randomtext 9s) goto 0x000C48
0x000C30:
    stog.msg[0s] = "* Don't worry^1, Spider didn't."
0x000C48:
    if !(bool (instance_exists[]:int32 (var 360s))) goto 0x000C80
0x000C60:
    pushenv 360s 0x000C7C
0x000C68:
    call (event_user[]:int32 (var 6s))
0x000C7C:
    popenv 0x000C68
0x000C80:
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 12s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x000CE8:
    stog.msg[0s] = "* You ate the Stoic Onion."
    if !(== global.seriousbattle 0s) goto 0x000D70
0x000D14:
    self.randomtext = (round[]:int32 (random[]:int32 (var 10s)))
    if !(> self.randomtext 8s) goto 0x000D70
0x000D48:
    push -5s
    stog.msg[(+ 0s:msg "&* You didn't cry...")] = 0s
0x000D70:
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 5s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x000DD8:
    stog.msg[0s] = "* You ate the Ghost Fruit."
    self.foodsounder = (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    if !(== global.seriousbattle 0s) goto 0x000E4C
0x000E2C:
    pushenv (int32 self.foodsounder) 0x000E48
0x000E3C:
    self.soundtype = 2s
0x000E48:
    popenv 0x000E3C
0x000E4C:
    call (script_execute[]:int32 (var 16s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x000E90:
    stog.msg[0s] = "* You drank the Spider Cider."
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 24s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    if !(bool (instance_exists[]:int32 (var 360s))) goto 0x000F44
0x000F24:
    pushenv 360s 0x000F40
0x000F2C:
    call (event_user[]:int32 (var 6s))
0x000F40:
    popenv 0x000F2C
0x000F44:
    goto 0x004FB0
0x000F48:
    stog.msg[0s] = "* You ate the Butterscotch Pie^1.&* Your HP was maxed out./%%"
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    self.spec_p = 0s
    if !(< global.hp global.maxhp) goto 0x000FB8
0x000FA8:
    global.hp = global.maxhp
0x000FB8:
    if !(bool (instance_exists[]:int32 (var 478s))) goto 0x001088
0x000FD0:
    self.spec_p = 1s
    stog.msg[0s] = "* You ate the Butterscotch Pie^1.&* Your HP was maxed out./"
    stog.msg[1s] = "* The smell reminded ASGORE of&  something.../"
    stog.msg[2s] = "* ASGORE's ATTACK down^1!&* ASGORE's DEFENSE down!/%%"
    pushenv 478s 0x001084
0x00102C:
    push -5s
    stog.monsteratk[(- (int32 self.myself):monsteratk 1s)] = (int32 self.myself)
    push -5s
    stog.monsterdef[(- (int32 self.myself):monsterdef 5s)] = (int32 self.myself)
0x001084:
    popenv 0x00102C
0x001088:
    if !(bool (instance_exists[]:int32 (var 562s))) goto 0x001100
0x0010A0:
    self.spec_p = 1s
    stog.msg[0s] = "* You ate the Butterscotch Pie^1.&* Your HP was maxed out./"
    stog.msg[1s] = "* The smell reminded the Lost&  Souls of something...!/%%"
    pushenv 605s 0x0010FC
0x0010E4:
    self.totalmercy = (+ self.totalmercy 3s)
0x0010FC:
    popenv 0x0010E4
0x001100:
    if !(== self.spec_p 0s) goto 0x00114C
0x001114:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You ate the Butterscotch Pie.&* Your HP was maxed out./%") (var 0s) (var 146s))
0x00114C:
    if !(== self.spec_p 1s) goto 0x001198
0x001160:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You ate the Butterscotch Pie.&* Your HP was maxed out./") (var 0s) (var 146s))
0x001198:
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x0011C0:
    call (scr_armoreq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You equipped the ribbon./%") (var 0s) (var 146s))
    goto 0x004FB0
0x00122C:
    call (scr_weaponeq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You equipped Toy Knife./%") (var 0s) (var 146s))
    goto 0x004FB0
0x001298:
    call (scr_weaponeq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You equipped Tough Glove./%") (var 0s) (var 146s))
    goto 0x004FB0
0x001304:
    call (scr_armoreq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You equipped Manly Bandanna./%") (var 0s) (var 146s))
    goto 0x004FB0
0x001370:
    stog.msg[0s] = "* You ate the Snowman Piece."
    if !(== self.room 51s) goto 0x0013B0
0x00139C:
    stog.flag[56s] = 4s
0x0013B0:
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 45s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x001418:
    self.randomtext = (floor[]:int32 (random[]:int32 (var 8s)))
    if !(== self.randomtext 0s) goto 0x001464
0x00144C:
    stog.msg[0s] = "* You're just great!"
0x001464:
    if !(== self.randomtext 1s) goto 0x001490
0x001478:
    stog.msg[0s] = "* You look nice today!"
0x001490:
    if !(== self.randomtext 2s) goto 0x0014BC
0x0014A4:
    stog.msg[0s] = "* Are those claws natural?"
0x0014BC:
    if !(== self.randomtext 3s) goto 0x0014E8
0x0014D0:
    stog.msg[0s] = "* You're super spiffy!"
0x0014E8:
    if !(== self.randomtext 4s) goto 0x001514
0x0014FC:
    stog.msg[0s] = "* Have a wonderful day!"
0x001514:
    if !(== self.randomtext 5s) goto 0x001540
0x001528:
    stog.msg[0s] = "* Is this as sweet as you?"
0x001540:
    if !(== self.randomtext 6s) goto 0x00156C
0x001554:
    stog.msg[0s] = "* (An illustration of a hug.)"
0x00156C:
    if !(== self.randomtext 7s) goto 0x001598
0x001580:
    stog.msg[0s] = "* Love yourself! I love you!"
0x001598:
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 15s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x001600:
    stog.msg[0s] = "* Mmm^1! Tastes like puppies."
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 28s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x001680:
    stog.msg[0s] = "* You eat one half of&  the Bisicle."
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 11s) (var 64s))
    stog.item[(int32 self.argument0)] = 20s
    goto 0x004FB0
0x0016F8:
    stog.msg[0s] = "* You eat the Unisicle."
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 11s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x001778:
    stog.msg[0s] = "* You eat the Cinnamon Bunny."
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 22s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x0017F8:
    stog.msg[0s] = "* You eat the Temmie Flakes."
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 2s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x001878:
    stog.msg[0s] = "* You eat the quiche."
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 34s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x0018F8:
    call (scr_armoreq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You equipped the Old Tutu./%") (var 0s) (var 146s))
    goto 0x004FB0
0x001964:
    call (scr_weaponeq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You equipped Ballet Shoes./%") (var 0s) (var 146s))
    goto 0x004FB0
0x0019D0:
    if !(== global.inbattle 0s) goto 0x001A34
0x0019E4:
    self.d = (instance_create[]:int32 (var 117s) self.y self.x)
    push 839s
    stog.sprite_index* = (int32 self.d)
    global.interact = 1s
    goto 0x001BE0
0x001A34:
    stog.msg[0s] = "* OOOORAAAAA!!^1!&* You rip up the punch card!/"
    if !(== global.weapon 14s) goto 0x001B6C
0x001A60:
    call (snd_play[]:int32 (var 9s))
    self.add = 6s
    if !(> global.at 18s) goto 0x001AA0
0x001A94:
    self.add = 5s
0x001AA0:
    if !(> global.at 23s) goto 0x001AC0
0x001AB4:
    self.add = 4s
0x001AC0:
    if !(> global.at 26s) goto 0x001AE0
0x001AD4:
    self.add = 3s
0x001AE0:
    if !(> global.at 28s) goto 0x001B00
0x001AF4:
    self.add = 2s
0x001B00:
    global.at = (+ global.at self.add)
    stog.msg[1s] = (+ (+ "* Your hands are burning^1!&* AT increased by " (string[]:int32 self.add)) "!/%")
    stog.flag[78s] = 1s
    goto 0x001B84
0x001B6C:
    stog.msg[1s] = "* But nothing happened./%"
0x001B84:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 0s) (var 146s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
0x001BE0:
    goto 0x004FB0
0x001BE4:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You deployed the dog./%%") (var 0s) (var 146s))
    if !(bool (instance_exists[]:int32 (var 1147s))) goto 0x001C4C
0x001C34:
    pushenv 1147s 0x001C48
0x001C3C:
    self.con = 1s
0x001C48:
    popenv 0x001C3C
0x001C4C:
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x001C74:
    self.healamt = 1s
    self.dogsad = (floor[]:int32 (random[]:int32 (var 4s)))
    stog.msg[0s] = "* You eat the Dog Salad^1.&"
    if !(== self.dogsad 0s) goto 0x001D00
0x001CCC:
    push -5s
    stog.msg[(+ 0s:msg "* Oh^1. Tastes yappy...")] = 0s
    self.healamt = 30s
0x001D00:
    if !(== self.dogsad 1s) goto 0x001D48
0x001D14:
    push -5s
    stog.msg[(+ 0s:msg "* Oh^1. Fried tennis ball...")] = 0s
    self.healamt = 10s
0x001D48:
    if !(== self.dogsad 2s) goto 0x001D90
0x001D5C:
    push -5s
    stog.msg[(+ 0s:msg "* Oh^1. There are bones...")] = 0s
    self.healamt = 2s
0x001D90:
    if !(== self.dogsad 3s) goto 0x001DD8
0x001DA4:
    push -5s
    stog.msg[(+ 0s:msg "* It's literally garbage???")] = 0s
    self.healamt = 999s
0x001DD8:
    self.grt = (instance_create[]:int32 (var 90s) (var 0s) (var 0s))
    push 110s
    stog.sound1* = (int32 self.grt)
    if !(== global.seriousbattle 0s) goto 0x001E44
0x001E2C:
    push 4s
    stog.sound2* = (int32 self.grt)
0x001E44:
    if !(== global.seriousbattle 1s) goto 0x001E70
0x001E58:
    push 155s
    stog.sound2* = (int32 self.grt)
0x001E70:
    push 10s
    push (int32 self.grt)
    stog.alarm[] = 1s
    call (script_execute[]:int32 self.healamt (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x001ED0:
    push -5s
    if !(== 7s:item 0s) goto 0x001F08
0x001EEC:
    stog.msg[1s] = "* The rest of your inventory&  filled up with Dog Residue./%%"
    goto 0x001F20
0x001F08:
    stog.msg[1s] = "* .../"
0x001F20:
    stog.msg[2s] = "* You finished using it./"
    stog.msg[3s] = "* An uneasy atmosphere fills&  the room./%%"
    self.grt = (instance_create[]:int32 (var 90s) (var 0s) (var 0s))
    push 108s
    stog.sound1* = (int32 self.grt)
    push 4s
    stog.sound2* = (int32 self.grt)
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You used the Dog Residue./") (var 0s) (var 146s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    self.i = 0s
    if !(< self.i 8s) goto 0x0020AC
0x002024:
    self.rr = (+ (floor[]:int32 (random[]:int32 (var 7s))) 28s)
    push -5s
    if !(== (int32 self.i):item 0s) goto 0x002090
0x002070:
    stog.item[(int32 self.i)] = self.rr
0x002090:
    self.i = (+ self.i 1s)
    goto 0x002010
0x0020AC:
    goto 0x004FB0
0x0020B0:
    push -5s
    if !(== 7s:item 0s) goto 0x0020E8
0x0020CC:
    stog.msg[1s] = "* The rest of your inventory&  filled up with Dog Residue./%%"
    goto 0x002100
0x0020E8:
    stog.msg[1s] = "* .../"
0x002100:
    stog.msg[2s] = "* You finished using it./"
    stog.msg[3s] = "* An uneasy atmosphere fills&  the room./%%"
    self.grt = (instance_create[]:int32 (var 90s) (var 0s) (var 0s))
    push 108s
    stog.sound1* = (int32 self.grt)
    push 4s
    stog.sound2* = (int32 self.grt)
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You used the Dog Residue./") (var 0s) (var 146s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    self.i = 0s
    if !(< self.i 8s) goto 0x00228C
0x002204:
    self.rr = (+ (floor[]:int32 (random[]:int32 (var 7s))) 28s)
    push -5s
    if !(== (int32 self.i):item 0s) goto 0x002270
0x002250:
    stog.item[(int32 self.i)] = self.rr
0x002270:
    self.i = (+ self.i 1s)
    goto 0x0021F0
0x00228C:
    goto 0x004FB0
0x002290:
    push -5s
    if !(== 7s:item 0s) goto 0x0022C8
0x0022AC:
    stog.msg[1s] = "* The rest of your inventory&  filled up with Dog Residue./%%"
    goto 0x0022E0
0x0022C8:
    stog.msg[1s] = "* .../"
0x0022E0:
    stog.msg[2s] = "* You finished using it./"
    stog.msg[3s] = "* An uneasy atmosphere fills&  the room./%%"
    self.grt = (instance_create[]:int32 (var 90s) (var 0s) (var 0s))
    push 108s
    stog.sound1* = (int32 self.grt)
    push 4s
    stog.sound2* = (int32 self.grt)
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You used the Dog Residue./") (var 0s) (var 146s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    self.i = 0s
    if !(< self.i 8s) goto 0x00246C
0x0023E4:
    self.rr = (+ (floor[]:int32 (random[]:int32 (var 7s))) 28s)
    push -5s
    if !(== (int32 self.i):item 0s) goto 0x002450
0x002430:
    stog.item[(int32 self.i)] = self.rr
0x002450:
    self.i = (+ self.i 1s)
    goto 0x0023D0
0x00246C:
    goto 0x004FB0
0x002470:
    push -5s
    if !(== 7s:item 0s) goto 0x0024A8
0x00248C:
    stog.msg[1s] = "* The rest of your inventory&  filled up with Dog Residue./%%"
    goto 0x0024C0
0x0024A8:
    stog.msg[1s] = "* .../"
0x0024C0:
    stog.msg[2s] = "* You finished using it./"
    stog.msg[3s] = "* An uneasy atmosphere fills&  the room./%%"
    self.grt = (instance_create[]:int32 (var 90s) (var 0s) (var 0s))
    push 108s
    stog.sound1* = (int32 self.grt)
    push 4s
    stog.sound2* = (int32 self.grt)
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You used the Dog Residue./") (var 0s) (var 146s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    self.i = 0s
    if !(< self.i 8s) goto 0x00264C
0x0025C4:
    self.rr = (+ (floor[]:int32 (random[]:int32 (var 7s))) 28s)
    push -5s
    if !(== (int32 self.i):item 0s) goto 0x002630
0x002610:
    stog.item[(int32 self.i)] = self.rr
0x002630:
    self.i = (+ self.i 1s)
    goto 0x0025B0
0x00264C:
    goto 0x004FB0
0x002650:
    push -5s
    if !(== 7s:item 0s) goto 0x002688
0x00266C:
    stog.msg[1s] = "* The rest of your inventory&  filled up with Dog Residue./%%"
    goto 0x0026A0
0x002688:
    stog.msg[1s] = "* .../"
0x0026A0:
    stog.msg[2s] = "* You finished using it./"
    stog.msg[3s] = "* An uneasy atmosphere fills&  the room./%%"
    self.grt = (instance_create[]:int32 (var 90s) (var 0s) (var 0s))
    push 108s
    stog.sound1* = (int32 self.grt)
    push 4s
    stog.sound2* = (int32 self.grt)
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You used the Dog Residue./") (var 0s) (var 146s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    self.i = 0s
    if !(< self.i 8s) goto 0x00282C
0x0027A4:
    self.rr = (+ (floor[]:int32 (random[]:int32 (var 7s))) 28s)
    push -5s
    if !(== (int32 self.i):item 0s) goto 0x002810
0x0027F0:
    stog.item[(int32 self.i)] = self.rr
0x002810:
    self.i = (+ self.i 1s)
    goto 0x002790
0x00282C:
    goto 0x004FB0
0x002830:
    push -5s
    if !(== 7s:item 0s) goto 0x002868
0x00284C:
    stog.msg[1s] = "* The rest of your inventory&  filled up with Dog Residue./%%"
    goto 0x002880
0x002868:
    stog.msg[1s] = "* .../"
0x002880:
    stog.msg[2s] = "* You finished using it./"
    stog.msg[3s] = "* An uneasy atmosphere fills&  the room./%%"
    self.grt = (instance_create[]:int32 (var 90s) (var 0s) (var 0s))
    push 108s
    stog.sound1* = (int32 self.grt)
    push 4s
    stog.sound2* = (int32 self.grt)
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You used the Dog Residue./") (var 0s) (var 146s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    self.i = 0s
    if !(< self.i 8s) goto 0x002A0C
0x002984:
    self.rr = (+ (floor[]:int32 (random[]:int32 (var 7s))) 28s)
    push -5s
    if !(== (int32 self.i):item 0s) goto 0x0029F0
0x0029D0:
    stog.item[(int32 self.i)] = self.rr
0x0029F0:
    self.i = (+ self.i 1s)
    goto 0x002970
0x002A0C:
    goto 0x004FB0
0x002A10:
    stog.msg[0s] = "* You eat the Astronaut Food."
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 21s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x002A90:
    if !(== global.inbattle 0s) goto 0x002AFC
0x002AA4:
    stog.msg[0s] = "* You eat the Instant Noodles."
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 15s) (var 64s))
0x002AFC:
    if !(== global.inbattle 1s) goto 0x002BA8
0x002B10:
    if !(== global.seriousbattle 1s) goto 0x002B80
0x002B24:
    stog.msg[0s] = "* They're better dry."
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 90s) (var 64s))
    goto 0x002BA8
0x002B80:
    self.nood = (instance_create[]:int32 (var 178s) (var 0s) (var 0s))
0x002BA8:
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x002BD0:
    stog.msg[0s] = "* You eat the Crab Apple."
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 18s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x002C50:
    stog.msg[0s] = "* You eat the Hot Dog...?"
    self.grt = (instance_create[]:int32 (var 90s) (var 0s) (var 0s))
    push 110s
    stog.sound1* = (int32 self.grt)
    if !(== global.seriousbattle 0s) goto 0x002CD4
0x002CBC:
    push 5s
    stog.sound2* = (int32 self.grt)
0x002CD4:
    if !(== global.seriousbattle 1s) goto 0x002D00
0x002CE8:
    push 155s
    stog.sound2* = (int32 self.grt)
0x002D00:
    push 10s
    push (int32 self.grt)
    stog.alarm[] = 1s
    call (script_execute[]:int32 (var 20s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x002D60:
    stog.msg[0s] = "* You eat the Hot Cat."
    if !(== global.seriousbattle 0s) goto 0x002E44
0x002D8C:
    self.grt = (instance_create[]:int32 (var 90s) (var 0s) (var 0s))
    push 110s
    stog.sound1* = (int32 self.grt)
    if !(== global.seriousbattle 0s) goto 0x002DF8
0x002DE0:
    push 6s
    stog.sound2* = (int32 self.grt)
0x002DF8:
    if !(== global.seriousbattle 1s) goto 0x002E24
0x002E0C:
    push 155s
    stog.sound2* = (int32 self.grt)
0x002E24:
    push 10s
    push (int32 self.grt)
    stog.alarm[] = 1s
    goto 0x002E6C
0x002E44:
    self.grt = (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
0x002E6C:
    call (script_execute[]:int32 (var 21s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x002EB0:
    stog.msg[0s] = "* You eat the Glamburger."
    self.grt = (instance_create[]:int32 (var 90s) (var 0s) (var 0s))
    push 110s
    stog.sound1* = (int32 self.grt)
    push 1s
    stog.sound2* = (int32 self.grt)
    push 10s
    push (int32 self.grt)
    stog.alarm[] = 1s
    if !(bool (instance_exists[]:int32 (var 402s))) goto 0x002F98
0x002F54:
    stog.msg[0s] = "* You eat the Glamburger.&* The audience loves the brand."
    pushenv 402s 0x002F94
0x002F74:
    self.curtype = 10s
    call (event_user[]:int32 (var 0s))
0x002F94:
    popenv 0x002F74
0x002F98:
    call (script_execute[]:int32 (var 27s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x002FDC:
    stog.msg[0s] = "* You drink the Sea Tea."
    if !(== global.inbattle 1s) goto 0x0030A0
0x003008:
    if !(< global.sp 8s) goto 0x0030A0
0x00301C:
    global.sp = (+ global.sp 1s)
    if !(bool (instance_exists[]:int32 (var 360s))) goto 0x003078
0x00304C:
    push -5s
    stog.msg[(+ 0s:msg "&* But SPEED restricted by web.")] = 0s
    goto 0x0030A0
0x003078:
    push -5s
    stog.msg[(+ 0s:msg "&* Your SPEED boosts!")] = 0s
0x0030A0:
    self.grt = (instance_create[]:int32 (var 90s) (var 0s) (var 0s))
    push 110s
    stog.sound1* = (int32 self.grt)
    push 2s
    stog.sound2* = (int32 self.grt)
    push 10s
    push (int32 self.grt)
    stog.alarm[] = 1s
    call (script_execute[]:int32 (var 10s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x003158:
    stog.msg[0s] = "* You drink the Starfait."
    if !(bool (instance_exists[]:int32 (var 402s))) goto 0x0031CC
0x003188:
    stog.msg[0s] = "* You eat the Starfait.&* The audience loves the brand."
    pushenv 402s 0x0031C8
0x0031A8:
    self.curtype = 9s
    call (event_user[]:int32 (var 0s))
0x0031C8:
    popenv 0x0031A8
0x0031CC:
    self.grt = (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    push 10s
    push (int32 self.grt)
    stog.alarm[] = 1s
    call (script_execute[]:int32 (var 14s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x003254:
    stog.msg[0s] = "* You eat the Legendary Hero."
    if !(== global.seriousbattle 0s) goto 0x0032F8
0x003280:
    self.grt = (instance_create[]:int32 (var 90s) (var 0s) (var 0s))
    push 110s
    stog.sound1* = (int32 self.grt)
    push 3s
    stog.sound2* = (int32 self.grt)
    push 10s
    push (int32 self.grt)
    stog.alarm[] = 1s
    goto 0x003320
0x0032F8:
    self.grt = (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
0x003320:
    if !(== global.inbattle 1s) goto 0x003388
0x003334:
    if !(< global.at 150s) goto 0x003360
0x003348:
    global.at = (+ global.at 4s)
0x003360:
    push -5s
    stog.msg[(+ 0s:msg "&* ATTACK increased by 4!")] = 0s
0x003388:
    if !(bool (instance_exists[]:int32 (var 402s))) goto 0x0033CC
0x0033A0:
    pushenv 402s 0x0033C8
0x0033A8:
    self.curtype = 9s
    call (event_user[]:int32 (var 0s))
0x0033C8:
    popenv 0x0033A8
0x0033CC:
    call (script_execute[]:int32 (var 40s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x003410:
    call (scr_armoreq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You equipped the glasses./%") (var 0s) (var 146s))
    goto 0x004FB0
0x00347C:
    call (scr_weaponeq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You equipped the Torn Notebook./%") (var 0s) (var 146s))
    goto 0x004FB0
0x0034E8:
    call (scr_armoreq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You equipped the apron./%") (var 0s) (var 146s))
    goto 0x004FB0
0x003554:
    call (scr_weaponeq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You equipped the Burnt Pan./%") (var 0s) (var 146s))
    goto 0x004FB0
0x0035C0:
    call (scr_armoreq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You equipped the Cowboy Hat./%") (var 0s) (var 146s))
    goto 0x004FB0
0x00362C:
    call (scr_weaponeq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You equipped the Empty Gun./%") (var 0s) (var 146s))
    goto 0x004FB0
0x003698:
    call (scr_armoreq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You equipped the locket./%") (var 0s) (var 146s))
    goto 0x004FB0
0x003704:
    call (scr_weaponeq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You equipped the dagger./%") (var 0s) (var 146s))
    goto 0x004FB0
0x003770:
    call (scr_weaponeq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* About time./%") (var 0s) (var 146s))
    goto 0x004FB0
0x0037DC:
    call (scr_armoreq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* Right where it belongs./%") (var 0s) (var 146s))
    goto 0x004FB0
0x003848:
    global.hp = (- global.hp 1s)
    self.grt = (instance_create[]:int32 (var 90s) (var 0s) (var 0s))
    push 110s
    stog.sound1* = (int32 self.grt)
    push 53s
    stog.sound2* = (int32 self.grt)
    push 10s
    push (int32 self.grt)
    stog.alarm[] = 1s
    if !(<= global.hp 2s) goto 0x00392C
0x0038E8:
    push 109s
    stog.sound2* = (int32 self.grt)
    global.hp = global.maxhp
    stog.msg[0s] = "* You consume the Bad Memory^1.&* Your HP was maxed out./%"
    goto 0x003944
0x00392C:
    stog.msg[0s] = "* You consume the Bad Memory^1.&* You lost 1HP./%"
0x003944:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 0s) (var 146s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x0039A4:
    stog.msg[0s] = "* Through DETERMINATION^1, the&  dream became true."
    push -5s
    if !(== 503s:flag 1s) goto 0x0039F0
0x0039D8:
    stog.msg[0s] = "* The dream came true!"
0x0039F0:
    stog.flag[503s] = 1s
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 17s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x003A6C:
    if !(~ (bool (instance_exists[]:int32 (var 1313s)))) goto 0x003B20
0x003A88:
    stog.msg[0s] = "* You tried to open the letter^1,&  but.../"
    stog.msg[1s] = "* It's been shut so tightly^1,&  you'd need a chainsaw in&  order to open it./%"
    if !(== self.room 139s) goto 0x003AE4
0x003ACC:
    stog.msg[0s] = "* (Maybe if you check the lab&  door^1, you can slide it&  underneath...)/%%"
0x003AE4:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 0s) (var 146s))
    goto 0x003B7C
0x003B20:
    global.faceemotion = 1s
    stog.msg[0s] = "* OH MY GOD!!^1!&* I'M GONNA FREAKIN' KILL&  YOU!!/%%"
    call (script_execute[]:int32 (var 37s) (var 5s) (var "x") (var 0s) (var 146s))
0x003B7C:
    goto 0x004FB0
0x003B80:
    if !(~ (bool (instance_exists[]:int32 (var 1313s)))) goto 0x003C34
0x003B9C:
    stog.msg[0s] = "* You tried to open the letter^1,&  but.../"
    stog.msg[1s] = "* It's been shut so tightly^1,&  you'd need a chainsaw in&  order to open it./%"
    if !(== self.room 139s) goto 0x003BF8
0x003BE0:
    stog.msg[0s] = "* (Maybe if you check the lab&  door^1, you can slide it&  underneath...)/%%"
0x003BF8:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 0s) (var 146s))
    goto 0x003C90
0x003C34:
    global.faceemotion = 1s
    stog.msg[0s] = "* OH MY GOD!!^1!&* I'M GONNA FREAKIN' KILL&  YOU!!/%%"
    call (script_execute[]:int32 (var 37s) (var 5s) (var "x") (var 0s) (var 146s))
0x003C90:
    goto 0x004FB0
0x003C94:
    stog.msg[0s] = "* You eat the Popato Chisps."
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 13s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x003D14:
    stog.msg[0s] = "* You eat the Junk Food."
    if !(bool (instance_exists[]:int32 (var 402s))) goto 0x003D88
0x003D44:
    stog.msg[0s] = "* You eat the Junk Food.&* The audience is disgusted."
    pushenv 402s 0x003D84
0x003D64:
    self.curtype = 8s
    call (event_user[]:int32 (var 0s))
0x003D84:
    popenv 0x003D64
0x003D88:
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 17s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x003DF0:
    stog.msg[0s] = "* You used the Mystery Key^1.&* But nothing happened./%%"
    if !(== self.room 265s) goto 0x003E64
0x003E1C:
    stog.msg[0s] = "* You used the Mystery Key^1.&* The door's lock clicks.../"
    stog.msg[1s] = "* ... as you fail to fit the&  key into it./"
    stog.msg[2s] = "* Nothing happened./%%"
0x003E64:
    if !(bool (instance_exists[]:int32 (var 403s))) goto 0x003E94
0x003E7C:
    stog.msg[0s] = "* You used the Mystery Key^1.&* Mettaton pretends it isn't&  there./%%"
0x003E94:
    if !(bool (instance_exists[]:int32 (var 1081s))) goto 0x003F48
0x003EAC:
    stog.msg[0s] = "* You used the Mystery Key^1.&* The red house's door&  was unlocked./"
    stog.msg[1s] = "* The key disappeared./%%"
    stog.flag[433s] = 1s
    call (snd_play[]:int32 (var 108s))
    pushenv 1081s 0x003F20
0x003F0C:
    call (event_user[]:int32 (var 1s))
0x003F20:
    popenv 0x003F0C
0x003F24:
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
0x003F48:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 0s) (var 146s))
    goto 0x004FB0
0x003F84:
    stog.msg[0s] = "* You ate the Face Steak."
    if !(bool (instance_exists[]:int32 (var 402s))) goto 0x003FF8
0x003FB4:
    stog.msg[0s] = "* You ate the Face Steak.&* The audience goes nuts."
    pushenv 402s 0x003FF4
0x003FD4:
    self.curtype = 13s
    call (event_user[]:int32 (var 0s))
0x003FF4:
    popenv 0x003FD4
0x003FF8:
    self.grt = (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    push 10s
    push (int32 self.grt)
    stog.alarm[] = 1s
    call (script_execute[]:int32 (var 60s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x004080:
    if !(== global.seriousbattle 0s) goto 0x0040AC
0x004094:
    stog.msg[0s] = "* You eat the Hush Puppy.&* Dog-magic is neutralized."
0x0040AC:
    if !(== global.seriousbattle 1s) goto 0x0040D8
0x0040C0:
    stog.msg[0s] = "* You eat the Hush Puppy."
0x0040D8:
    if !(bool (instance_exists[]:int32 (var 555s))) goto 0x004100
0x0040F0:
    [obj_endogeny].mercymod = 999999
0x004100:
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 65s) (var 64s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x004168:
    stog.msg[0s] = "* You ate the Snail Pie^1.&* Your HP was maxed^1. Almost./%%"
    call (instance_create[]:int32 (var 91s) (var 0s) (var 0s))
    self.spec_p = 0s
    if !(< global.hp (- global.maxhp 1s)) goto 0x0041E8
0x0041D0:
    global.hp = (- global.maxhp 1s)
0x0041E8:
    if !(bool (instance_exists[]:int32 (var 478s))) goto 0x0042B8
0x004200:
    self.spec_p = 1s
    stog.msg[0s] = "* You ate the Snail Pie^1.&* Your HP was maxed out./"
    stog.msg[1s] = "* The smell reminded ASGORE of&  something.../"
    stog.msg[2s] = "* ASGORE's ATTACK down^1!&* ASGORE's DEFENSE down!/%%"
    pushenv 478s 0x0042B4
0x00425C:
    push -5s
    stog.monsteratk[(- (int32 self.myself):monsteratk 1s)] = (int32 self.myself)
    push -5s
    stog.monsterdef[(- (int32 self.myself):monsterdef 5s)] = (int32 self.myself)
0x0042B4:
    popenv 0x00425C
0x0042B8:
    if !(bool (instance_exists[]:int32 (var 562s))) goto 0x004330
0x0042D0:
    self.spec_p = 1s
    stog.msg[0s] = "* You ate the Snail Pie^1.&* Your HP was maxed out./"
    stog.msg[1s] = "* The smell reminded the Lost&  Souls of something...!/%%"
    pushenv 605s 0x00432C
0x004314:
    self.totalmercy = (+ self.totalmercy 3s)
0x00432C:
    popenv 0x004314
0x004330:
    if !(== self.spec_p 0s) goto 0x00437C
0x004344:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You ate the Snail Pie.&* Your HP was maxed out./%") (var 0s) (var 146s))
0x00437C:
    if !(== self.spec_p 1s) goto 0x0043C8
0x004390:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You ate the Snail Pie.&* Your HP was maxed out./") (var 0s) (var 146s))
0x0043C8:
    call (script_execute[]:int32 (var 0s) self.argument0 (var 66s))
    goto 0x004FB0
0x0043F0:
    call (scr_armoreq[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 108s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "* You donned the Temmie Armor./%") (var 0s) (var 146s))
    goto 0x004FB0
0x00445C:
    push -5s
    if !(== 37s:flag 1s) goto 0x0044AC
0x004478:
    call (scr_writetext[]:int32 (var 0s) (var 0s) (var "x") (var 1508s))
    goto 0x0045E4
0x0044AC:
    if !(< global.plot 19.9d) goto 0x004598
0x0044C8:
    if !(> global.plot 18s) goto 0x0044F0
0x0044DC:
    push (== self.room 33s)
    goto 0x0044F4
0x0044F0:
    push 0s
0x0044F4:
    if !pop goto 0x004548
0x0044F8:
    call (snd_play[]:int32 (var 104s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1507s) (var 146s))
    goto 0x004594
0x004548:
    call (snd_play[]:int32 (var 104s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1501s) (var 146s))
0x004594:
    goto 0x0045E4
0x004598:
    call (snd_play[]:int32 (var 104s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1506s) (var 146s))
0x0045E4:
    goto 0x004FB0
0x0045E8:
    push -5s
    if !(== 37s:flag 1s) goto 0x004638
0x004604:
    call (scr_writetext[]:int32 (var 0s) (var 0s) (var "x") (var 1508s))
    goto 0x004794
0x004638:
    if !(< global.plot 19.9d) goto 0x004748
0x004654:
    if !(> global.plot 18s) goto 0x00467C
0x004668:
    push (== self.room 33s)
    goto 0x004680
0x00467C:
    push 0s
0x004680:
    if !pop goto 0x0046D4
0x004684:
    call (snd_play[]:int32 (var 104s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1507s) (var 146s))
    goto 0x004744
0x0046D4:
    call (snd_play[]:int32 (var 104s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1502s) (var 146s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 67s))
0x004744:
    goto 0x004794
0x004748:
    call (snd_play[]:int32 (var 104s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1506s) (var 146s))
0x004794:
    goto 0x004FB0
0x004798:
    push -5s
    if !(== 37s:flag 1s) goto 0x0047E8
0x0047B4:
    call (scr_writetext[]:int32 (var 0s) (var 0s) (var "x") (var 1508s))
    goto 0x004944
0x0047E8:
    if !(< global.plot 19.9d) goto 0x0048F8
0x004804:
    if !(> global.plot 18s) goto 0x00482C
0x004818:
    push (== self.room 33s)
    goto 0x004830
0x00482C:
    push 0s
0x004830:
    if !pop goto 0x004884
0x004834:
    call (snd_play[]:int32 (var 104s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1507s) (var 146s))
    goto 0x0048F4
0x004884:
    call (snd_play[]:int32 (var 104s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1503s) (var 146s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 67s))
0x0048F4:
    goto 0x004944
0x0048F8:
    call (snd_play[]:int32 (var 104s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1506s) (var 146s))
0x004944:
    goto 0x004FB0
0x004948:
    push -5s
    if !(== 37s:flag 1s) goto 0x004998
0x004964:
    call (scr_writetext[]:int32 (var 0s) (var 0s) (var "x") (var 1508s))
    goto 0x004AF4
0x004998:
    if !(< global.plot 19.9d) goto 0x004AA8
0x0049B4:
    if !(> global.plot 18s) goto 0x0049DC
0x0049C8:
    push (== self.room 33s)
    goto 0x0049E0
0x0049DC:
    push 0s
0x0049E0:
    if !pop goto 0x004A34
0x0049E4:
    call (snd_play[]:int32 (var 104s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1507s) (var 146s))
    goto 0x004AA4
0x004A34:
    call (snd_play[]:int32 (var 104s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1504s) (var 146s))
    call (script_execute[]:int32 (var 0s) self.argument0 (var 67s))
0x004AA4:
    goto 0x004AF4
0x004AA8:
    call (snd_play[]:int32 (var 104s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1506s) (var 146s))
0x004AF4:
    goto 0x004FB0
0x004AF8:
    push -5s
    if !(== 37s:flag 1s) goto 0x004B48
0x004B14:
    call (scr_writetext[]:int32 (var 0s) (var 0s) (var "x") (var 1508s))
    goto 0x004CC0
0x004B48:
    if !(< global.plot 19.9d) goto 0x004C74
0x004B64:
    if !(> global.plot 18s) goto 0x004B8C
0x004B78:
    push (== self.room 33s)
    goto 0x004B90
0x004B8C:
    push 0s
0x004B90:
    if !pop goto 0x004BE4
0x004B94:
    call (snd_play[]:int32 (var 104s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1507s) (var 146s))
    goto 0x004C70
0x004BE4:
    call (snd_play[]:int32 (var 104s))
    push -5s
    if !(== 41s:flag 1s) goto 0x004C38
0x004C14:
    call (script_execute[]:int32 (var 0s) self.argument0 (var 67s))
0x004C38:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1505s) (var 146s))
0x004C70:
    goto 0x004CC0
0x004C74:
    call (snd_play[]:int32 (var 104s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1506s) (var 146s))
0x004CC0:
    goto 0x004FB0
0x004CC4:
    call (scr_phone_moveup[]:int32 self.argument1 self.argument0)
    call (snd_play[]:int32 (var 104s))
    push -5s
    if !(== 7s:flag 0s) goto 0x004D48
0x004D10:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1506s) (var 146s))
0x004D48:
    push -5s
    if !(== 7s:flag 1s) goto 0x004D9C
0x004D64:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1515s) (var 146s))
0x004D9C:
    goto 0x004FB0
0x004DA0:
    call (scr_phone_moveup[]:int32 self.argument1 self.argument0)
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1510s) (var 146s))
    goto 0x004FB0
0x004DF8:
    if !(!= self.room 103s) goto 0x004E98
0x004E0C:
    call (snd_play[]:int32 (var 102s))
    call (scr_phone_moveup[]:int32 self.argument1 self.argument0)
    self.ii = (instance_create[]:int32 (var 1526s) (var 0s) (var 0s))
    push 1s
    stog.spec* = (int32 self.ii)
    push 0s
    stog.boxtype* = (int32 self.ii)
    goto 0x004ED0
0x004E98:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1520s) (var 146s))
0x004ED0:
    goto 0x004FB0
0x004ED4:
    if !(!= self.room 103s) goto 0x004F74
0x004EE8:
    call (snd_play[]:int32 (var 102s))
    call (scr_phone_moveup[]:int32 self.argument1 self.argument0)
    self.ii = (instance_create[]:int32 (var 1526s) (var 0s) (var 0s))
    push 1s
    stog.spec* = (int32 self.ii)
    push 1s
    stog.boxtype* = (int32 self.ii)
    goto 0x004FAC
0x004F74:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 1520s) (var 146s))
0x004FAC:
    goto 0x004FB0
0x004FB0:
    pop
0x004FB4:
    exit
