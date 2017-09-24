0x000000:
    if !(== self.con 1s) goto 0x00007C
0x000014:
    global.phasing = 1s
    stog.flag[17s] = 1s
    global.interact = 1s
    [obj_mainchara].x = 140s
    [obj_mainchara].y = -20s
    [obj_mainchara].vspeed = 3s
    self.con = 2s
    self.turntimer = 0s
0x00007C:
    if !(== self.con 2s) goto 0x000180
0x000090:
    self.turntimer = (+ self.turntimer 1s)
    if !(> self.turntimer 15s) goto 0x000100
0x0000BC:
    self.turntimer = 0s
    global.facing = (+ global.facing 1s)
    if !(> global.facing 3s) goto 0x000100
0x0000F4:
    global.facing = 0s
0x000100:
    if !(> 1570.y 100s) goto 0x000180
0x000114:
    self.con = 3s
    [obj_mainchara].vspeed = 0s
    stog.alarm[4s] = 23s
    self.mett = (instance_create[]:int32 (var 1206s) (var -20s) (var 140s))
    push 3s
    stog.vspeed* = (int32 self.mett)
0x000180:
    if !(== self.con 4s) goto 0x0001CC
0x000194:
    push 0s
    stog.vspeed* = (int32 self.mett)
    self.con = 5s
    stog.alarm[4s] = 20s
0x0001CC:
    if !(== self.con 6s) goto 0x000298
0x0001E0:
    global.msc = 0s
    global.typer = 27s
    global.facechoice = 0s
    stog.msg[0s] = "* OH NO!&* WHATEVER SHALL I DO?/"
    stog.msg[1s] = "* MY LOVE HAS BEEN CAST AWAY&  INTO THE DUNGEON./"
    stog.msg[2s] = "* A DUNGEON WITH A PUZZLE SO&  DASTARDLY^1, MY PARAMOUR WILL&  SURELY PERISH!/%%"
    self.dia = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.dia)
    self.con = 7s
0x000298:
    if !(== self.con 7s) goto 0x0002C8
0x0002AC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0002CC
0x0002C8:
    push 0s
0x0002CC:
    if !pop goto 0x000364
0x0002D0:
    stog.view_object[0s] = -4s
    [obj_mainchara].cutscene = 1s
    push -1s
    stog.view_xview[(+ 0s:view_xview 5s)] = 0s
    push -1s
    if !(>= 0s:view_xview 96s) goto 0x000364
0x000330:
    stog.view_xview[0s] = 100s
    self.con = 8s
    stog.alarm[4s] = 15s
0x000364:
    if !(== self.con 9s) goto 0x000450
0x000378:
    stog.msg[0s] = "* O, HEAVENS HAVE MERCY!&* THE HORRIBLE COLORED TILE&  MAZE!/"
    stog.msg[1s] = "* EACH COLORED TILE HAS ITS&  OWN SADISTIC FUNCTION./"
    stog.msg[2s] = "* FOR EXAMPLE, A GREEN TILE&  SOUNDS A NOISE, AND THEN&  YOU MUST FIGHT A MONSTER./"
    stog.msg[3s] = "* RED TILES WILL...&* ACTUALLY, WAIT A SECOND./"
    stog.msg[4s] = "* DIDN'T WE SEE THIS PUZZLE&  ABOUT A HUNDRED ROOMS&  AGO?/"
    stog.msg[5s] = "* THAT'S RIGHT.&* YOU REMEMBER ALL THE&  RULES, DON'T YOU?/"
    stog.msg[6s] = "* GREAT...&* THEN I WON'T WASTE YOUR&  TIME REPEATING THEM!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 10s
0x000450:
    if !(== self.con 10s) goto 0x000480
0x000464:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000484
0x000480:
    push 0s
0x000484:
    if !pop goto 0x0004A8
0x000488:
    self.con = 11s
    stog.alarm[4s] = 40s
0x0004A8:
    if !(== self.con 12s) goto 0x00051C
0x0004BC:
    stog.msg[0s] = "* OH, AND YOU'D BETTER HURRY./"
    stog.msg[1s] = "\\W* BECAUSE IF YOU DON'T GET&  THROUGH IN \\Y30 SECONDS\\W.../%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 13s
0x00051C:
    if !(== self.con 13s) goto 0x00054C
0x000530:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000550
0x00054C:
    push 0s
