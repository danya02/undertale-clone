0x000000:
    if !(== self.conversation 1s) goto 0x000228
0x000014:
    self.fade = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.5d
    stog.fadespeed* = (int32 self.fade)
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    global.interact = 1s
    stog.msg[0s] = "SO^1, AS I&WAS SAYING&ABOUT UNDYNE,/%%"
    if !(== self.murder 1s) goto 0x0001D8
0x0000D0:
    global.faceemotion = 2s
    stog.msg[0s] = "\\E2SO SANS^1!&WHEN'S THE HUMAN&SHOWING UP???/"
    stog.msg[1s] = "\\E3I WANT TO LOOK&MY SUNDAY BEST.../"
    stog.msg[2s] = "\\E0OR AT LEAST MY&TUESDAY&PRETTY-GOOD./"
    call (scr_sansface[]:int32 (var 1s) (var 3s))
    stog.msg[4s] = "\\E1* don't you only have&  one outfit?/"
    call (scr_papface[]:int32 (var 2s) (var 5s))
    stog.msg[6s] = "\\E2YEAH^1, BUT I COULD&STYLE MY HAIR!/"
    call (scr_sansface[]:int32 (var 0s) (var 7s))
    stog.msg[8s] = "\\E0* oh^1. right^1.&* good idea./"
    stog.msg[9s] = "\\E1* say^1, why don't you&  look over there?/%%"
0x0001D8:
    global.currentsong = (caster_load[]:int32 (var "music/papyrus.ogg"))
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 2s
0x000228:
    if !(== self.conversation 2s) goto 0x000258
0x00023C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00025C
0x000258:
    push 0s
0x00025C:
    if !pop goto 0x000324
0x000260:
    call (caster_loop[]:int32 (var 1s) (var 0.6d) global.currentsong)
    self.conversation = 3s
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    self.xxblcon = (instance_create[]:int32 (var 1337s) (- (int32 self.papyrus):y 12s) (+ (int32 self.papyrus):x 3s))
    stog.alarm[0s] = 50s
0x000324:
    if !(== self.conversation 5s) goto 0x000534
0x000338:
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    global.interact = 1s
    stog.msg[0s] = "SANS!!&OH MY GOD!!&IS THAT.../"
    stog.msg[1s] = "A HUMAN!?!?&!??!?!/%%"
    call (ini_open[]:int32 (var "undertale.ini"))
    self.M1 = (ini_read_real[]:int32 (var 0s) (var "M1") (var "Papyrus"))
    call (ini_write_real[]:int32 (+ self.M1 1s) (var "M1") (var "Papyrus"))
    call (ini_close[]:int32 )
    if !(> self.M1 0s) goto 0x000488
0x000440:
    stog.msg[0s] = "SANS!!&OH MY GOD!!&IS THAT.../"
    stog.msg[1s] = "A HUMAN!?!?&!??!?!/"
    stog.msg[2s] = "AND IT LOOKS SO&FAMILIAR...!!!/%%"
0x000488:
    if !(== self.murder 1s) goto 0x000500
0x00049C:
    stog.msg[0s] = "\\E0SANS!!^1!&OH MY GOD!!!!/"
    stog.msg[1s] = "\\E3I'M DIZZY^1.&WHAT AM I LOOKING&AT?/"
    call (scr_sansface[]:int32 (var 1s) (var 2s))
    stog.msg[3s] = "\\E1* behold./%%"
0x000500:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 6s
0x000534:
    if !(== self.conversation 6s) goto 0x000564
0x000548:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000568
0x000564:
    push 0s
0x000568:
    if !pop goto 0x0005FC
0x00056C:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    stog.alarm[3s] = 30s
    self.conversation = 7s
0x0005FC:
    if !(== self.conversation 8s) goto 0x000684
0x000610:
    push -1s
    stog.view_xview[(- 0s:view_xview 1s)] = 0s
    push -1s
    if !(<= 0s:view_xview -40s) goto 0x000684
0x000650:
    stog.view_xview[0s] = -40s
    self.conversation = 9s
    stog.alarm[3s] = 30s
0x000684:
    if !(== self.conversation 10s) goto 0x0007E8
0x000698:
    global.msc = 0s
    global.typer = 17s
    global.facechoice = 3s
    global.faceemotion = 0s
    push (int32 self.sans):dtsprite
    stog.sprite_index* = (int32 self.sans)
    stog.msg[0s] = "* uhhhh.../"
    stog.msg[1s] = "\\E1* actually^1, i think that's&  a rock./%%"
    if !(> self.M1 0s) goto 0x000764
0x000734:
    stog.msg[0s] = "* uhhhh..^1.&* i think it looks&  familiar.../"
    stog.msg[1s] = "\\E1* because it's a rock?/%%"
