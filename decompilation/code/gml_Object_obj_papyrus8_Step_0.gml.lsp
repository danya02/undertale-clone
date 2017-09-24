0x000000:
    if !(== self.conversation 1s) goto 0x000190
0x000014:
    self.papyrus = (instance_create[]:int32 (var 1032s) (var 110s) (+ 1570.x 200s))
    push 1334s
    stog.sprite_index* = (int32 self.papyrus)
    [obj_mainchara].y = 120s
    self.fade = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.01d
    stog.fadespeed* = (int32 self.fade)
    self.myinteract = 3s
    global.msc = 0s
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 1s
    global.interact = 1s
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    [obj_mainchara].cutscene = 1s
    push -1s
    self.camera = 0s:view_xview
    self.conversation = 2s
    global.border = 0s
    if !(< global.hp global.maxhp) goto 0x000190
0x000180:
    global.hp = global.maxhp
0x000190:
    if !(== self.conversation 2s) goto 0x000200
0x0001A4:
    push -1s
    if !(< 0s:view_xview (+ self.camera 100s)) goto 0x0001F4
0x0001CC:
    push -1s
    stog.view_xview[(+ 0s:view_xview 3s)] = 0s
    goto 0x000200
0x0001F4:
    self.conversation = 3s
0x000200:
    if !(== self.conversation 3s) goto 0x000338
0x000214:
    self.chara = (instance_create[]:int32 (var 1355s) (var 120s) 1570.x)
    push 1028s
    stog.sprite_index* = (int32 self.chara)
    push 1s
    stog.d* = (int32 self.papyrus)
    push 1s
    stog.fun* = (int32 self.papyrus)
    push 1332s
    stog.sprite_index* = (int32 self.papyrus)
    push 0s
    stog.image_alpha* = (int32 self.chara)
    push 1s
    stog.d* = (int32 self.chara)
    push 1s
    stog.fun* = (int32 self.chara)
    push 0s
    stog.image_alpha* = (int32 self.papyrus)
    push 900s
    stog.depth* = (int32 self.chara)
    push 900s
    stog.depth* = (int32 self.papyrus)
    self.conversation = 4s
0x000338:
    if !(== self.conversation 4s) goto 0x0003B4
0x00034C:
    if !(< (int32 self.chara):image_alpha 0.9d) goto 0x0003A8
0x000374:
    stog.image_alpha* = (+ (int32 self.chara):image_alpha 0.01d)
    goto 0x0003B4
0x0003A8:
    push (int32 self.chara)
    self.conversation = 5s
0x0003B4:
    if !(== self.conversation 5s) goto 0x000430
0x0003C8:
    if !(< (int32 self.papyrus):image_alpha 0.9d) goto 0x000424
0x0003F0:
    stog.image_alpha* = (+ (int32 self.papyrus):image_alpha 0.01d)
    goto 0x000430
0x000424:
    push (int32 self.papyrus)
    self.conversation = 6s
0x000430:
    if !(== self.conversation 6s) goto 0x000464
0x000444:
    stog.alarm[4s] = 40s
    self.conversation = 7s
0x000464:
    if !(== self.conversation 8s) goto 0x000C10
0x000478:
    [obj_mainchara].y = (int32 self.chara):y
    call (ini_open[]:int32 (var "undertale.ini"))
    self.PP = (ini_read_real[]:int32 (var 0s) (var "PS") (var "Papyrus"))
    call (ini_close[]:int32 )
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.interact = 1s
    stog.msg[0s] = "HUMAN./"
    stog.msg[1s] = "ALLOW ME TO TELL&YOU ABOUT SOME&COMPLEX FEELINGS./"
    if !(> self.PP 0s) goto 0x000688