0x000550:
    if !pop goto 0x0005C8
0x000554:
    push -1s
    stog.view_xview[(- 0s:view_xview 5s)] = 0s
    push -1s
    if !(<= 0s:view_xview 4s) goto 0x0005C8
0x000594:
    stog.view_xview[0s] = 0s
    self.con = 14s
    stog.alarm[4s] = 20s
0x0005C8:
    if !(== self.con 15s) goto 0x000660
0x0005DC:
    call (snd_play[]:int32 (var 106s))
    self.flame1 = (instance_create[]:int32 (var 1200s) (var 20s) (var 40s))
    self.flame2 = (instance_create[]:int32 (var 1200s) (var 20s) (var 1160s))
    self.con = 16s
    stog.alarm[4s] = 30s
0x000660:
    if !(== self.con 17s) goto 0x000704
0x000674:
    stog.msg[0s] = "* YOU'LL BE INCINERATED BY&  THESE JETS OF FIRE!!/"
    stog.msg[1s] = "* AHAHAHAHAHAHA!&* AHAHA... HA... HA!/"
    stog.msg[2s] = "* MY POOR LOVE!&* I'M SO FILLED WITH GRIEF,&  I CAN'T STOP LAUGHING!/"
    stog.msg[3s] = "* GOOD LUCK, DARLING!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 18s
0x000704:
    if !(== self.con 18s) goto 0x000734
0x000718:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000738
0x000734:
    push 0s
0x000738:
    if !pop goto 0x000828
0x00073C:
    self.racesong = (caster_load[]:int32 (var "music/operatile.ogg"))
    pushenv 1206s 0x000780
0x000760:
    self.middle = 1s
    call (event_user[]:int32 (var 1s))
0x000780:
    popenv 0x000760
0x000784:
    call (caster_play[]:int32 (var 1s) (var 1s) self.racesong)
    self.cooltimer = 900s
    call (instance_create[]:int32 (var 1209s) (var 0s) (var 0s))
    self.flavor = 0s
    global.phasing = 0s
    [obj_mainchara].cutscene = 0s
    stog.view_object[0s] = 1570s
    global.interact = 0s
    self.con = 20s
0x000828:
    if !(== self.con 20s) goto 0x0008D4
0x00083C:
    if !(== (instance_exists[]:int32 (var 1212s)) 0s) goto 0x00087C
0x000858:
    push (> 1570.x (/ self.room_width (double 2s)))
    goto 0x000880
0x00087C:
    push 0s
0x000880:
    if !pop goto 0x00089C
0x000884:
    global.interact = 1s
    self.con = 75s
0x00089C:
    self.cooltimer = (- self.cooltimer 1s)
    if !(== self.cooltimer 0s) goto 0x0008D4
0x0008C8:
    self.con = 30s
0x0008D4:
    if !(== self.con 30s) goto 0x000A7C
0x0008E8:
    pushenv 1211s 0x000908
0x0008F0:
    self.collide = 0s
    self.active = -1s
0x000908:
    popenv 0x0008F0
0x00090C:
    [obj_tileguytileparent].grey = 1s
    pushenv 1206s 0x00092C
0x000920:
    self.middle = 2s
0x00092C:
    popenv 0x000920
0x000930:
    global.facing = 2s
    [obj_mainchara].visible = 1s
    global.interact = 1s
    if !(bool (instance_exists[]:int32 (var 1212s))) goto 0x000984
0x00096C:
    pushenv 1212s 0x000980
0x000974:
    call (instance_destroy[]:int32 )
0x000980:
    popenv 0x000974
0x000984:
    push (int32 self.flame1):x
    if !(< -1s (- 0s:view_xview 20s)) goto 0x0009E4
0x0009B8:
    push -1s
    push (- 0s:view_xview 20s)
    stog.x* = (int32 self.flame1)
0x0009E4:
    push (int32 self.flame2):x
    push -1s
    if !(> 0s:view_xview (+ -1s 0s:view_wview)) goto 0x000A5C
0x000A24:
    push -1s
    push 0s:view_xview
    push (+ -1s 0s:view_wview)
    stog.x* = (int32 self.flame2)
0x000A5C:
    self.con = 31s
    stog.alarm[4s] = 60s
0x000A7C:
    if !(== self.con 31s) goto 0x000AA8
0x000A90:
    global.interact = 1s
    global.facing = 2s
