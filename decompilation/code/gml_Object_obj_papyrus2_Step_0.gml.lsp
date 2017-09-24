0x000000:
    if !(== self.conversation 1s) goto 0x000348
0x000014:
    self.fade = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.5d
    stog.fadespeed* = (int32 self.fade)
    global.currentsong = (caster_load[]:int32 (var "music/papyrus.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.6d) global.currentsong)
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 1s
    global.interact = 1s
    stog.msg[0s] = "YOU'RE SO&LAZY!!/"
    stog.msg[1s] = "YOU WERE&NAPPING&ALL NIGHT!!/"
    call (scr_sansface[]:int32 (var 0s) (var 2s))
    stog.msg[3s] = "* i think that's called.../"
    stog.msg[4s] = "\\E1* sleeping./"
    call (scr_papface[]:int32 (var 1s) (var 5s))
    stog.msg[6s] = "EXCUSES^1,&EXCUSES!/%%"
    call (ini_open[]:int32 (var "undertale.ini"))
    self.M1 = (ini_read_real[]:int32 (var 0s) (var "M1") (var "Papyrus"))
    call (ini_close[]:int32 )
    if !(> self.M1 1s) goto 0x000314
0x000204:
    stog.msg[0s] = "REALLY THOUGH!!^1!&THAT HUMAN!!!/"
    stog.msg[1s] = "\\E2DO I KNOW THAT&PERSON???/"
    call (scr_sansface[]:int32 (var 0s) (var 2s))
    stog.msg[3s] = "* do you not know.../"
    stog.msg[4s] = "\\E1* who you know?/"
    call (scr_papface[]:int32 (var 0s) (var 5s))
    stog.msg[6s] = "PBPBPPBPT!!/"
    stog.msg[7s] = "OF COURSE I KNOW&WHO I KNOW!!/"
    stog.msg[8s] = "I WANTED TO KNOW IF&YOU KNOW.../"
    stog.msg[9s] = "I KNOW WHO I KNOW&AS MUCH AS I KNOW&I KNOW WHO I KNOW!/"
    stog.msg[10s] = "\\E2...YOU KNOW?/%%"
0x000314:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 2s
0x000348:
    if !(== self.conversation 2s) goto 0x000378
0x00035C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00037C
0x000378:
    push 0s
0x00037C:
    if !pop goto 0x000494
0x000380:
    self.conversation = 3s
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):ltsprite
    stog.sprite_index* = (int32 self.sans)
    self.xxblcon = (instance_create[]:int32 (var 1337s) (- (int32 self.papyrus):y 12s) (+ (int32 self.papyrus):x 3s))
    stog.alarm[0s] = 45s
    if !(== self.murder 1s) goto 0x000494
0x000454:
    stog.alarm[0s] = -1s
    stog.alarm[3s] = 45s
    self.x = 400s
    self.conversation = 49s
0x000494:
    if !(== self.conversation 4s) goto 0x000694
0x0004A8:
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    global.interact = 1s
    stog.msg[0s] = "OH-HO^1!&THE HUMAN&ARRIVES!/"
    if !(> self.M1 1s) goto 0x000528
0x000510:
    stog.msg[0s] = "OH-HO^1!&SPEAK OF THE DEVIL!/"
0x000528:
    stog.msg[1s] = "IN ORDER TO&STOP YOU^1.../"
    stog.msg[2s] = "MY BROTHER AND&I HAVE CREATED&SOME PUZZLES!/"
    stog.msg[3s] = "I THINK YOU&WILL FIND&THIS ONE.../"
    stog.msg[4s] = "\\E2QUITE&SHOCKING!!!/"
    stog.msg[5s] = "\\E0FOR YOU SEE^1,&THIS IS THE&INVISIBLE.../"
    stog.msg[6s] = "ELECTRICITY&MAZE!!!/"
    stog.msg[7s] = "WHEN YOU TOUCH&THE WALLS OF&THIS MAZE,/"
    stog.msg[8s] = "THIS ORB WILL&ADMINISTER A&HEARTY ZAP!/"
    stog.msg[9s] = "\\E2SOUND LIKE&FUN???/"
    stog.msg[10s] = "BECAUSE!/"
    stog.msg[11s] = "THE AMOUNT OF&FUN YOU WILL&PROBABLY HAVE,/"
    stog.msg[12s] = "\\E3IS ACTUALLY&RATHER SMALL&I THINK./"
    stog.msg[13s] = "\\E0OK^1, YOU CAN&GO AHEAD NOW./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 6s
0x000694:
    if !(== self.conversation 6s) goto 0x0006C0
0x0006A8:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0006C4
0x0006C0:
    push 0s
0x0006C4:
    if !pop goto 0x0006F4
0x0006C8:
    if !(> 782.stringno 7s) goto 0x0006F4
0x0006DC:
    push 1317s
    stog.sprite_index* = (int32 self.papyrus)
0x0006F4:
    if !(== self.conversation 6s) goto 0x000724
0x000708:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000728
0x000724:
    push 0s
0x000728:
    if !pop goto 0x0007FC
0x00072C:
    call (instance_create[]:int32 (var 1007s) (var 0s) (var 10s))
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):ltsprite
    stog.sprite_index* = (int32 self.sans)
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    self.conversation = 7s
    self.x = (+ self.x 20s)
    global.interact = 0s
    self.solid = 0s