0x000568:
    stog.msg[2s] = "SOMEHOW^1, I FEEL LIKE&YOU'RE AN OLD FRIEND.../"
    stog.msg[3s] = "EVEN THOUGH I'VE&NEVER ACTUALLY MET&YOU BEFORE!!/"
    stog.msg[4s] = "I CAN'T EXPLAIN&WHY I FEEL THIS&WAY.../"
    stog.msg[5s] = "DID I MEET YOU&ONLINE???/"
    stog.msg[6s] = "I HAVE MANY \"SOCIAL&MEDIA CONNECTIONS.\"/"
    stog.msg[7s] = "IT'S HARD TO KEEP&TRACK OF THEM&ALL./"
    stog.msg[8s] = "JUST A DOZEN MORE^1,&AND.../"
    stog.msg[9s] = "I'LL FINALLY REACH&DOUBLE DIGITS!!!/"
    stog.msg[10s] = "... HEY^1, WAIT A&SECOND!/"
    stog.msg[11s] = "YOU CAN'T BE MY&FRIEND!!^1!&YOU'RE HUMAN!/"
    stog.msg[12s] = "I CAN'T BELIEVE YOU&ALMOST TRICKED ME INTO&NOT DEFEATING YOU!!!/"
    stog.msg[13s] = "WHOOPSIE DOOPSIE!/%%"
0x000688:
    stog.msg[2s] = "FEELINGS LIKE.../"
    stog.msg[3s] = "THE JOY OF FINDING&ANOTHER PASTA&LOVER./"
    stog.msg[4s] = "THE ADMIRATION FOR&ANOTHER'S PUZZLE-&SOLVING SKILLS./"
    stog.msg[5s] = "THE DESIRE TO HAVE&A COOL^1, SMART PERSON&THINK YOU ARE COOL./"
    stog.msg[6s] = "THESE FEELINGS.../"
    stog.msg[7s] = "THEY MUST BE WHAT&YOU ARE FEELING&RIGHT NOW!!!/"
    stog.msg[8s] = "I CAN HARDLY IMAGINE&WHAT IT MUST BE LIKE&TO FEEL THAT WAY./"
    stog.msg[9s] = "AFTER ALL^1, I AM&VERY GREAT./"
    stog.msg[10s] = "I DON'T EVER WONDER&WHAT HAVING LOTS&OF FRIENDS IS LIKE./"
    stog.msg[11s] = "I PITY YOU..^1.&LONELY HUMAN.../"
    stog.msg[12s] = "WORRY NOT!!^1!&YOU SHALL BE&LONELY NO LONGER!/"
    stog.msg[13s] = "I^1, THE GREAT&PAPYRUS^1, WILL BE&YOUR.../"
    stog.msg[14s] = " ^2.^2../"
    stog.msg[15s] = "NO.../"
    stog.msg[16s] = "NO^1, THIS IS ALL&WRONG!/"
    stog.msg[17s] = "I CAN'T BE YOUR&FRIEND!!!/"
    stog.msg[18s] = "YOU ARE A HUMAN!/"
    stog.msg[19s] = "I MUST CAPTURE&YOU!!!/"
    stog.msg[20s] = "THEN^1, I CAN FULFILL&MY LIFELONG DREAM!!!/"
    stog.msg[21s] = "POWERFUL^1!&POPULAR^1!&PRESTIGIOUS!!!/"
    stog.msg[22s] = "THAT'S PAPYRUS!!!/"
    stog.msg[23s] = "THE NEWEST MEMBER.../"
    stog.msg[24s] = "OF THE ROYAL GUARD!/%%"
    push -5s
    if !(== 67s:flag -1s) goto 0x000A78
