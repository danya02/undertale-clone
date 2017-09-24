0x000000:
    if !(== self.conversation 1s) goto 0x000180
0x000014:
    self.fade = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.5d
    stog.fadespeed* = (int32 self.fade)
    global.currentsong = (caster_load[]:int32 (var "music/papyrus.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.6d) global.currentsong)
    self.myinteract = 3s
    global.msc = 0s
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 1s
    global.interact = 1s
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):ltsprite
    stog.sprite_index* = (int32 self.sans)
    [obj_mainchara].cutscene = 1s
    push -1s
    self.camera = 0s:view_xview
    self.conversation = 1.5d
0x000180:
    if !(== self.conversation 1.5d) goto 0x0001F8
0x00019C:
    push -1s
    if !(< 0s:view_xview (+ self.camera 119s)) goto 0x0001EC
0x0001C4:
    push -1s
    stog.view_xview[(+ 0s:view_xview 3s)] = 0s
    goto 0x0001F8
0x0001EC:
    self.conversation = 2s
0x0001F8:
    if !(== self.conversation 2s) goto 0x000228
0x00020C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00022C
0x000228:
    push 0s
0x00022C:
    if !pop goto 0x0002B4
0x000230:
    self.conversation = 3s
    self.xxblcon = (instance_create[]:int32 (var 1337s) (- (int32 self.papyrus):y 12s) (+ (int32 self.papyrus):x 3s))
    stog.alarm[0s] = 30s
    stog.alarm[4s] = 40s
0x0002B4:
    if !(== self.conversation 4s) goto 0x000380
0x0002C8:
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 4s
    global.interact = 1s
    stog.msg[0s] = "HUMAN!/"
    stog.msg[1s] = "THIS IS YOUR FINAL&AND MOST DANGEROUS&CHALLENGE!/"
    stog.msg[2s] = "BEHOLD^1!&THE GAUNTLET OF&DEADLY TERROR!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 6s
0x000380:
    if !(== self.conversation 6s) goto 0x0003B0
0x000394:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003B4
0x0003B0:
    push 0s
0x0003B4:
    if !pop goto 0x000618
0x0003B8:
    self.dtrapa = (instance_create[]:int32 (var 952s) self.y (+ self.x 20s))
    self.dcannon = (scr_marker[]:int32 (var 1196s) (var 240s) (+ self.x 170s))
    push -0.7d
    stog.vspeed* = (int32 self.dcannon)
    pushenv (int32 self.dcannon) 0x000454
0x000448:
    self.depth = 4000s
0x000454:
    popenv 0x000448
0x000458:
    self.dspear1 = (scr_marker[]:int32 (var 1194s) (var 310s) (+ self.x 100s))
    push -1s
    stog.image_yscale* = (int32 self.dspear1)
    push -0.9d
    stog.vspeed* = (int32 self.dspear1)
    pushenv (int32 self.dspear1) 0x0004DC
0x0004D0:
    self.depth = 4000s
0x0004DC:
    popenv 0x0004D0
0x0004E0:
    self.dspear2 = (scr_marker[]:int32 (var 1194s) (var -60s) (+ self.x 100s))
    push 0.9d
    stog.vspeed* = (int32 self.dspear2)
    self.dspike = (scr_marker[]:int32 (var 1197s) (var -100s) (+ self.x 20s))
    push 1.2d
    stog.vspeed* = (int32 self.dspike)
    self.ddog = (scr_marker[]:int32 (var 1195s) (var -90s) (+ self.x 170s))
    push 1.2d
    stog.vspeed* = (int32 self.ddog)
    push 0.1d
    stog.image_speed* = (int32 self.ddog)
    self.conversation = 6.1d
    stog.alarm[4s] = 60s
0x000618:
    if !(== self.conversation 7.1d) goto 0x000660
0x000634:
    [obj_npc_marker].vspeed = 0s
    self.conversation = 7s
    stog.alarm[4s] = 30s
0x000660:
    if !(== self.conversation 8s) goto 0x000798
0x000674:
    stog.msg[0s] = "WHEN I SAY THE&WORD^1, IT WILL&FULLY ACTIVATE!!!/"
    stog.msg[1s] = "CANNONS WILL FIRE^1!&SPIKES WILL SWING^1!&BLADES WILL SLICE^1!/"
    stog.msg[2s] = "EACH PART WILL&SWING VIOLENTLY&UP AND DOWN!/"
    stog.msg[3s] = "ONLY THE TINIEST&CHANCE OF VICTORY&WILL REMAIN!!!/"
    stog.msg[4s] = "ARE YOU READY!?/"
    stog.msg[5s] = "BECAUSE!/"
    stog.msg[6s] = "I!/"
    stog.msg[7s] = "AM!/"
    stog.msg[8s] = "ABOUT!/"
    stog.msg[9s] = "TO DO IT!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 9s
0x000798:
    if !(== self.conversation 9s) goto 0x0007C8
0x0007AC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0007CC
0x0007C8:
    push 0s
0x0007CC:
    if !pop goto 0x0007F0
0x0007D0:
    stog.alarm[4s] = 120s
    self.conversation = 10s
0x0007F0:
    if !(== self.conversation 11s) goto 0x000928
0x000804:
    push (int32 self.papyrus):rtsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):dtsprite
    stog.sprite_index* = (int32 self.sans)
    global.typer = 17s
    global.facechoice = 3s
    global.faceemotion = 1s
    stog.msg[0s] = " %"
    stog.msg[1s] = "* well^1?&* what's the holdup?/"
    call (scr_papface[]:int32 (var 1s) (var 2s))
    stog.msg[3s] = "HOLDUP!^1?&WHAT HOLDUP!?/"
    stog.msg[4s] = "I'M..^1.&I'M ABOUT TO&ACTIVATE IT NOW!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 12s