0x000764:
    if !(== self.murder 1s) goto 0x0007B4
0x000778:
    global.facechoice = 4s
    global.faceemotion = 0s
    global.typer = 19s
    stog.msg[0s] = "\\E0OH MY GOD!!!/%%"
0x0007B4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 11s
0x0007E8:
    if !(== self.conversation 11s) goto 0x000818
0x0007FC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00081C
0x000818:
    push 0s
0x00081C:
    if !pop goto 0x000880
0x000820:
    push -1s
    stog.view_xview[(+ 0s:view_xview 4s)] = 0s
    push -1s
    if !(>= 0s:view_xview 0s) goto 0x000880
0x000860:
    stog.view_xview[0s] = 0s
    self.conversation = 12s
0x000880:
    if !(== self.conversation 12s) goto 0x000964
0x000894:
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 3s
    push (int32 self.papyrus):utsprite
    stog.sprite_index* = (int32 self.papyrus)
    stog.msg[0s] = "OH^1./%%"
    if !(== self.murder 1s) goto 0x000930
0x000918:
    stog.msg[0s] = "WHY ARE YOU&TELLING ME TO&LOOK AT A ROCK./%%"
0x000930:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 13s
0x000964:
    if !(== self.conversation 13s) goto 0x000994
0x000978:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000998
0x000994:
    push 0s
0x000998:
    if !pop goto 0x000A54
0x00099C:
    [obj_mainchara].cutscene = 0s
    stog.view_object[0s] = 1570s
    global.typer = 17s
    global.facechoice = 3s
    global.faceemotion = 0s
    push (int32 self.sans):ltsprite
    stog.sprite_index* = (int32 self.sans)
    stog.msg[0s] = "* hey^1, what's that in&  front of the rock?/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 14s
0x000A54:
    if !(== self.conversation 14s) goto 0x000A84
0x000A68:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A88
0x000A84:
    push 0s
0x000A88:
    if !pop goto 0x000B4C
0x000A8C:
    self.xxblcon = (instance_create[]:int32 (var 1337s) (- (int32 self.papyrus):y 12s) (+ (int32 self.papyrus):x 3s))
    push (int32 self.sans):dtsprite
    stog.sprite_index* = (int32 self.sans)
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    self.conversation = 15s
    stog.alarm[3s] = 30s
0x000B4C:
    if !(== self.conversation 16s) goto 0x000BDC
0x000B60:
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    stog.msg[0s] = "OH MY GOD!!!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 17s
0x000BDC:
    if !(== self.conversation 17s) goto 0x000C0C
0x000BF0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C10
0x000C0C:
    push 0s
0x000C10:
    if !pop goto 0x000CE4
0x000C14:
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    push (int32 self.papyrus):utsprite
    stog.sprite_index* = (int32 self.papyrus)
    stog.msg[0s] = "(IS... IS THAT&A HUMAN)/%%"
    if !(== self.murder 1s) goto 0x000CB0
0x000C98:
    stog.msg[0s] = "I HAVE NO IDEA&WHAT THAT IS./%%"
0x000CB0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 18s
0x000CE4:
    if !(== self.conversation 18s) goto 0x000D14
0x000CF8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D18
0x000D14:
    push 0s
0x000D18:
    if !pop goto 0x000DC4
0x000D1C:
    global.msc = 0s
    global.typer = 17s
    global.facechoice = 3s
    global.faceemotion = 0s
    stog.msg[0s] = "(yes)/%%"
    if !(== self.murder 1s) goto 0x000D90
0x000D78:
    stog.msg[0s] = "* well^1.&* it's not a rock./%%"
0x000D90:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 19s
0x000DC4:
    if !(== self.conversation 19s) goto 0x000DF4
0x000DD8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000DF8
0x000DF4:
    push 0s
0x000DF8:
    if !pop goto 0x001104
0x000DFC:
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    push (int32 self.sans):ltsprite
    stog.sprite_index* = (int32 self.sans)
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    stog.msg[0s] = "OH MY GOD!!!/"
    stog.msg[1s] = "SANS!&I FINALLY&DID IT!!/"
    stog.msg[2s] = "UNDYNE WILL.../"
    stog.msg[3s] = "I'M GONNA.../"
    stog.msg[4s] = "I'LL BE SO.../"
    stog.msg[5s] = "POPULAR!!^1!&POPULAR!!^1!&POPULAR!!^1!/"
    stog.msg[6s] = "\\E3..^1.'AHEM'/"
    stog.msg[7s] = "\\E1HUMAN^1! YOU&SHALL NOT PASS&THIS AREA!/"
    stog.msg[8s] = "I^1, THE GREAT&PAPYRUS^1, WILL&STOP YOU!!!/"
    stog.msg[9s] = "I WILL THEN&CAPTURE YOU!/"
    stog.msg[10s] = "YOU WILL BE&DELIVERED TO&THE CAPITAL!/"
    stog.msg[11s] = "THEN..^1.&THEN!!^1!/"
    stog.msg[12s] = "\\E3I'M NOT SURE&WHAT'S NEXT./"
    stog.msg[13s] = "\\E1IN ANY CASE!/"
    stog.msg[14s] = "CONTINUE...&ONLY IF YOU&DARE!!!/%%"
    if !(== self.murder 1s) goto 0x0010D0
