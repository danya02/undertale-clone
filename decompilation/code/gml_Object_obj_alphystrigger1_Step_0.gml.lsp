0x000000:
    if !(== self.con 1s) goto 0x000140
0x000014:
    stog.flag[20s] = 0s
    self.alphys = (instance_create[]:int32 (var 1171s) (+ 1291.y 5s) (+ 1291.x 10s))
    push 1s
    stog.d* = (int32 self.alphys)
    push (+ 1291.depth 1s)
    stog.depth* = (int32 self.alphys)
    self.lab = (caster_load[]:int32 (var "music/lab.ogg"))
    self.smash = (caster_load[]:int32 (var "music/mettsmash.ogg"))
    self.gameshow = (caster_load[]:int32 (var "music/mtgameshow.ogg"))
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    [obj_mainchara].cutscene = 1s
    self.con = 2s
    stog.alarm[4s] = 50s
0x000140:
    if !(== self.con 2s) goto 0x000178
0x000154:
    push -1s
    stog.view_xview[(+ 0s:view_xview 2s)] = 0s
0x000178:
    if !(== self.con 3s) goto 0x0001AC
0x00018C:
    self.con = 4s
    stog.alarm[4s] = 30s
0x0001AC:
    if !(== self.con 5s) goto 0x000200
0x0001C0:
    pushenv 1291s 0x0001DC
0x0001C8:
    call (event_user[]:int32 (var 0s))
0x0001DC:
    popenv 0x0001C8
0x0001E0:
    self.con = 6s
    stog.alarm[4s] = 15s
0x000200:
    if !(== self.con 7s) goto 0x000264
0x000214:
    push 0s
    stog.d* = (int32 self.alphys)
    push 2s
    stog.vspeed* = (int32 self.alphys)
    self.con = 8s
    stog.alarm[4s] = 15s
0x000264:
    if !(== self.con 9s) goto 0x0002A4
0x000278:
    pushenv 1291s 0x000294
0x000280:
    call (event_user[]:int32 (var 1s))
0x000294:
    popenv 0x000280
0x000298:
    self.con = 10s
0x0002A4:
    if !(== self.con 10s) goto 0x000334
0x0002B8:
    if !(>= (int32 self.alphys):y (- 1570.y 4s)) goto 0x000334
0x0002E4:
    self.con = 11s
    stog.alarm[4s] = 60s
    push 0s
    stog.vspeed* = (int32 self.alphys)
    push 0s
    stog.image_speed* = (int32 self.alphys)
0x000334:
    if !(== self.con 12s) goto 0x000394
0x000348:
    call (snd_play[]:int32 (var 106s))
    pushenv 1304s 0x000370
0x000364:
    call (instance_destroy[]:int32 )
0x000370:
    popenv 0x000364
0x000374:
    self.con = 13s
    stog.alarm[4s] = 80s
0x000394:
    if !(== self.con 14s) goto 0x000420
0x0003A8:
    push (int32 self.alphys):lsprite
    stog.sprite_index* = (int32 self.alphys)
    push 180s
    stog.direction* = (int32 self.alphys)
    push 3s
    stog.speed* = (int32 self.alphys)
    self.con = 15s
    stog.alarm[4s] = 25s
0x000420:
    if !(== self.con 16s) goto 0x0004C8
0x000434:
    push 0s
    stog.speed* = (int32 self.alphys)
    self.blc = (instance_create[]:int32 (var 1337s) (- (int32 self.alphys):y 6s) (int32 self.alphys):x)
    call (snd_play[]:int32 (var 29s))
    self.con = 17s
    stog.alarm[4s] = 60s
0x0004C8:
    if !(== self.con 18s) goto 0x0005A4
0x0004DC:
    pushenv (int32 self.blc) 0x0004F8
0x0004EC:
    call (instance_destroy[]:int32 )
0x0004F8:
    popenv 0x0004EC
0x0004FC:
    push 1s
    stog.fun* = (int32 self.alphys)
    push 1641s
    stog.sprite_index* = (int32 self.alphys)
    global.facechoice = 6s
    global.faceemotion = 3s
    global.typer = 47s
    global.msc = 0s
    stog.msg[0s] = "* Oh^1.&* My god./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 19s
0x0005A4:
    if !(== self.con 19s) goto 0x0005D4
0x0005B8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0005D8
0x0005D4:
    push 0s
0x0005D8:
    if !pop goto 0x000684