0x0007FC:
    if !(== self.conversation 8s) goto 0x00082C
0x000810:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000830
0x00082C:
    push 0s
0x000830:
    if !pop goto 0x0008C4
0x000834:
    global.interact = 1s
    self.conversation = 9s
    push 1s
    stog.fun* = (int32 self.papyrus)
    call (snd_play[]:int32 (var 24s))
    push 1339s
    stog.sprite_index* = (int32 self.papyrus)
    push 0.5d
    stog.image_speed* = (int32 self.papyrus)
    stog.alarm[1s] = 30s
0x0008C4:
    if !(== self.conversation 9s) goto 0x000990
0x0008D8:
    self.ggg = (floor[]:int32 (- (random[]:int32 (var 6s)) 2s))
    push (+ (int32 self.papyrus):xstart self.ggg)
    stog.x* = (int32 self.papyrus)
    self.ggg = (floor[]:int32 (- (random[]:int32 (var 6s)) 2s))
    push (+ (int32 self.papyrus):ystart self.ggg)
    stog.y* = (int32 self.papyrus)
0x000990:
    if !(== self.conversation 10s) goto 0x000A4C
0x0009A4:
    push (int32 self.papyrus):xstart
    stog.x* = (int32 self.papyrus)
    push (int32 self.papyrus):ystart
    stog.y* = (int32 self.papyrus)
    push 1319s
    stog.sprite_index* = (int32 self.papyrus)
    push 0.2d
    stog.image_speed* = (int32 self.papyrus)
    stog.alarm[1s] = 60s
    self.conversation = 11s
0x000A4C:
    if !(== self.conversation 12s) goto 0x000B24
0x000A60:
    push (int32 self.sans):dtsprite
    stog.sprite_index* = (int32 self.sans)
    push 1308s
    stog.sprite_index* = (int32 self.papyrus)
    push 0.33334d
    stog.image_speed* = (int32 self.papyrus)
    global.faceemotion = 1s
    global.msc = 0s
    stog.msg[0s] = "SANS!!^1!&WHAT DID YOU&DO?!?!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 13s
0x000B24:
    if !(== self.conversation 13s) goto 0x000B54
0x000B38:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000B58
0x000B54:
    push 0s
0x000B58:
    if !pop goto 0x000C24
0x000B5C:
    push 0s
    stog.fun* = (int32 self.papyrus)
    push (int32 self.papyrus):utsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0s
    stog.image_speed* = (int32 self.papyrus)
    global.faceemotion = 1s
    global.facechoice = 3s
    global.typer = 17s
    stog.msg[0s] = "* i think the human&  has to hold the orb./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 14s
0x000C24:
    if !(== self.conversation 14s) goto 0x000C54
0x000C38:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C58
0x000C54:
    push 0s
0x000C58:
    if !pop goto 0x000D0C