0x000AA8:
    if !(== self.con 32s) goto 0x000B40
0x000ABC:
    pushenv 1209s 0x000AD0
0x000AC4:
    self.finished = 1s
0x000AD0:
    popenv 0x000AC4
0x000AD4:
    global.typer = 27s
    global.facechoice = 0s
    global.msc = 0s
    stog.msg[0s] = "* OOOOH, I'M SO SORRY!&* LOOKS LIKE YOU'RE OUT OF&  TIME!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 33s
0x000B40:
    if !(== self.con 33s) goto 0x000B70
0x000B54:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000B74
0x000B70:
    push 0s
0x000B74:
    if !pop goto 0x000B98
0x000B78:
    self.con = 34s
    stog.alarm[4s] = 40s
0x000B98:
    if !(== self.con 34s) goto 0x000C54
0x000BAC:
    if !(< (int32 self.flame1):x (- 1570.x 20s)) goto 0x000C00
0x000BD8:
    stog.x* = (+ (int32 self.flame1):x 2s)
0x000C00:
    push (int32 self.flame1)
    if !(> (int32 self.flame2):x (+ 1570.x 20s)) goto 0x000C54
0x000C2C:
    stog.x* = (- (int32 self.flame2):x 2s)
0x000C54:
    push (int32 self.flame2)
    if !(== self.con 35s) goto 0x000CB0
0x000C68:
    stog.msg[0s] = "* HERE COME THE FLAMES, DARLING!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 36s
0x000CB0:
    if !(== self.con 36s) goto 0x000CE0
0x000CC4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000CE4
0x000CE0:
    push 0s
0x000CE4:
    if !pop goto 0x000D08
0x000CE8:
    self.con = 37s
    stog.alarm[4s] = 40s
0x000D08:
    if !(== self.con 37s) goto 0x000D38
0x000D1C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D3C
0x000D38:
    push 0s
0x000D3C:
    if !pop goto 0x000DE8
0x000D40:
    if !(< (int32 self.flame1):x (- 1570.x 20s)) goto 0x000D94
0x000D6C:
    stog.x* = (+ (int32 self.flame1):x 1s)
0x000D94:
    push (int32 self.flame1)
    if !(> (int32 self.flame2):x (+ 1570.x 20s)) goto 0x000DE8
0x000DC0:
    stog.x* = (- (int32 self.flame2):x 1s)
0x000DE8:
    push (int32 self.flame2)
    if !(== self.con 38s) goto 0x000E44
0x000DFC:
    stog.msg[0s] = "* THEY'RE CLOSING IN!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 39s
0x000E44:
    if !(== self.con 39s) goto 0x000E74
0x000E58:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E78
0x000E74:
    push 0s
0x000E78:
    if !pop goto 0x000E9C
0x000E7C:
    self.con = 40s
    stog.alarm[4s] = 40s
0x000E9C:
    if !(== self.con 40s) goto 0x000ECC
0x000EB0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000ED0
0x000ECC:
    push 0s
0x000ED0:
    if !pop goto 0x000F8C
0x000ED4:
    if !(< (int32 self.flame1):x (- 1570.x 20s)) goto 0x000F30
0x000F00:
    stog.x* = (+ (int32 self.flame1):x 0.5d)
0x000F30:
    push (int32 self.flame1)
    if !(> (int32 self.flame2):x (+ 1570.x 20s)) goto 0x000F8C
0x000F5C:
    stog.x* = (- (int32 self.flame2):x 0.5d)
0x000F8C:
    push (int32 self.flame2)
    if !(== self.con 41s) goto 0x000FE8
0x000FA0:
    stog.msg[0s] = "* GETTING!&* CLOSER!&* OH MY!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 42s
0x000FE8:
    if !(== self.con 42s) goto 0x001018
0x000FFC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00101C
0x001018:
    push 0s
0x00101C:
    if !pop goto 0x001040
0x001020:
    self.con = 43s
    stog.alarm[4s] = 40s
0x001040:
    if !(== self.con 43s) goto 0x001070
0x001054:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001074
0x001070:
    push 0s
0x001074:
    if !pop goto 0x001130
0x001078:
    if !(< (int32 self.flame1):x (- 1570.x 20s)) goto 0x0010D4
0x0010A4:
    stog.x* = (+ (int32 self.flame1):x 0.5d)
0x0010D4:
    push (int32 self.flame1)
    if !(> (int32 self.flame2):x (+ 1570.x 20s)) goto 0x001130