0x0005DC:
    stog.msg[0s] = "* I didn't expect you&  to show up so&  soon!/"
    stog.msg[1s] = "* I haven't showered^1, I'm&  barely dressed^1, it's&  all messy^1, and.../%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 20s
    push (int32 self.alphys):lsprite
    stog.sprite_index* = (int32 self.alphys)
    push 0.334d
    stog.image_speed* = (int32 self.alphys)
0x000684:
    if !(== self.con 20s) goto 0x0007E0
0x000698:
    self.looktimer = (+ self.looktimer 1s)
    if !(> self.looktimer 8s) goto 0x0007E0
0x0006C4:
    self.rr = (floor[]:int32 (random[]:int32 (var 4s)))
    if !(== self.rr 0s) goto 0x000720
0x0006F8:
    push (int32 self.alphys):lsprite
    stog.sprite_index* = (int32 self.alphys)
0x000720:
    if !(== self.rr 1s) goto 0x00075C
0x000734:
    push (int32 self.alphys):rsprite
    stog.sprite_index* = (int32 self.alphys)
0x00075C:
    if !(== self.rr 2s) goto 0x000798
0x000770:
    push (int32 self.alphys):usprite
    stog.sprite_index* = (int32 self.alphys)
0x000798:
    if !(== self.rr 3s) goto 0x0007D4
0x0007AC:
    push (int32 self.alphys):dsprite
    stog.sprite_index* = (int32 self.alphys)
0x0007D4:
    self.looktimer = 0s
0x0007E0:
    if !(== self.con 20s) goto 0x000810
0x0007F4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000814
0x000810:
    push 0s
0x000814:
    if !pop goto 0x000838
0x000818:
    self.con = 21s
    stog.alarm[4s] = 100s
0x000838:
    if !(== self.con 21s) goto 0x00087C
0x00084C:
    stog.image_speed* = (- (int32 self.alphys):image_speed 0.0033d)
0x00087C:
    push (int32 self.alphys)
    if !(== self.con 22s) goto 0x000908
0x000890:
    push 0s
    stog.image_index* = (int32 self.alphys)
    push (int32 self.alphys):ltsprite
    stog.sprite_index* = (int32 self.alphys)
    push 0s
    stog.fun* = (int32 self.alphys)
    self.con = 23s
    stog.alarm[4s] = 50s
0x000908:
    if !(== self.con 24s) goto 0x000CC0
0x00091C:
    self.con = 25s
    call (caster_loop[]:int32 (var 1s) (var 1s) self.lab)
    self.labvolume = 1s
    global.faceemotion = 0s
    stog.msg[0s] = "* Ummm.../"
    stog.msg[1s] = "* H-h-hiya!/"
    stog.msg[2s] = "* I'm Dr. Alphys^1.&* I'm ASGORE's royal&  scientist!/"
    stog.msg[3s] = "\\E3* B-b-but^1, ahhhh^1,&  I'm not one of&  the \"bad guys\"!/"
    stog.msg[4s] = "\\E0* Actually^1, since you&  stepped out of the&  RUINS^1, I've^1, um.../"
    stog.msg[5s] = "\\E7* ... been \"observing\"&  your journey through&  my console./"
    stog.msg[6s] = "\\E3* Your fights..^1.&* Your friendships..^1.&* Everything!/"
    stog.msg[7s] = "\\E0* I was originally&  going to stop&  you^1, but.../"
    call (ini_open[]:int32 (var "undertale.ini"))
    self.ad = (ini_read_real[]:int32 (var 0s) (var "AD") (var "Alphys"))
    call (ini_close[]:int32 )
    stog.msg[8s] = "\\E7* Watching someone on&  a screen really makes&  you root for them./"
    if !(> self.ad 0s) goto 0x000ABC
0x000AA4:
    stog.msg[8s] = "\\E7* Watching you^1, I felt&  like..^1. like I was&  seeing an old friend./"