0x000C5C:
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0s
    stog.image_speed* = (int32 self.papyrus)
    global.faceemotion = 0s
    global.facechoice = 4s
    global.typer = 19s
    stog.msg[0s] = "OH^1, OKAY./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 15s
0x000D0C:
    if !(== self.conversation 15s) goto 0x000D3C
0x000D20:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D40
0x000D3C:
    push 0s
0x000D40:
    if !pop goto 0x000E14
0x000D44:
    push (int32 self.sans):ltsprite
    stog.sprite_index* = (int32 self.sans)
    push 1s
    stog.npcdir* = (int32 self.papyrus)
    push 0s
    stog.image_index* = (int32 self.papyrus)
    push 0.2d
    stog.image_speed* = (int32 self.papyrus)
    self.crunchybunchy = 0s
    pushenv (int32 self.papyrus) 0x000E04
0x000DD8:
    call (path_start[]:int32 (var 0s) (var 0s) (var 2s) (var 31s))
0x000E04:
    popenv 0x000DD8
0x000E08:
    self.conversation = 16s
0x000E14:
    if !(== self.conversation 16s) goto 0x000E40
0x000E28:
    push (bool (instance_exists[]:int32 (var 1032s)))
    goto 0x000E44
0x000E40:
    push 0s
0x000E44:
    if !pop goto 0x000F5C
0x000E48:
    self.stepmake = 0s
    self.crunchybunchy = (+ self.crunchybunchy 0.5d)
    if !(== self.crunchybunchy 1s) goto 0x000E94
0x000E88:
    self.stepmake = 1s
0x000E94:
    if !(== self.crunchybunchy 3s) goto 0x000EB4
0x000EA8:
    self.stepmake = 1s
0x000EB4:
    if !(== self.crunchybunchy 4s) goto 0x000ED4
0x000EC8:
    self.crunchybunchy = 0s
0x000ED4:
    if !(== self.stepmake 1s) goto 0x000F5C
0x000EE8:
    if !(< (int32 self.papyrus):x (- (int32 self.papyrus):xstart 10s)) goto 0x000F5C
0x000F20:
    call (instance_create[]:int32 (var 1006s) (int32 self.papyrus):y (int32 self.papyrus):x)
0x000F5C:
    if !(== self.conversation 16s) goto 0x000F88
0x000F70:
    push (bool (instance_exists[]:int32 (var 1032s)))
    goto 0x000F8C
0x000F88:
    push 0s
0x000F8C:
    if !pop goto 0x001034
0x000F90:
    if !(== (int32 self.papyrus):path_position 1s) goto 0x001034
0x000FB0:
    push 0s
    stog.npcdir* = (int32 self.papyrus)
    push 1317s
    stog.sprite_index* = (int32 self.papyrus)
    stog.msg[0s] = "HOLD THIS PLEASE!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 16.5d
0x001034:
    if !(== self.conversation 16.5d) goto 0x00106C
0x001050:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001070
0x00106C:
    push 0s
0x001070:
    if !pop goto 0x0010F8
0x001074:
    stog.alarm[1s] = 30s
    push 1318s
    stog.sprite_index* = (int32 self.papyrus)
    call (instance_create[]:int32 (var 995s) (+ (int32 self.papyrus):y 1s) (+ (int32 self.papyrus):x 1s))
    self.conversation = 17s
0x0010F8:
    if !(== self.conversation 18s) goto 0x001190
0x00110C:
    push 1s
    stog.npcdir* = (int32 self.papyrus)
    push 0.2d
    stog.image_speed* = (int32 self.papyrus)
    pushenv (int32 self.papyrus) 0x001180
0x001154:
    call (path_start[]:int32 (var 0s) (var 0s) (var 5s) (var 32s))
0x001180:
    popenv 0x001154
0x001184:
    self.conversation = 19s
0x001190:
    if !(== self.conversation 19s) goto 0x0011BC
0x0011A4:
    push (bool (instance_exists[]:int32 (var 1032s)))
    goto 0x0011C0
0x0011BC:
    push 0s