0x0008CC:
    stog.msg[0s] = "OH..^1.&WHERE COULD THAT&HUMAN HAVE GONE./"
    stog.msg[1s] = "... WAIT..^1.&IT'S RIGHT IN&FRONT OF ME!!!/"
    stog.msg[2s] = "HELLO^1!&I WAS WORRIED THAT&YOU HAD GOTTEN LOST!/"
    stog.msg[3s] = "IT SURE IS A RELIEF&TO KNOW THAT&YOU'RE RIGHT HERE.../"
    stog.msg[4s] = "... WAIT A SECOND!!!/"
    stog.msg[5s] = "YOU'RE NOT SUPPOSED&TO ESCAPE!!!/"
    stog.msg[6s] = "GET BACK THERE!!!/%%"
    if !(> self.PP 0s) goto 0x000A78
0x000988:
    stog.msg[0s] = "I SUPPOSE THIS PROVES&WHAT I SAID./"
    stog.msg[1s] = "WE REALLY ARE BOUND&TOGETHER./"
    stog.msg[2s] = "TWO BONES IN THE&SKELETAL ANATOMY OF&FATE!!!/"
    stog.msg[3s] = "THAT'S HOW YOU APPEAR&HERE NOW.../"
    stog.msg[4s] = "EVEN THOUGH IT'S VERY&IMPOSSIBLE FOR YOU&TO ESCAPE./"
    stog.msg[5s] = "AMAZING!!!/"
    stog.msg[6s] = "I FEEL A SINCERE.../"
    stog.msg[7s] = "WAAAAAIT A SECOND!!/"
    stog.msg[8s] = "I STILL HAVE TO&CAPTURE YOU!!!/"
    stog.msg[9s] = "WHOOPSIE-DOOPSIE!!/%%"
0x000A78:
    push -5s
    if !(== 67s:flag -2s) goto 0x000B54
0x000A94:
    stog.msg[0s] = "BACK AGAIN^1, EH?/"
    stog.msg[1s] = "I SUPPOSE IT'S MY&FAULT.../"
    stog.msg[2s] = "I TOLD YOU BEFORE&THAT I WOULD MAKE&YOU SPAGHETTI./"
    stog.msg[3s] = "IT'S ONLY NATURAL&THAT YOU WOULD&WANT TO SEE ME.../"
    stog.msg[4s] = "IN THE DIRE HOPE&THAT I WOULD MAKE&YOU SOME./"
    stog.msg[5s] = "WELL..^1. I UNDERSTAND./"
    stog.msg[6s] = "PAPYRUS IS HUNGRY^1,&TOO!/"
    stog.msg[7s] = "HUNGRY FOR JUSTICE!/%%"
0x000B54:
    push -5s
    if !(== 67s:flag -3s) goto 0x000B90
0x000B70:
    global.msc = 544s
    self.conversation = 13.5d
0x000B90:
    if !(== self.murder 1s) goto 0x000BBC
0x000BA4:
    stog.msg[0s] = "HALT^1, HUMAN!/%%"
0x000BBC:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 14s
    if !(== self.murder 1s) goto 0x000C10
0x000C04:
    self.conversation = 90s
0x000C10:
    if !(== self.conversation 14s) goto 0x000C3C
0x000C24:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000C40
0x000C3C:
    push 0s
0x000C40:
    if !pop goto 0x000CA8
0x000C44:
    if !(> 782.stringno 14s) goto 0x000C6C
0x000C58:
    push (< 782.stringno 18s)
    goto 0x000C70
0x000C6C:
    push 0s
0x000C70:
    if !pop goto 0x000C90
0x000C74:
    push 1333s
    stog.sprite_index* = (int32 self.papyrus)
    goto 0x000CA8
0x000C90:
    push 1332s
    stog.sprite_index* = (int32 self.papyrus)
0x000CA8:
    if !(== self.conversation 14s) goto 0x000CD8
0x000CBC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000CDC
0x000CD8:
    push 0s
0x000CDC:
    if !pop goto 0x000D28
0x000CE0:
    stog.alarm[4s] = 40s
    self.conversation = 15s
    call (caster_free[]:int32 (var -3s))
    call (snd_play[]:int32 (var 30s))
0x000D28:
    if !(== self.conversation 15s) goto 0x000D48