0x000ABC:
    stog.msg[9s] = "\\E0* S-so^1, ahhh^1, now I&  want to help you!/"
    stog.msg[10s] = "\\E6* Using my knowledge^1,&  I can easily guide&  you through Hotland!/"
    stog.msg[11s] = "\\E0* I know a way right&  to ASGORE's castle^1,&  no problem!/"
    stog.msg[12s] = "\\E2* .../"
    stog.msg[13s] = "\\E7* Well^1, actually^1, umm^1,&  there's just a&  tiny issue./"
    stog.msg[14s] = "\\E0* A long time ago^1, I&  made a robot named&  Mettaton./"
    stog.msg[15s] = "* Originally^1, I built&  him to be an&  entertainment robot./"
    stog.msg[16s] = "\\E7* Uh^1, you know^1, like&  a robotic TV star&  or something./"
    stog.msg[17s] = "\\E0* Anyway^1, recently I&  decided to make him&  more useful./"
    stog.msg[18s] = "\\E7* You know^1, just some&  small practical&  adjustments./"
    stog.msg[19s] = "\\E0* Like^1, um.../"
    stog.msg[20s] = "\\E4* Anti..^1. anti-human&  combat features?/"
    stog.msg[21s] = "\\E6* Of c-course^1, when I&  saw you coming^1, I&  immediately decided.../"
    stog.msg[22s] = "\\E3* I have to remove&  those features!/"
    stog.msg[23s] = "\\E4* Unfortunately^1, I may&  have made a teensy&  mistake while doing so./"
    stog.msg[24s] = "* And^1, um.../"
    stog.msg[25s] = "\\E5* Now he's an unstoppable&  killing machine with a&  thirst for human blood?/"
    stog.msg[26s] = "* Ehehehehe.../"
    stog.msg[27s] = "\\E8* Heh./"
    stog.msg[28s] = "\\E0* But^1, ummm^1, hopefully&  we won't run into&  him!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000CC0:
    if !(== self.con 25s) goto 0x000CF0
0x000CD4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000CF4
0x000CF0:
    push 0s
0x000CF4:
    if !pop goto 0x000D7C
0x000CF8:
    self.labvolume = (- self.labvolume 0.03d)
    call (caster_set_volume[]:int32 self.labvolume self.lab)
    if !(<= self.labvolume 0s) goto 0x000D7C
0x000D48:
    self.con = 26s
    stog.alarm[4s] = 60s
    call (caster_stop[]:int32 self.lab)
0x000D7C:
    if !(== self.con 27s) goto 0x000E58
0x000D90:
    call (scr_shake[]:int32 (var 2s) (var 2s) (var 2s))
    call (caster_play[]:int32 (var 1s) (var 0.25d) self.smash)
    call (scr_bouncer[]:int32 (var 0.8d) (var 2s) self.alphys)
    call (scr_bouncer[]:int32 (var 0.8d) (var 2s) (var 1570s))
    self.con = 28s
    stog.alarm[4s] = 30s
0x000E58:
    if !(== self.con 29s) goto 0x000EC0
0x000E6C:
    global.faceemotion = 1s
    stog.msg[0s] = "* ...?/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 30s
0x000EC0:
    if !(== self.con 30s) goto 0x000EF0
0x000ED4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000EF4
0x000EF0:
    push 0s
0x000EF4:
    if !pop goto 0x000F18
0x000EF8:
    self.con = 31s
    stog.alarm[4s] = 30s
0x000F18:
    if !(== self.con 32s) goto 0x000FE4
0x000F2C:
    call (scr_shake[]:int32 (var 2s) (var 3s) (var 3s))
    call (caster_play[]:int32 (var 1s) (var 0.4d) self.smash)
    call (scr_bouncer[]:int32 (var 1s) (var 3s) self.alphys)
    call (scr_bouncer[]:int32 (var 1s) (var 3s) (var 1570s))
    self.con = 33s
    stog.alarm[4s] = 30s
0x000FE4:
    if !(== self.con 34s) goto 0x00104C
0x000FF8:
    global.faceemotion = 0s
    stog.msg[0s] = "* Did you hear&  something?/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 35s
0x00104C:
    if !(== self.con 35s) goto 0x00107C
0x001060:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001080
0x00107C:
    push 0s
0x001080:
    if !pop goto 0x0010B0
0x001084:
    self.con = 36s
    stog.alarm[4s] = 30s
    self.smashamt = 0s
0x0010B0:
    if !(== self.con 37s) goto 0x001184
0x0010C4:
    call (caster_play[]:int32 (var 1s) (+ 0.5d self.smashamt) self.smash)
    call (scr_shake[]:int32 (var 2s) (var 3s) (var 3s))
    call (scr_bouncer[]:int32 (var 1s) (var 4s) self.alphys)
    call (scr_bouncer[]:int32 (var 1s) (var 4s) (var 1570s))
    self.con = 38s
    stog.alarm[4s] = 30s