0x0011C0:
    if !pop goto 0x0012CC
0x0011C4:
    if !(== (int32 self.papyrus):path_position 1s) goto 0x0012CC
0x0011E4:
    push 0s
    stog.npcdir* = (int32 self.papyrus)
    stog.alarm[1s] = 30s
    self.conversation = 20s
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0s
    stog.image_speed* = (int32 self.papyrus)
    global.faceemotion = 0s
    global.facechoice = 4s
    global.typer = 19s
    stog.msg[0s] = "OKAY^1, TRY NOW!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 20s
0x0012CC:
    if !(== self.conversation 20s) goto 0x0012FC
0x0012E0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001300
0x0012FC:
    push 0s
0x001300:
    if !pop goto 0x001328
0x001304:
    self.x = 248s
    global.interact = 0s
    self.conversation = 21s
0x001328:
    if !(== self.conversation 22s) goto 0x0014BC
0x00133C:
    global.interact = 1s
    global.msc = 0s
    push (int32 self.papyrus):dtsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):dtsprite
    stog.sprite_index* = (int32 self.sans)
    global.faceemotion = 0s
    global.facechoice = 4s
    global.typer = 19s
    stog.msg[0s] = "\\E1INCREDIBLE!!&YOU SLIPPERY&SNAIL!!/"
    stog.msg[1s] = "\\E3YOU SOLVED IT&SO EASILY..^1.&TOO EASILY!/"
    stog.msg[2s] = "\\E0HOWEVER!!/"
    stog.msg[3s] = "THE NEXT&PUZZLE WILL&NOT BE EASY!/"
    stog.msg[4s] = "IT IS DESIGNED&BY MY BROTHER^1,&SANS!/"
    stog.msg[5s] = "YOU WILL&SURELY BE&CONFOUNDED!/"
    stog.msg[6s] = "I KNOW I AM!/"
    stog.msg[7s] = "NYEH HEH HEH&HEH HEH!!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 23s
0x0014BC:
    if !(== self.conversation 23s) goto 0x0014DC
0x0014D0:
    global.interact = 1s
0x0014DC:
    if !(== self.conversation 23s) goto 0x00150C
0x0014F0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001510
0x00150C:
    push 0s
0x001510:
    if !pop goto 0x001624
0x001514:
    if !(bool (instance_exists[]:int32 (var 995s))) goto 0x001544
0x00152C:
    pushenv 995s 0x001540
0x001534:
    call (instance_destroy[]:int32 )
0x001540:
    popenv 0x001534
0x001544:
    pushenv 994s 0x001558
0x00154C:
    call (instance_destroy[]:int32 )
0x001558:
    popenv 0x00154C
0x00155C:
    push 5s
    stog.hspeed* = (int32 self.papyrus)
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0.2d
    stog.image_speed* = (int32 self.papyrus)
    self.hhh = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.05d
    stog.fadespeed* = (int32 self.hhh)
    stog.alarm[1s] = 30s
    self.conversation = 24s
0x001624:
    if !(== self.conversation 25s) goto 0x001788
0x001638:
    global.currentsong = (caster_load[]:int32 (var "music/snowy.ogg"))
    call (caster_loop[]:int32 (var 0.95d) (var 1s) global.currentsong)
    if !(== self.murder 1s) goto 0x0016B8
0x001694:
    call (caster_set_pitch[]:int32 (var 0.5d) global.currentsong)
0x0016B8:
    global.plot = 43s
    global.interact = 0s
    if !(bool (instance_exists[]:int32 (var 1007s))) goto 0x001700
0x0016E8:
    pushenv 1007s 0x0016FC
0x0016F0:
    call (instance_destroy[]:int32 )
0x0016FC:
    popenv 0x0016F0
0x001700:
    call (instance_create[]:int32 (var 1022s) (int32 self.sans):y (int32 self.sans):x)
    pushenv (int32 self.sans) 0x001758
0x00174C:
    call (instance_destroy[]:int32 )
0x001758:
    popenv 0x00174C
0x00175C:
    pushenv (int32 self.papyrus) 0x001778