0x000FF8:
    stog.msg[0s] = "\\E3NOT A ROCK...?/"
    stog.msg[1s] = "\\E0OH NO!!^1!&BY PROCESS OF&ELIMINATION!!!/"
    stog.msg[2s] = "\\E0THAT MEANS IT'S&A HUMAN!!!/"
    stog.msg[3s] = "\\E3AHEM!^1!&HUMAN!!/"
    stog.msg[4s] = "\\E4PREPARE YOURSELF!^1!&FOR HIGH JINKS^1!&FOR LOW JINKS!/"
    stog.msg[5s] = "DANGERS^1!&PUZZLES^1!&CAPERS^1! JAPERS!/"
    stog.msg[6s] = "BEING CAPTURED!^1!&AND OTHER SORTS OF&FUN ACTIVITIES./"
    stog.msg[7s] = "REFRESHMENTS WILL&BE PROVIDED.../"
    stog.msg[8s] = "IF YOU DARE!/%%"
0x0010D0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 20s
0x001104:
    if !(== self.conversation 20s) goto 0x001134
0x001118:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001138
0x001134:
    push 0s
0x001138:
    if !pop goto 0x001220
0x00113C:
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    push (int32 self.sans):dtsprite
    stog.sprite_index* = (int32 self.sans)
    push (int32 self.papyrus):rsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 5s
    stog.hspeed* = (int32 self.papyrus)
    stog.msg[0s] = "NYEH HEH HEH&HEH HEH HEH&HEH HEH!!!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 21s
0x001220:
    if !(== self.conversation 21s) goto 0x001250
0x001234:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001254
0x001250:
    push 0s
0x001254:
    if !pop goto 0x0012E8
0x001258:
    stog.alarm[3s] = 30s
    self.ppp = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.04d
    stog.fadespeed* = (int32 self.ppp)
    push (int32 self.sans):rsprite
    stog.sprite_index* = (int32 self.sans)
    self.conversation = 22s
0x0012E8:
    if !(== self.conversation 22s) goto 0x0013F0
0x0012FC:
    push (int32 self.sans):ltsprite
    stog.sprite_index* = (int32 self.sans)
    global.typer = 17s
    global.facechoice = 3s
    global.faceemotion = 0s
    stog.msg[0s] = "* well^1, that went well./"
    stog.msg[1s] = "* don't sweat it^1, kid./"
    stog.msg[2s] = "\\E2* i'll keep an eyesocket&  out for ya./%%"
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x0013BC
0x0013A4:
    stog.msg[0s] = "* ... and you don't even&  bat an eye^1, huh?/%%"
0x0013BC:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 23s
0x0013F0:
    if !(== self.conversation 23s) goto 0x001420
0x001404:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001424
0x001420:
    push 0s
0x001424:
    if !pop goto 0x001488
0x001428:
    stog.alarm[3s] = 30s
    push (int32 self.sans):rsprite
    stog.sprite_index* = (int32 self.sans)
    push 3s
    stog.hspeed* = (int32 self.sans)
    self.conversation = 24s
0x001488:
    if !(== self.conversation 25s) goto 0x00158C
0x00149C:
    global.currentsong = (caster_load[]:int32 (var "music/snowy.ogg"))
    call (caster_loop[]:int32 (var 0.95d) (var 1s) global.currentsong)
    if !(== self.murder 1s) goto 0x00151C
0x0014F8:
    call (caster_set_pitch[]:int32 (var 0.4d) global.currentsong)
0x00151C:
    global.plot = 40s
    global.interact = 0s
    call (scr_tempsave[]:int32 )
    pushenv (int32 self.sans) 0x00155C
0x001550:
    call (instance_destroy[]:int32 )
0x00155C:
    popenv 0x001550
0x001560:
    pushenv (int32 self.papyrus) 0x00157C
0x001570:
    call (instance_destroy[]:int32 )
0x00157C:
    popenv 0x001570
0x001580:
    call (instance_destroy[]:int32 )
0x00158C:
    exit