0x000D3C:
    global.interact = 1s
0x000D48:
    if !(== self.conversation 16s) goto 0x000D78
0x000D5C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D7C
0x000D78:
    push 0s
0x000D7C:
    if !pop goto 0x000E28
0x000D80:
    [obj_mainchara].x = (int32 self.chara):x
    global.interact = 1s
    self.myinteract = 3s
    global.seriousbattle = 0s
    global.battlegroup = 27s
    stog.flag[200s] = 0s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.conversation = 17s
    [obj_fogmaker].s = 1s
0x000E28:
    push -5s
    if !(== 68s:flag 1s) goto 0x000E74
0x000E44:
    if !(== self.conversation 17s) goto 0x000E74
0x000E58:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E78
0x000E74:
    push 0s
0x000E78:
    if !pop goto 0x000FC0
0x000E7C:
    self.room_persistent = 0s
    global.mercy = 0s
    global.interact = 1s
    push (int32 self.chara):xstart
    stog.x* = (int32 self.chara)
    [obj_mainchara].x = (int32 self.chara):x
    stog.alarm[4s] = 15s
    push -5s
    if !(< 67s:flag 0s) goto 0x000F5C
0x000F14:
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    global.interact = 0s
    call (room_goto[]:int32 (var 75s))
    exit
0x000F5C:
    push -5s
    if !(== 67s:flag 1s) goto 0x000F90
0x000F78:
    push 0s
    stog.image_alpha* = (int32 self.papyrus)
0x000F90:
    self.conversation = 17.5d
    global.currentsong = (caster_load[]:int32 (var "music/papyrus.ogg"))
0x000FC0:
    if !(== self.conversation 17.5d) goto 0x000FE8
0x000FDC:
    global.interact = 1s
0x000FE8:
    if !(== self.conversation 18.5d) goto 0x00113C
0x001004:
    global.interact = 1s
    if !(> (int32 self.chara):image_alpha 0.03d) goto 0x00109C
0x001038:
    stog.image_alpha* = (- (int32 self.chara):image_alpha 0.03d)
    stog.image_alpha* = (- (int32 self.papyrus):image_alpha 0.03d)
    goto 0x00113C
0x00109C:
    push (int32 self.chara)
    push (int32 self.papyrus)
    self.conversation = 19s
    push -5s
    if !(!= 67s:flag 1s) goto 0x00111C
0x0010C4:
    push (int32 self.papyrus):rtsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 1100s
    stog.depth* = (int32 self.papyrus)
    push 1s
    stog.image_alpha* = (int32 self.papyrus)
0x00111C:
    pushenv (int32 self.chara) 0x001138
0x00112C:
    call (instance_destroy[]:int32 )
0x001138:
    popenv 0x00112C
0x00113C:
    if !(== self.conversation 19s) goto 0x0011B4
0x001150:
    global.interact = 1s
    if !(> 972.fog_alpha 0.02d) goto 0x00119C
0x001178:
    [obj_fogmaker].fog_alpha = (- 972.fog_alpha 0.02d)
    goto 0x0011B4
0x00119C:
    [obj_fogmaker].fog_alpha = 0s
    self.conversation = 20s
0x0011B4:
    if !(== self.conversation 20s) goto 0x00123C
0x0011C8:
    if !(== self.murder 0s) goto 0x0011F0
0x0011DC:
    stog.flag[27s] = 1s
0x0011F0:
    push -5s
    if !(== 67s:flag 1s) goto 0x00121C
0x00120C:
    self.conversation = 25s
    goto 0x00123C
0x00121C:
    self.conversation = 21s
    stog.alarm[4s] = 30s
0x00123C:
    if !(== self.conversation 22s) goto 0x0013E8