0x00176C:
    call (instance_destroy[]:int32 )
0x001778:
    popenv 0x00176C
0x00177C:
    call (instance_destroy[]:int32 )
0x001788:
    if !(== self.conversation 50s) goto 0x0018FC
0x00179C:
    self.mc = (scr_marker[]:int32 (var 1045s) 1570.y 1570.x)
    pushenv 1570s 0x0017D8
0x0017CC:
    self.visible = 0s
0x0017D8:
    popenv 0x0017CC
0x0017DC:
    pushenv (int32 self.mc) 0x0017F8
0x0017EC:
    call (scr_depth[]:int32 )
0x0017F8:
    popenv 0x0017EC
0x0017FC:
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    global.interact = 1s
    stog.msg[0s] = "OH-HO^1!&THE HUMAN&ARRIVES!/"
    stog.msg[1s] = "IN ORDER TO&STOP YOU^1.../"
    stog.msg[2s] = "MY BROTHER AND&I HAVE CREATED&SOME PUZZLES!/"
    stog.msg[3s] = "I THINK YOU&WILL FIND&THIS ONE.../"
    stog.msg[4s] = "\\E2QUITE&SHOCKING!!!/"
    stog.msg[5s] = "\\E5FOR YOU SEE^1,&THIS IS..^1.&THE^1, INVISIBLE.../%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 51s
0x0018FC:
    if !(== self.conversation 51s) goto 0x00192C
0x001910:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x001930
0x00192C:
    push 0s
0x001930:
    if !pop goto 0x001A00
0x001934:
    if !(== 782.stringno 4s) goto 0x001980
0x001948:
    push 3s
    stog.hspeed* = (int32 self.mc)
    push 0.25d
    stog.image_speed* = (int32 self.mc)
0x001980:
    if !(>= (int32 self.mc):x 158s) goto 0x001A00
0x0019A0:
    push 160s
    stog.x* = (int32 self.mc)
    push 0s
    stog.hspeed* = (int32 self.mc)
    push 0s
    stog.image_index* = (int32 self.mc)
    push 0s
    stog.image_speed* = (int32 self.mc)
0x001A00:
    if !(== self.conversation 51s) goto 0x001A30
0x001A14:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001A34
0x001A30:
    push 0s
0x001A34:
    if !pop goto 0x001AD8
0x001A38:
    if !(>= (int32 self.mc):x 158s) goto 0x001AD8
0x001A58:
    push 160s
    stog.x* = (int32 self.mc)
    push 0s
    stog.hspeed* = (int32 self.mc)
    push 0s
    stog.image_index* = (int32 self.mc)
    push 0s
    stog.image_speed* = (int32 self.mc)
    self.conversation = 52s
    stog.alarm[3s] = 50s
0x001AD8:
    if !(== self.conversation 53s) goto 0x001BE8
0x001AEC:
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 3s
    global.interact = 1s
    stog.msg[0s] = "\\E5UHHHHHHH...?/"
    stog.msg[1s] = "\\E3HMMM..^1. YOU MUST&BE HAVING&CULTURE SHOCK./"
    stog.msg[2s] = "\\E0YOU SEE^1, WHERE I&COME FROM^1, IT'S&A LOVING TRADITION./"
    stog.msg[3s] = "TO SUFFER THROUGH&HORRIBLE PUZZLES&FOR NO REASON./"
    stog.msg[4s] = "\\E5SO^1, UH^1, JUST&WALK BACK THERE^1,&AND.../"
    stog.msg[5s] = ".../%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 54s
0x001BE8:
    if !(== self.conversation 54s) goto 0x001C18
0x001BFC:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x001C1C
0x001C18:
    push 0s
0x001C1C:
    if !pop goto 0x001CEC
0x001C20:
    if !(== 782.stringno 4s) goto 0x001C6C
0x001C34:
    push 3s
    stog.hspeed* = (int32 self.mc)
    push 0.25d
    stog.image_speed* = (int32 self.mc)
0x001C6C:
    if !(>= (int32 self.mc):x 218s) goto 0x001CEC