0x001184:
    if !(== self.con 39s) goto 0x0011EC
0x001198:
    self.con = 37s
    self.smashamt = (+ self.smashamt 0.1d)
    if !(> self.smashamt 0.4d) goto 0x0011EC
0x0011E0:
    self.con = 40s
0x0011EC:
    if !(== self.con 40s) goto 0x001254
0x001200:
    global.faceemotion = 3s
    stog.msg[0s] = "* Oh no./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 41s
0x001254:
    if !(== self.con 41s) goto 0x001284
0x001268:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001288
0x001284:
    push 0s
0x001288:
    if !pop goto 0x0012AC
0x00128C:
    self.con = 42s
    stog.alarm[4s] = 20s
0x0012AC:
    if !(== self.con 43s) goto 0x00131C
0x0012C0:
    call (snd_play[]:int32 (var 44s))
    self.wht = (instance_create[]:int32 (var 113s) (var 0s) (var 0s))
    self.con = 44s
    stog.alarm[4s] = 40s
0x00131C:
    if !(== self.con 45s) goto 0x001434
0x001330:
    push (var 1363s)
    self.blk = (instance_create[]:int32 (var -2s) -1s (- 0s:view_xview 2s))
    push (- (int32 self.wht):depth 2s)
    stog.depth* = (int32 self.blk)
    push 0s
    stog.image_alpha* = (int32 self.blk)
    push 1s
    stog.visible* = (int32 self.blk)
    push 0s
    stog.image_speed* = (int32 self.blk)
    push 996s
    stog.sprite_index* = (int32 self.blk)
    push 200s
    stog.image_xscale* = (int32 self.blk)
    push 200s
    stog.image_yscale* = (int32 self.blk)
    self.con = 46s
0x001434:
    if !(== self.con 46s) goto 0x0014F0
0x001448:
    self.cheer = (caster_load[]:int32 (var "music/mett_cheer.ogg"))
    self.clap = (caster_load[]:int32 (var "music/mett_applause.ogg"))
    stog.image_alpha* = (+ (int32 self.blk):image_alpha 0.02d)
    if !(>= (int32 self.blk):image_alpha 1s) goto 0x0014F0
0x0014D0:
    push (int32 self.blk)
    self.con = 47s
    stog.alarm[4s] = 30s
0x0014F0:
    if !(== self.con 48s) goto 0x0016E8
0x001504:
    pushenv (int32 self.wht) 0x001520
0x001514:
    call (instance_destroy[]:int32 )
0x001520:
    popenv 0x001514
0x001524:
    global.typer = 27s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 0s
    [obj_mainchara].y = 120s
    push 120s
    stog.y* = (int32 self.alphys)
    stog.msg[0s] = "* OHHHH YES!/"
    stog.msg[1s] = "* WELCOME^1, BEAUTIES.../%%"
    self.con = 49s
    global.facing = 2s
    push (int32 self.alphys):usprite
    stog.sprite_index* = (int32 self.alphys)
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.mett = (instance_create[]:int32 (var 1172s) (var 60s) (var 760s))
    push 0s
    stog.image_speed* = (int32 self.mett)
    [obj_mettwallhole].visible = 1s
    self.gamesign = (instance_create[]:int32 (var 1363s) (var -40s) (var 720s))
    push 1654s
    stog.sprite_index* = (int32 self.gamesign)
    push 14s
    stog.depth* = (int32 self.gamesign)
    push 0.2d
    stog.image_speed* = (int32 self.gamesign)
    push 1s
    stog.visible* = (int32 self.gamesign)
0x0016E8:
    if !(== self.con 49s) goto 0x001718
0x0016FC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00171C
0x001718:
    push 0s
0x00171C:
    if !pop goto 0x001740
0x001720:
    self.con = 50s
    stog.alarm[4s] = 20s
0x001740:
    if !(== self.con 51s) goto 0x001788
0x001754:
    call (snd_play[]:int32 (var 10s))
    self.con = 52s
    stog.alarm[4s] = 50s
0x001788:
    if !(== self.con 53s) goto 0x0018C8
0x00179C:
    pushenv (int32 self.blk) 0x0017B8
0x0017AC:
    call (instance_destroy[]:int32 )
0x0017B8:
    popenv 0x0017AC