0x000928:
    if !(== self.conversation 12s) goto 0x000958
0x00093C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00095C
0x000958:
    push 0s
0x00095C:
    if !pop goto 0x0009D0
0x000960:
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):ltsprite
    stog.sprite_index* = (int32 self.sans)
    self.conversation = 13s
    stog.alarm[4s] = 120s
0x0009D0:
    if !(== self.conversation 14s) goto 0x000E2C
0x0009E4:
    global.typer = 17s
    global.facechoice = 3s
    global.faceemotion = 1s
    stog.msg[0s] = " %"
    stog.msg[1s] = "* that^1, uh^1, doesn't look&  very activated./"
    call (scr_papface[]:int32 (var 1s) (var 2s))
    stog.msg[3s] = "WELL!!!/"
    stog.msg[4s] = "THIS CHALLENGE!!!/"
    stog.msg[5s] = "\\E3IT SEEMS.../"
    stog.msg[6s] = "MAYBE..^1. TOO EASY&TO DEFEAT THE&HUMAN WITH./"
    stog.msg[7s] = "\\E1YEAH^1!&WE CAN'T USE&THIS ONE!!!/"
    stog.msg[8s] = "I AM A SKELETON&WITH STANDARDS!!!/"
    stog.msg[9s] = "MY PUZZLES ARE&VERY FAIR!/"
    stog.msg[10s] = "AND MY TRAPS ARE&EXPERTLY COOKED!/"
    stog.msg[11s] = "BUT THIS METHOD&IS TOO DIRECT^1!&NO CLASS AT ALL!/"
    stog.msg[12s] = "\\E0AWAY IT GOES!/%%"
    if !(== self.murder 1s) goto 0x000DF8
0x000B58:
    stog.msg[3s] = "WELL!!!/"
    stog.msg[4s] = "\\E3... THEY'RE PROBABLY&GOING TO WALK&THROUGH IT./"
    stog.msg[5s] = "AND IT WON'T BE&ANY FUN AT ALL./"
    call (scr_sansface[]:int32 (var 0s) (var 6s))
    stog.msg[7s] = "* hmmm...&* so this human thing&  was a bust^1, huh?/"
    call (scr_papface[]:int32 (var 3s) (var 8s))
    stog.msg[9s] = "WELL^1. I MEAN^1.&I'M EXCITED TO&CAPTURE THEM./"
    stog.msg[10s] = "\\E0SO I'LL BECOME&A FAMOUS ROYAL&GUARDSMAN!!!/"
    stog.msg[11s] = "\\E3BUT ALL THE TIME&I PUT INTO THESE&PUZZLES.../"
    stog.msg[12s] = "IT'S KIND OF LIKE&THROWING A&BIRTHDAY PARTY.../"
    call (scr_sansface[]:int32 (var 2s) (var 13s))
    stog.msg[14s] = "* without traps and fire?/"
    call (scr_papface[]:int32 (var 4s) (var 15s))
    stog.msg[16s] = "EXACTLY!^1!&IT'S POINTLESS!!!/"
    stog.msg[17s] = "\\E3MAYBE YOU WERE&RIGHT TO BE LAZY&ABOUT PUZZLES./"
    call (scr_sansface[]:int32 (var 1s) (var 18s))
    stog.msg[19s] = "* me^1?&* right about something^1?&* really?/"
    call (scr_papface[]:int32 (var 3s) (var 20s))
    stog.msg[21s] = ".../"
    stog.msg[22s] = "\\E0YEAH!^1!&WHAT AM I SAYING!/"
    stog.msg[23s] = "YOU'RE STILL&COMPLETELY WRONG!/"
    stog.msg[24s] = "I JUST HAVE THE&WRONG AUDIENCE!/"
    stog.msg[25s] = "THINK ABOUT HOW&MUCH FUN UNDYNE&WOULD HAVE HERE!/"
    stog.msg[26s] = "FLAMES^1, VIOLENCE^1.&IT'S RIGHT UP HER&ALLEY!/"
    stog.msg[27s] = "SO I WON'T WASTE&THIS PUZZLE ON&YOU./"
    stog.msg[28s] = "I JUST HAVE TO&APPRECIATE.../"
    stog.msg[29s] = "THE FRIEND I&ALREADY HAVE!!!/%%"