0x001100:
    stog.x* = (- (int32 self.flame2):x 0.5d)
0x001130:
    push (int32 self.flame2)
    if !(== self.con 44s) goto 0x00118C
0x001144:
    stog.msg[0s] = "* ANY MINUTE NOW!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 45s
0x00118C:
    if !(== self.con 45s) goto 0x0011BC
0x0011A0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0011C0
0x0011BC:
    push 0s
0x0011C0:
    if !pop goto 0x0011E4
0x0011C4:
    self.con = 46s
    stog.alarm[4s] = 90s
0x0011E4:
    if !(== self.con 46s) goto 0x001214
0x0011F8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001218
0x001214:
    push 0s
0x001218:
    if !pop goto 0x0012D4
0x00121C:
    if !(< (int32 self.flame1):x (- 1570.x 20s)) goto 0x001278
0x001248:
    stog.x* = (+ (int32 self.flame1):x 0.5d)
0x001278:
    push (int32 self.flame1)
    if !(> (int32 self.flame2):x (+ 1570.x 20s)) goto 0x0012D4
0x0012A4:
    stog.x* = (- (int32 self.flame2):x 0.5d)
0x0012D4:
    push (int32 self.flame2)
    if !(== self.con 47s) goto 0x001330
0x0012E8:
    stog.msg[0s] = "* ...&* ...&* (ROBOTIC COUGH)/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 48s
0x001330:
    if !(== self.con 48s) goto 0x001360
0x001344:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001364
0x001360:
    push 0s
0x001364:
    if !pop goto 0x001388
0x001368:
    self.con = 49s
    stog.alarm[4s] = 20s
0x001388:
    if !(== self.con 50s) goto 0x001464
0x00139C:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 6s
    call (snd_play[]:int32 (var 104s))
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "* \\TS \\F6 \\TA %"
    stog.msg[2s] = "* Watch out!^1!&* I'll save you!!/"
    stog.msg[3s] = "* I'm hacking into the&  firewall right now!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 51s
0x001464:
    if !(== self.con 51s) goto 0x001494
0x001478:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001498
0x001494:
    push 0s
0x001498:
    if !pop goto 0x001510
0x00149C:
    call (snd_play[]:int32 (var 106s))
    pushenv (int32 self.flame1) 0x0014CC
0x0014C0:
    call (instance_destroy[]:int32 )
0x0014CC:
    popenv 0x0014C0
0x0014D0:
    pushenv (int32 self.flame2) 0x0014EC
0x0014E0:
    call (instance_destroy[]:int32 )
0x0014EC:
    popenv 0x0014E0
0x0014F0:
    self.con = 52s
    stog.alarm[4s] = 30s
0x001510:
    if !(== self.con 53s) goto 0x00159C
0x001524:
    global.facechoice = 0s
    global.typer = 27s
    stog.msg[0s] = "* OH NO!!!&* HOW COULD THIS HAPPEN???/"
    stog.msg[1s] = "* FOILED AGAIN BY THE BRILLIANT&  DOCTOR ALPHYS!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 54s
0x00159C:
    if !(== self.con 54s) goto 0x0015CC
0x0015B0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0015D0
0x0015CC:
    push 0s
0x0015D0:
    if !pop goto 0x0015F4
0x0015D4:
    self.con = 55s
    stog.alarm[4s] = 90s
0x0015F4:
    if !(== self.con 56s) goto 0x001878
0x001608:
    global.faceemotion = 5s
    global.facechoice = 0s
    global.typer = 27s
    stog.msg[0s] = "* THA-%"
    stog.msg[1s] = "\\TS \\F6 \\TA %"
    stog.msg[2s] = "\\E6* That's right!/"
    stog.msg[3s] = "\\E6* Come on^1, Mettaton^1,&  give up already!/"
    stog.msg[4s] = "* You'll never be&  able to defeat&  us.../"
    stog.msg[5s] = "\\E0* Not as long as&  we work together!/"
    stog.msg[6s] = "\\E6* Your puzzle's over..&* Now go home and&  leave us alone!/"
    stog.msg[7s] = "\\TS \\F0 \\TM %"
    stog.msg[8s] = "* PUZZLE^1?&* OVER?/"
    stog.msg[9s] = "* ALPHYS^1, DARLING^1, WHAT ARE YOU&  TALKING ABOUT...?/"
    stog.msg[10s] = "* DID YOU FORGET WHAT THE&  GREEN TILES DO?/"
    stog.msg[11s] = "* THEY MAKE A SOUND, THEN&  YOU HAVE TO FIGHT A MONSTER./"
    stog.msg[12s] = "* WELL, DARLING...&* THAT MONSTER.../"
    stog.msg[13s] = "* IS ME!!/%%"
    push -5s
    if !(== 289s:flag 0s) goto 0x001840