0x0017BC:
    call (snd_play[]:int32 (var 28s))
    push (var 1363s)
    self.shadow = (instance_create[]:int32 (var 0s) -1s 0s:view_xview)
    push 0s
    stog.image_speed* = (int32 self.shadow)
    push 1s
    stog.visible* = (int32 self.shadow)
    push 1s
    stog.image_alpha* = (int32 self.shadow)
    push 1583s
    stog.sprite_index* = (int32 self.shadow)
    push 15s
    stog.depth* = (int32 self.shadow)
    push 1s
    stog.d* = (int32 self.mett)
    push 10s
    stog.depth* = (int32 self.mett)
    self.con = 54s
    stog.alarm[4s] = 30s
0x0018C8:
    if !(== self.con 55s) goto 0x001944
0x0018DC:
    push 0.2d
    stog.image_speed* = (int32 self.mett)
    stog.msg[0s] = "\\M1* ... TO TODAY'S QUIZ SHOW!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 56s
0x001944:
    if !(== self.con 56s) goto 0x001974
0x001958:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001978
0x001974:
    push 0s
0x001978:
    if !pop goto 0x001A34
0x00197C:
    call (caster_play[]:int32 (var 1s) (var 1s) self.cheer)
    call (caster_loop[]:int32 (var 1s) (var 1s) self.gameshow)
    push 0.95d
    stog.image_alpha* = (int32 self.shadow)
    push (var 1284s)
    self.dball = (instance_create[]:int32 (var -30s) -1s (+ 0s:view_xview 60s))
    [obj_discoball].depth = 13s
    self.con = 57s
0x001A34:
    if !(== self.con 57s) goto 0x001B90
0x001A48:
    if (<= 2s 0) goto 0x001AC8
0x001A60:
    push 2s
    push (var 109s)
    push -1s
    call (instance_create[]:int32 (- 0s:view_yview 10s) -1s (+ 0s:view_xview (random[]:int32 (var 320s))))
    if (bool (- pop 1)) goto 0x001A60
0x001AC8:
    push (- pop 1)
    pop
    if !(< (int32 self.gamesign):y (+ (int32 self.gamesign):ystart 40s)) goto 0x001B2C
0x001B04:
    stog.y* = (+ (int32 self.gamesign):y 1s)
0x001B2C:
    push (int32 self.gamesign)
    stog.image_alpha* = (- (int32 self.shadow):image_alpha 0.005d)
    if !(< (int32 self.shadow):image_alpha 0.7d) goto 0x001B90
0x001B84:
    push (int32 self.shadow)
    self.con = 58s
0x001B90:
    if !(== self.con 58s) goto 0x001C04
0x001BA4:
    stog.msg[0s] = "\\M0* OH BOY^1!&* I CAN ALREADY TELL IT'S&  GONNA BE A GREAT SHOW!/"
    stog.msg[1s] = "\\M2* EVERYONE GIVE A BIG&  HAND FOR OUR WONDERFUL&  CONTESTANT!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 59s
0x001C04:
    if !(== self.con 59s) goto 0x001C34
0x001C18:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001C38
0x001C34:
    push 0s
0x001C38:
    if !pop goto 0x001CB4
0x001C3C:
    call (caster_play[]:int32 (var 1s) (var 1s) self.clap)
    push 0.5d
    stog.image_speed* = (int32 self.mett)
    stog.flag[20s] = 3s
    self.con = 60s
    stog.alarm[4s] = 90s
0x001CB4:
    if !(== self.con 60s) goto 0x001D40
0x001CC8:
    push (var 109s)
    self.conf = (instance_create[]:int32 -1s (- 0s:view_yview 10s) (+ 1570.x (random[]:int32 (var 20s))))
    push (+ -1s (random[]:int32 (var 2s)))
    stog.hspeed* = (int32 self.conf)
0x001D40:
    if !(== self.con 61s) goto 0x001E04
0x001D54:
    push 0.2d
    stog.image_speed* = (int32 self.mett)
    stog.msg[0s] = "\\M0* NEVER PLAYED BEFORE^1,&  GORGEOUS?/"
    stog.msg[1s] = "\\M2* NO PROBLEM^1!&* IT'S SIMPLE!/"
    stog.msg[2s] = "\\M4* THERE'S ONLY ONE&  RULE./"
    stog.msg[3s] = "* ANSWER CORRECTLY.../%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 63s
0x001E04:
    if !(== self.con 63s) goto 0x001E34