0x001C8C:
    push 220s
    stog.x* = (int32 self.mc)
    push 0s
    stog.hspeed* = (int32 self.mc)
    push 0s
    stog.image_index* = (int32 self.mc)
    push 0s
    stog.image_speed* = (int32 self.mc)
0x001CEC:
    if !(== self.conversation 54s) goto 0x001D1C
0x001D00:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001D20
0x001D1C:
    push 0s
0x001D20:
    if !pop goto 0x001DC4
0x001D24:
    if !(>= (int32 self.mc):x 218s) goto 0x001DC4
0x001D44:
    push 220s
    stog.x* = (int32 self.mc)
    push 0s
    stog.hspeed* = (int32 self.mc)
    push 0s
    stog.image_index* = (int32 self.mc)
    push 0s
    stog.image_speed* = (int32 self.mc)
    self.conversation = 55s
    stog.alarm[3s] = 50s
0x001DC4:
    if !(== self.conversation 56s) goto 0x001EDC
0x001DD8:
    stog.flag[291s] = 1s
    global.interact = 1s
    global.msc = 0s
    push (int32 self.papyrus):dtsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):dtsprite
    stog.sprite_index* = (int32 self.sans)
    global.faceemotion = 0s
    global.facechoice = 4s
    global.typer = 19s
    stog.msg[0s] = "\\E3SIGH.../"
    stog.msg[1s] = "\\E3WHY COULDN'T WE GET&A HUMAN THAT LIKES&PUZZLES???/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 57s
0x001EDC:
    if !(== self.conversation 57s) goto 0x001F0C
0x001EF0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001F10
0x001F0C:
    push 0s
0x001F10:
    if !pop goto 0x002024
0x001F14:
    if !(bool (instance_exists[]:int32 (var 995s))) goto 0x001F44
0x001F2C:
    pushenv 995s 0x001F40
0x001F34:
    call (instance_destroy[]:int32 )
0x001F40:
    popenv 0x001F34
0x001F44:
    pushenv 994s 0x001F58
0x001F4C:
    call (instance_destroy[]:int32 )
0x001F58:
    popenv 0x001F4C
0x001F5C:
    push 5s
    stog.hspeed* = (int32 self.papyrus)
    push (int32 self.papyrus):rsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0.2d
    stog.image_speed* = (int32 self.papyrus)
    self.hhh = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.05d
    stog.fadespeed* = (int32 self.hhh)
    stog.alarm[3s] = 30s
    self.conversation = 58s
0x002024:
    if !(== self.conversation 59s) goto 0x0021F8
0x002038:
    [obj_mainchara].x = (int32 self.mc):x
    [obj_mainchara].y = (int32 self.mc):y
    global.facing = 0s
    pushenv (int32 self.mc) 0x002098
0x00208C:
    call (instance_destroy[]:int32 )
0x002098:
    popenv 0x00208C
0x00209C:
    [obj_mainchara].visible = 1s
    global.currentsong = (caster_load[]:int32 (var "music/snowy.ogg"))
    call (caster_loop[]:int32 (var 0.95d) (var 1s) global.currentsong)
    if !(== self.murder 1s) goto 0x002128
0x002104:
    call (caster_set_pitch[]:int32 (var 0.5d) global.currentsong)
0x002128:
    global.plot = 43s
    global.interact = 0s
    if !(bool (instance_exists[]:int32 (var 1007s))) goto 0x002170
0x002158:
    pushenv 1007s 0x00216C
0x002160:
    call (instance_destroy[]:int32 )
0x00216C:
    popenv 0x002160
0x002170:
    call (instance_create[]:int32 (var 1022s) (int32 self.sans):y (int32 self.sans):x)
    pushenv (int32 self.sans) 0x0021C8
0x0021BC:
    call (instance_destroy[]:int32 )
0x0021C8:
    popenv 0x0021BC
0x0021CC:
    pushenv (int32 self.papyrus) 0x0021E8
0x0021DC:
    call (instance_destroy[]:int32 )
0x0021E8:
    popenv 0x0021DC
0x0021EC:
    call (instance_destroy[]:int32 )
0x0021F8:
    exit