0x001798:
    stog.msg[12s] = "* WELL, DARLING...!/"
    stog.msg[13s] = "* WELL, WELL, WELL./"
    stog.msg[14s] = "* WELLY WELL WELL./"
    stog.msg[15s] = "* WELL WELLY WELL WELL,&  WELL WELL WELLY./"
    stog.msg[16s] = "* YOU NEVER STEPPED ON A&  GREEN TILE./"
    stog.msg[17s] = "* .../"
    stog.msg[18s] = "* AND NOW YOU'RE GOING TO DIE./%%"
0x001840:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 55.1d
0x001878:
    if !(== self.con 55.1d) goto 0x0018B0
0x001894:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0018B4
0x0018B0:
    push 0s
0x0018B4:
    if !pop goto 0x001920
0x0018B8:
    call (caster_free[]:int32 self.racesong)
    self.con = 56.1d
    stog.alarm[4s] = 20s
    push 3s
    stog.vspeed* = (int32 self.mett)
    call (snd_play[]:int32 (var 30s))
0x001920:
    if !(== self.con 57.1d) goto 0x001958
0x00193C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00195C
0x001958:
    push 0s
0x00195C:
    if !pop goto 0x0019C8
0x001960:
    self.con = 58s
    global.battlegroup = 57s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.talkedto = 0s
    stog.alarm[4s] = 32s
0x0019C8:
    if !(== self.con 58s) goto 0x0019F0
0x0019DC:
    push (== global.interact 0s)
    goto 0x0019F4
0x0019F0:
    push 0s
0x0019F4:
    if !pop goto 0x001A04
0x0019F8:
    global.interact = 1s
0x001A04:
    if !(== self.con 59s) goto 0x001AB4
0x001A18:
    if !(bool (instance_exists[]:int32 (var 1206s))) goto 0x001A48
0x001A30:
    pushenv 1206s 0x001A44
0x001A38:
    call (instance_destroy[]:int32 )
0x001A44:
    popenv 0x001A38
0x001A48:
    [obj_mainchara].cutscene = 0s
    stog.view_object[0s] = 1570s
    global.interact = 1s
    if !(== global.interact 0s) goto 0x001A94
0x001A88:
    global.interact = 1s
0x001A94:
    self.con = 60s
    stog.alarm[4s] = 15s
0x001AB4:
    if !(== self.con 60s) goto 0x001AD4
0x001AC8:
    global.interact = 1s
0x001AD4:
    if !(== self.con 61s) goto 0x001B94
0x001AE8:
    global.mercy = 0s
    if !(== global.interact 0s) goto 0x001B14
0x001B08:
    global.interact = 1s
0x001B14:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 690s
    global.facing = 0s
    call (snd_play[]:int32 (var 104s))
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 62s
0x001B94:
    if !(== self.con 62s) goto 0x001BC4
0x001BA8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001BC8
0x001BC4:
    push 0s
0x001BC8:
    if !pop goto 0x001CB0
0x001BCC:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x001C20
0x001BE4:
    if !(>= 1570.x 340s) goto 0x001C20
0x001BF8:
    self.flowey = (instance_create[]:int32 (var 1339s) (var 120s) (var 100s))