0x001E18:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001E38
0x001E34:
    push 0s
0x001E38:
    if !pop goto 0x001E88
0x001E3C:
    push 0s
    stog.image_speed* = (int32 self.mett)
    call (snd_play[]:int32 (var 10s))
    self.con = 64s
    stog.alarm[4s] = 60s
0x001E88:
    if !(== self.con 65s) goto 0x001F2C
0x001E9C:
    call (caster_free[]:int32 (var -3s))
    stog.flag[20s] = 5s
    push 0.25d
    stog.image_speed* = (int32 self.mett)
    stog.msg[0s] = "* OR YOU DIE!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 66s
0x001F2C:
    if !(== self.con 66s) goto 0x001F5C
0x001F40:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001F60
0x001F5C:
    push 0s
0x001F60:
    if !pop goto 0x002040
0x001F64:
    if !(bool (instance_exists[]:int32 (var 109s))) goto 0x001F94
0x001F7C:
    pushenv 109s 0x001F90
0x001F84:
    call (instance_destroy[]:int32 )
0x001F90:
    popenv 0x001F84
0x001F94:
    self.active = 0s
    self.speed = 0s
    global.interact = 1s
    call (caster_free[]:int32 (var -3s))
    self.con = 67s
    stog.alarm[4s] = 10s
    global.border = 0s
    global.battlegroup = 48s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.talkedto = 0s
0x002040:
    if !(== self.con 68s) goto 0x002100
0x002054:
    pushenv (int32 self.mett) 0x002070
0x002064:
    call (instance_destroy[]:int32 )
0x002070:
    popenv 0x002064
0x002074:
    pushenv (int32 self.shadow) 0x002090
0x002084:
    call (instance_destroy[]:int32 )
0x002090:
    popenv 0x002084
0x002094:
    pushenv 1284s 0x0020A8
0x00209C:
    call (instance_destroy[]:int32 )
0x0020A8:
    popenv 0x00209C
0x0020AC:
    pushenv (int32 self.gamesign) 0x0020C8
0x0020BC:
    call (instance_destroy[]:int32 )
0x0020C8:
    popenv 0x0020BC
0x0020CC:
    self.con = 68.1d
    global.interact = 1s
    stog.alarm[4s] = 14s
0x002100:
    if !(== self.con 69.1d) goto 0x002138
0x00211C:
    push (== (instance_exists[]:int32 (var 142s)) 0s)
    goto 0x00213C
0x002138:
    push 0s
0x00213C:
    if !pop goto 0x002194
0x002140:
    global.mercy = 0s
    global.interact = 1s
    global.currentsong = (caster_load[]:int32 (var "music/lab.ogg"))
    self.con = 70s
    stog.alarm[4s] = 20s
0x002194:
    if !(== self.con 70s) goto 0x0021B4
0x0021A8:
    global.interact = 1s
0x0021B4:
    if !(== self.con 71s) goto 0x002294
0x0021C8:
    stog.flag[462s] = 0s
    push (int32 self.alphys):lsprite
    stog.sprite_index* = (int32 self.alphys)
    stog.msg[0s] = "* .../"
    stog.msg[1s] = "\\E0* Well that was&  certainly something./%%"
    global.typer = 47s
    global.facechoice = 6s
    global.faceemotion = 1s
    global.msc = 0s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 72s
0x002294:
    if !(== self.con 72s) goto 0x0022C4
0x0022A8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0022C8
0x0022C4:
    push 0s
0x0022C8:
    if !pop goto 0x00234C
0x0022CC:
    self.alphys2 = (instance_create[]:int32 (var 1170s) (int32 self.alphys):y (int32 self.alphys):x)
    pushenv (int32 self.alphys) 0x002328
0x00231C:
    call (instance_destroy[]:int32 )
0x002328:
    popenv 0x00231C
0x00232C:
    self.con = 73s
    stog.alarm[4s] = 50s
0x00234C:
    if !(== self.con 73s) goto 0x002390
0x002360:
    push -1s
    stog.view_xview[(- 0s:view_xview 2s)] = 0s
    global.interact = 1s
0x002390:
    if !(== self.con 74s) goto 0x002404
0x0023A4:
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    [obj_mainchara].cutscene = 0s
    global.interact = 0s
    self.con = 75s
    global.plot = 126s
    call (instance_destroy[]:int32 )
0x002404:
    exit