0x001250:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.PS = (ini_read_real[]:int32 (var 0s) (var "PS") (var "Papyrus"))
    call (ini_write_real[]:int32 (+ self.PS 1s) (var "PS") (var "Papyrus"))
    call (ini_close[]:int32 )
    global.msc = 540s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 3s
    global.interact = 1s
    stog.msg[0s] = "I WAS NEVER ONE&  TO BEPIS./%%"
    push 0s
    stog.fun* = (int32 self.papyrus)
    push 0s
    stog.npcdir* = (int32 self.papyrus)
    push (int32 self.papyrus):rtsprite
    stog.sprite_index* = (int32 self.papyrus)
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 22.5d
    if !(== self.murder 1s) goto 0x0013E8
0x0013D4:
    self.conversation = 22.4d
0x0013E8:
    if !(== self.conversation 22.4d) goto 0x001480
0x001404:
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    call (caster_loop[]:int32 (var 1s) (var 0.5d) global.currentsong)
    self.conversation = 21.6d
    stog.alarm[4s] = 10s
0x001480:
    if !(== self.conversation 22.5d) goto 0x0014B0
0x00149C:
    push (== global.msc 541s)
    goto 0x0014B4
0x0014B0:
    push 0s
0x0014B4:
    if !pop goto 0x001534
0x0014B8:
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    call (caster_loop[]:int32 (var 1s) (var 0.5d) global.currentsong)
    self.conversation = 21.6d
    stog.alarm[4s] = 10s
0x001534:
    if !(== self.conversation 22.6d) goto 0x00156C
0x001550:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001570
0x00156C:
    push 0s
0x001570:
    if !pop goto 0x0016A8
0x001574:
    global.msc = 0s
    stog.msg[0s] = "\\E1OH^1, I ALMOST&FORGOT TO TELL&YOU.../"
    stog.msg[1s] = "TO REACH THE EXIT^1,&YOU WILL HAVE&TO PASS.../"
    stog.msg[2s] = "\\WTHROUGH \\YTHE KING\\W'S&CASTLE./"
    if !(== self.murder 1s) goto 0x00160C
0x0015DC:
    stog.msg[1s] = "TO REACH THE EXIT^1,&YOU WILL HAVE&TO MEET.../"
    stog.msg[2s] = "THE KING./"
0x00160C:
    stog.msg[3s] = "\\YTHE KING OF&ALL MONSTERS.../"
    stog.msg[4s] = "HE IS.../"
    stog.msg[5s] = "... WELL.../%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.volly = (caster_get_volume[]:int32 global.currentsong)
    self.conversation = 22.7d
0x0016A8:
    if !(== self.conversation 22.7d) goto 0x001754
0x0016C4:
    if !(> self.volly 0.06d) goto 0x001704
0x0016E0:
    self.volly = (- self.volly 0.02d)
    goto 0x001738
0x001704:
    self.volly = 0s
    self.conversation = 22.8d
    call (caster_pause[]:int32 global.currentsong)
0x001738:
    call (caster_set_volume[]:int32 self.volly global.currentsong)
0x001754:
    if !(== self.conversation 22.8d) goto 0x00178C
0x001770:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001790
0x00178C:
    push 0s
0x001790:
    if !pop goto 0x001920
0x001794:
    call (caster_resume[]:int32 global.currentsong)
    call (caster_set_volume[]:int32 (var 0.5d) global.currentsong)
    stog.msg[0s] = "\\E0HE'S A BIG FUZZY&PUSHOVER!!!/"
    stog.msg[1s] = "EVERYBODY LOVES&THAT GUY./"
    stog.msg[2s] = "I AM CERTAIN IF&YOU JUST SAY.../"
    stog.msg[3s] = "\"EXCUSE ME^1, MR.&DREEMURR..^1. CAN I&PLEASE GO HOME?\"/"
    stog.msg[4s] = "HE'LL GUIDE YOU&RIGHT TO THE&BARRIER HIMSELF!/"
    stog.msg[5s] = "ANYWAY!!^1!&THAT'S ENOUGH&TALKING!!!/"
    stog.msg[6s] = "I'LL BE AT HOME&BEING A COOL&FRIEND!!!/"
    stog.msg[7s] = "FEEL FREE TO&COME BY AND&HANG OUT!!!/"
    push -5s
    if !(== 66s:flag 1s) goto 0x0018C0