0x000DF8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 15s
0x000E2C:
    if !(== self.conversation 15s) goto 0x000E5C
0x000E40:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E60
0x000E5C:
    push 0s
0x000E60:
    if !pop goto 0x000F20
0x000E64:
    push 1s
    push (int32 self.dtrapa)
    stog.alarm[] = 1s
    stog.alarm[4s] = 60s
    self.conversation = 15.5d
    push 2s
    stog.vspeed* = (int32 self.dcannon)
    push 2s
    stog.vspeed* = (int32 self.dspear1)
    push -2s
    stog.vspeed* = (int32 self.dspear2)
    push -2s
    stog.vspeed* = (int32 self.dspike)
    push -2s
    stog.vspeed* = (int32 self.ddog)
0x000F20:
    if !(== self.conversation 16.5d) goto 0x001064
0x000F3C:
    pushenv (int32 self.dcannon) 0x000F58
0x000F4C:
    call (instance_destroy[]:int32 )
0x000F58:
    popenv 0x000F4C
0x000F5C:
    pushenv (int32 self.dspear1) 0x000F78
0x000F6C:
    call (instance_destroy[]:int32 )
0x000F78:
    popenv 0x000F6C
0x000F7C:
    pushenv (int32 self.dspear2) 0x000F98
0x000F8C:
    call (instance_destroy[]:int32 )
0x000F98:
    popenv 0x000F8C
0x000F9C:
    pushenv (int32 self.dspike) 0x000FB8
0x000FAC:
    call (instance_destroy[]:int32 )
0x000FB8:
    popenv 0x000FAC
0x000FBC:
    pushenv (int32 self.ddog) 0x000FD8
0x000FCC:
    call (instance_destroy[]:int32 )
0x000FD8:
    popenv 0x000FCC
0x000FDC:
    global.faceemotion = 3s
    push (int32 self.papyrus):rtsprite
    stog.sprite_index* = (int32 self.papyrus)
    stog.msg[0s] = "PHEW!/%%"
    self.conversation = 15.7d
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x001064:
    if !(== self.conversation 15.7d) goto 0x00109C
0x001080:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0010A0
0x00109C:
    push 0s
0x0010A0:
    if !pop goto 0x001128
0x0010A4:
    self.xxblcon = (instance_create[]:int32 (var 1337s) (- (int32 self.papyrus):y 12s) (+ (int32 self.papyrus):x 3s))
    stog.alarm[0s] = 30s
    self.conversation = 16s
    stog.alarm[4s] = 40s
0x001128:
    if !(== self.conversation 17s) goto 0x001274
0x00113C:
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    global.faceemotion = 1s
    stog.msg[0s] = "WHAT ARE YOU&LOOKING AT!?/"
    stog.msg[1s] = "THIS WAS ANOTHER&DECISIVE VICTORY&FOR PAPYRUS!!/"
    stog.msg[2s] = "NYEH!!/"
    stog.msg[3s] = "HEH!!/"
    stog.msg[4s] = ".../"
    stog.msg[5s] = "\\E3HEH???/%%"
    if !(== self.murder 1s) goto 0x001244
0x001214:
    stog.msg[0s] = "A VALUABLE LIFE&LESSON!!!/"
    stog.msg[1s] = "NYEH HEH HEH!!!/%%"
0x001244:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 18s
0x001274:
    if !(== self.conversation 18s) goto 0x0012A4
0x001288:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0012A8
0x0012A4:
    push 0s
0x0012A8:
    if !pop goto 0x001320
0x0012AC:
    self.conversation = 19s
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 1s
    stog.npcdir* = (int32 self.papyrus)
    push 4s
    stog.hspeed* = (int32 self.papyrus)
    stog.alarm[4s] = 30s
0x001320:
    if !(== self.conversation 20s) goto 0x001388
0x001334:
    push -1s
    if !(> 0s:view_xview self.camera) goto 0x00137C
0x001354:
    push -1s
    stog.view_xview[(- 0s:view_xview 3s)] = 0s
    goto 0x001388
0x00137C:
    self.conversation = 21s
0x001388:
    if !(== self.conversation 21s) goto 0x0014B8
0x00139C:
    self.flowey = (instance_create[]:int32 (var 1339s) (var 120s) (var 80s))
    [obj_mainchara].cutscene = 0s
    global.currentsong = (caster_load[]:int32 (var "music/snowy.ogg"))
    call (caster_loop[]:int32 (var 0.95d) (var 1s) global.currentsong)
    global.plot = 67s
    global.interact = 0s
    call (instance_create[]:int32 (var 1022s) (int32 self.sans):y (int32 self.sans):x)
    pushenv (int32 self.sans) 0x001488
0x00147C:
    call (instance_destroy[]:int32 )
0x001488:
    popenv 0x00147C
0x00148C:
    pushenv (int32 self.papyrus) 0x0014A8
0x00149C:
    call (instance_destroy[]:int32 )
0x0014A8:
    popenv 0x00149C
0x0014AC:
    call (instance_destroy[]:int32 )
0x0014B8:
    exit