0x001C20:
    global.mercy = 0s
    global.border = 0s
    global.currentsong = (caster_load[]:int32 (var "music/anothermedium.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    global.interact = 0s
    stog.flag[17s] = 0s
    global.plot = 168s
    call (instance_destroy[]:int32 )
0x001CB0:
    if !(== self.con 75s) goto 0x001D48
0x001CC4:
    pushenv 1206s 0x001CD8
0x001CCC:
    self.middle = 2s
0x001CD8:
    popenv 0x001CCC
0x001CDC:
    [obj_mettaton_flightdress].sing = -1s
    call (caster_free[]:int32 (var -3s))
    [obj_tileguytileparent].grey = 1s
    call (snd_play[]:int32 (var 26s))
    global.interact = 1s
    self.con = 76s
    stog.alarm[4s] = 30s
0x001D48:
    if !(== self.con 76s) goto 0x001D68
0x001D5C:
    global.interact = 1s
0x001D68:
    if !(== self.con 77s) goto 0x001E44
0x001D7C:
    pushenv 1209s 0x001D90
0x001D84:
    self.finished = 1s
0x001D90:
    popenv 0x001D84
0x001D94:
    global.typer = 27s
    global.facechoice = 0s
    global.msc = 0s
    stog.flag[278s] = 1s
    stog.msg[0s] = "* CONGRATULATIONS!/"
    stog.msg[1s] = "* YOU MADE IT THROUGH THE&  PUZZLE!!!/"
    stog.msg[2s] = "* AND NOW, WITHOUT FURTHER ADO,&  THE FLAMES WILL BE DEACTIVATED!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 78s
0x001E44:
    if !(== self.con 78s) goto 0x001E74
0x001E58:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001E78
0x001E74:
    push 0s
0x001E78:
    if !pop goto 0x001EF0
0x001E7C:
    call (snd_play[]:int32 (var 106s))
    pushenv (int32 self.flame1) 0x001EAC
0x001EA0:
    call (instance_destroy[]:int32 )
0x001EAC:
    popenv 0x001EA0
0x001EB0:
    pushenv (int32 self.flame2) 0x001ECC
0x001EC0:
    call (instance_destroy[]:int32 )
0x001ECC:
    popenv 0x001EC0
0x001ED0:
    self.con = 79s
    stog.alarm[4s] = 30s
0x001EF0:
    if !(== self.con 80s) goto 0x002000
0x001F04:
    global.facechoice = 0s
    global.typer = 27s
    global.msc = 0s
    stog.msg[0s] = "* NO!&* MORE!&* FIRE!/"
    stog.msg[1s] = "* ... BUT IT'S AS THE PHRASE&  GOES./"
    stog.msg[2s] = "* \"OUT OF THE FIRE, AND INTO&  THE FRYING PAN.\"/"
    stog.msg[3s] = "* THAT'S RIGHT, DARLING!/"
    stog.msg[4s] = "* EVEN IF YOU MANAGE TO BEAT&  THE HEAT.../"
    stog.msg[5s] = "* YOU'LL NEVER BE ABLE TO&  WITHSTAND MY HOT METAL&  BODY!/"
    stog.msg[6s] = "* PREPARE YOURSELF FOR MY %%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 81s
0x002000:
    if !(== self.con 81s) goto 0x002030
0x002014:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002034
0x002030:
    push 0s
0x002034:
    if !pop goto 0x002288
0x002038:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 6s
    call (snd_play[]:int32 (var 104s))
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "* \\TS \\F6 \\TA %"
    stog.msg[2s] = "* Watch out!^1!&* I'll save you!!/"
    stog.msg[3s] = "* Flames^1, deactivate!!/"
    stog.msg[4s] = "* .../"
    stog.msg[5s] = "\\E3* ... huh?/"
    stog.msg[6s] = "\\TS \\F0 \\TM %"
    stog.msg[7s] = "* THE HUMAN FINISHED THE PUZZLE./"
    stog.msg[8s] = "* I ALREADY TURNED OFF THE&  FLAMES./"
    stog.msg[9s] = "* IN FACT, I WAS ABOUT TO&  FIGHT THE HUMAN./"
    stog.msg[10s] = "\\TS \\F6 \\TA %"
    stog.msg[11s] = "* Wh-wh-what?&* TH-THAT puzzle?/"
    stog.msg[12s] = "\\E5* I mean, uhh.../"
    stog.msg[13s] = "\\E6* Great job!&* We've got him on&  the ropes^1, now!/"
    stog.msg[14s] = "\\TS \\F0 \\TM %"
    stog.msg[15s] = "* ON THE ROPES^1?&* HA!/"
    stog.msg[16s] = "* I ONLY DEACTIVATED THE&  FLAMES KNOWING THAT ALPHYS&  WOULD HAVE ANYWAY./"
    stog.msg[17s] = "* ... NOW, WHERE WERE WE?/"
    stog.msg[18s] = "* OH YES./"
    stog.msg[19s] = "* I WAS GOING TO ERADICATE&  YOU!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 55.1d
0x002288:
    exit