0x0018A8:
    stog.msg[7s] = "FEEL FREE TO&COME BY AND HAVE&THAT DATE!/"
0x0018C0:
    stog.msg[8s] = "NYEH HEH HEH HEH&HEH HEH HEH!!!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    stog.flag[88s] = 1s
    self.conversation = 23s
0x001920:
    if !(== self.conversation 23s) goto 0x001950
0x001934:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001954
0x001950:
    push 0s
0x001954:
    if !pop goto 0x001A38
0x001958:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0.5d
    stog.image_speed* = (int32 self.papyrus)
    push 1s
    stog.fun* = (int32 self.papyrus)
    push 0s
    stog.npcdir* = (int32 self.papyrus)
    push -3.5d
    stog.hspeed* = (int32 self.papyrus)
    pushenv (int32 self.papyrus) 0x001A14
0x001A00:
    call (event_user[]:int32 (var 2s))
0x001A14:
    popenv 0x001A00
0x001A18:
    self.conversation = 24s
    stog.alarm[4s] = 90s
0x001A38:
    if !(== self.conversation 25s) goto 0x001B10
0x001A4C:
    if !(~ (bool (instance_exists[]:int32 (var 92s)))) goto 0x001AB0
0x001A68:
    self.mmm = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.02d
    stog.fadespeed* = (int32 self.mmm)
0x001AB0:
    push -1s
    if !(> 0s:view_xview self.camera) goto 0x001AF8
0x001AD0:
    push -1s
    stog.view_xview[(- 0s:view_xview 3s)] = 0s
    goto 0x001B10
0x001AF8:
    [obj_mainchara].cutscene = 0s
    self.conversation = 27s
0x001B10:
    if !(== self.conversation 27s) goto 0x001B48
0x001B24:
    global.plot = 101s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x001B48:
    if !(== self.conversation 90s) goto 0x001B78
0x001B5C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001B7C
0x001B78:
    push 0s
0x001B7C:
    if !pop goto 0x001C38
0x001B80:
    global.currentsong = (caster_load[]:int32 (var "music/papyrusboss.ogg"))
    call (caster_loop[]:int32 (var 0.2d) (var 0.8d) global.currentsong)
    self.rem_dx = 1570.x
    self.conversation = 91s
    stog.alarm[4s] = 15s
    push 2s
    stog.hspeed* = (int32 self.chara)
    push 0.25d
    stog.image_speed* = (int32 self.chara)
0x001C38:
    if !(== self.conversation 92s) goto 0x001CCC
0x001C4C:
    push 0s
    stog.hspeed* = (int32 self.chara)
    push 0s
    stog.image_speed* = (int32 self.chara)
    push 0s
    stog.image_index* = (int32 self.chara)
    push 0s
    stog.image_index* = (int32 self.chara)
    self.conversation = 93s
    stog.alarm[4s] = 30s
0x001CCC:
    if !(== self.conversation 94s) goto 0x001E48
0x001CE0:
    stog.msg[0s] = "HEY^1, QUIT MOVING&WHILE I'M TALKING&TO YOU!/"
    stog.msg[1s] = "I^1, THE GREAT PAPYRUS^1,&HAVE SOME THINGS&TO SAY./"
    stog.msg[2s] = "FIRST^1: YOU'RE A&FREAKING WEIRDO!/"
    stog.msg[3s] = "NOT ONLY DO YOU&NOT LIKE PUZZLES./"
    stog.msg[4s] = "BUT THE WAY YOU&SHAMBLE ABOUT FROM&PLACE TO PLACE.../"
    stog.msg[5s] = "THE WAY YOUR HANDS&ARE ALWAYS COVERED&IN DUSTY POWDER./"
    stog.msg[6s] = "IT FEELS.../"
    stog.msg[7s] = "LIKE YOUR LIFE IS&GOING DOWN A&DANGEROUS PATH./"
    stog.msg[8s] = "HOWEVER!/"
    stog.msg[9s] = "I^1, PAPYRUS^1, SEE&GREAT POTENTIAL&WITHIN YOU!/"
    stog.msg[10s] = "EVERYONE CAN BE&A GREAT PERSON&IF THEY TRY!/"
    stog.msg[11s] = "AND ME^1, I HARDLY&HAVE TO TRY AT&ALL!!!/"
    stog.msg[12s] = "NYEH HEH HEH&HEH HEH HEH!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 95s
0x001E48:
    if !(== self.conversation 95s) goto 0x001E78
0x001E5C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001E7C
0x001E78:
    push 0s
0x001E7C:
    if !pop goto 0x001ED8
0x001E80:
    self.conversation = 96s
    stog.alarm[4s] = 15s
    push 2s
    stog.hspeed* = (int32 self.chara)
    push 0.25d
    stog.image_speed* = (int32 self.chara)
0x001ED8:
    if !(== self.conversation 97s) goto 0x001F54
0x001EEC:
    push 0s
    stog.hspeed* = (int32 self.chara)
    push 0s
    stog.image_index* = (int32 self.chara)
    push 0s
    stog.image_speed* = (int32 self.chara)
    self.conversation = 98s
    stog.alarm[4s] = 30s
0x001F54:
    if !(== self.conversation 99s) goto 0x002040
0x001F68:
    stog.msg[0s] = "HEY^1, QUIT MOVING!/"
    stog.msg[1s] = "THIS IS EXACTLY&WHAT I AM TALKING&ABOUT!/"
    stog.msg[2s] = "HUMAN^1! I THINK&YOU ARE IN NEED&OF GUIDANCE!/"
    stog.msg[3s] = "SOMEONE NEEDS TO&KEEP YOU ON THE&STRAIGHT AND NARROW!/"
    stog.msg[4s] = "BUT WORRY NOT!&I^1, PAPYRUS.../"
    stog.msg[5s] = "WILL GLADLY BE&YOUR FRIEND AND&TUTOR!/"
    stog.msg[6s] = "I WILL TURN YOUR&LIFE RIGHT&AROUND!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 100s
0x002040:
    if !(== self.conversation 100s) goto 0x002070
0x002054:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002074
0x002070:
    push 0s
0x002074:
    if !pop goto 0x0020D0
0x002078:
    self.conversation = 101s
    stog.alarm[4s] = 30s
    push 2s
    stog.hspeed* = (int32 self.chara)
    push 0.25d
    stog.image_speed* = (int32 self.chara)
0x0020D0:
    if !(== self.conversation 102s) goto 0x002164
0x0020E4:
    push 0s
    stog.image_index* = (int32 self.chara)
    push 0s
    stog.hspeed* = (int32 self.chara)
    push 0s
    stog.image_index* = (int32 self.chara)
    push 0s
    stog.image_speed* = (int32 self.chara)
    self.conversation = 103s
    stog.alarm[4s] = 30s
0x002164:
    if !(== self.conversation 104s) goto 0x002208
0x002178:
    stog.msg[0s] = "I SEE YOU ARE&APPROACHING./"
    stog.msg[1s] = "ARE YOU OFFERING A&HUG OF ACCEPTANCE?/"
    stog.msg[2s] = "WOWIE!^1! MY LESSONS&ARE ALREADY&WORKING!!/"
    stog.msg[3s] = "I^1, PAPYRUS^1,&WELCOME YOU&WITH OPEN ARMS!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 14s
0x002208:
    exit
