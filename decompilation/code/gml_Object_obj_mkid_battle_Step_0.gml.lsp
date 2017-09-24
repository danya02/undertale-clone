0x000000:
    if !(== global.mnfight 3s) goto 0x000020
0x000014:
    self.attacked = 0s
0x000020:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0001C8
0x00003C:
    push -5s
    if !(== 0s:monster 1s) goto 0x0000C0
0x000058:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0000C0
0x000090:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0000C0:
    push -5s
    if !(== 1s:monster 1s) goto 0x000144
0x0000DC:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000144
0x000114:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000144:
    push -5s
    if !(== 2s:monster 1s) goto 0x0001C8
0x000160:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001C8
0x000198:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001C8:
    if !(== global.mnfight 1s) goto 0x000230
0x0001DC:
    if !(== self.talked 0s) goto 0x000230
0x0001F0:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000230:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002A0
0x000248:
    push -1s
    if !(> 5s:alarm 5s) goto 0x000284
0x000264:
    push 758.x
    push (== -5s 0s:idealborder)
    goto 0x000288
0x000284:
    push 0s
0x000288:
    if !pop goto 0x0002A0
0x00028C:
    stog.alarm[5s] = 2s
0x0002A0:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x00030C
0x0002C4:
    global.faceemotion = 6s
    call (caster_stop[]:int32 global.batmusic)
    self.con = 15s
    stog.hurtanim[(int32 self.myself)] = 99s
0x00030C:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000344
0x000330:
    push (== self.con 20s)
    goto 0x000348
0x000344:
    push 0s
0x000348:
    if !pop goto 0x0003A0
0x00034C:
    pushenv (int32 self.dmgwriter) 0x000370
0x00035C:
    stog.alarm[2s] = 15s
0x000370:
    popenv 0x00035C
0x000374:
    self.con = 20.1d
    global.myfight = 0s
    global.mnfight = 99s
0x0003A0:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0004A0
0x0003C4:
    if !(> global.damage 0s) goto 0x000400
0x0003D8:
    global.damage = (+ 20000s (round[]:int32 (random[]:int32 (var 2964s))))
0x000400:
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000468
0x000454:
    stog.alarm[2s] = 30s
0x000468:
    popenv 0x000454
0x00046C:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0004A0:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00058C
0x0004C4:
    global.damage = (+ 20000s (round[]:int32 (random[]:int32 (var 2964s))))
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000554
0x000540:
    stog.alarm[2s] = 30s
0x000554:
    popenv 0x000540
0x000558:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x00058C:
    if !(== global.mnfight 2s) goto 0x000778
0x0005A0:
    if !(== self.attacked 0s) goto 0x000724
0x0005B4:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 150s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x000610
0x0005F0:
    global.firingrate = (* global.firingrate 2.5d)
0x000610:
    if !(== self.pop 2s) goto 0x000644
0x000624:
    global.firingrate = (* global.firingrate 1.8d)
0x000644:
    if !(>= self.mycommand 50s) goto 0x0006B0
0x000658:
    self.gen = (instance_create[]:int32 (var 334s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x000718
0x0006B0:
    push (var 331s)
    push -5s
    push (+ 2s:idealborder 2s)
    self.gen = (instance_create[]:int32 -5s 0s:idealborder (- (/ (+ -5s 1s:idealborder) (double 2s)) 30s))
0x000718:
    self.attacked = 1s
0x000724:
    stog.msg[0s] = "* Monster Kid quivers anxiously."
    if !(== self.mercymod 999999) goto 0x00076C
0x000754:
    global.turntimer = -1s
    global.mnfight = 3s
0x00076C:
    self.whatiheard = -1s
0x000778:
    if !(== global.myfight 2s) goto 0x000868
0x00078C:
    if !(!= self.whatiheard -1s) goto 0x000868
0x0007A0:
    if !(== global.heard 0s) goto 0x000868
0x0007B4:
    if !(== self.whatiheard 0s) goto 0x00085C
0x0007C8:
    global.msc = 0s
    stog.msg[0s] = "* MONSTER KID 2 ATK 2 DEF&* Looks like free EXP./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x00084C
0x000840:
    self.halt = 0s
0x00084C:
    popenv 0x000840
0x000850:
    self.whatiheard = 9s
0x00085C:
    global.heard = 1s
0x000868:
    if !(== self.con 15s) goto 0x00093C
0x00087C:
    stog.flag[20s] = 1s
    self.wht = (scr_marker[]:int32 (var 999s) (var -2s) (var -2s))
    push 0s
    stog.image_speed* = (int32 self.wht)
    push 400s
    stog.image_xscale* = (int32 self.wht)
    push 400s
    stog.image_yscale* = (int32 self.wht)
    push 0s
    stog.image_alpha* = (int32 self.wht)
    push -9000s
    stog.depth* = (int32 self.wht)
    self.con = 16s
0x00093C:
    if !(== self.con 16s) goto 0x000A3C
0x000950:
    stog.image_alpha* = (+ (int32 self.wht):image_alpha 0.02d)
    push -5s
    if !(== 13s:tempvalue 1s) goto 0x0009CC
0x00099C:
    push (int32 self.wht)
    stog.image_alpha* = (+ (int32 self.wht):image_alpha 0.02d)
0x0009CC:
    push (int32 self.wht)
    if !(>= (int32 self.wht):image_alpha 1s) goto 0x000A3C
0x0009EC:
    self.con = 17s
    stog.alarm[4s] = 45s
    push -5s
    if !(== 13s:tempvalue 1s) goto 0x000A3C
0x000A28:
    stog.alarm[4s] = 15s
0x000A3C:
    if !(== self.con 18s) goto 0x000B90
0x000A50:
    global.faceemotion = 0s
    self.undyne = (instance_create[]:int32 (var 283s) (var 20s) (var 210s))
    push 291s
    stog.sprite_index* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    push 1s
    stog.type* = (int32 self.undyne)
    self.shk = (instance_create[]:int32 (var 1669s) (var 0s) (var 0s))
    push self.undyne
    stog.obj* = (int32 self.shk)
    push 70s
    stog.x* = (int32 self.mypart1)
    pushenv (int32 self.wht) 0x000B44
0x000B38:
    call (instance_destroy[]:int32 )
0x000B44:
    popenv 0x000B38
0x000B48:
    self.con = 19s
    self.shudder = 8s
    stog.alarm[3s] = 1s
    stog.hurtanim[(int32 self.myself)] = 3s
0x000B90:
    if !(== self.con 20.1d) goto 0x000C04
0x000BAC:
    self.con = 20.2d
    stog.alarm[4s] = 80s
    push -5s
    if !(== 13s:tempvalue 1s) goto 0x000C04
0x000BF0:
    stog.alarm[4s] = 30s
0x000C04:
    if !(== self.con 21.2d) goto 0x000CFC
0x000C20:
    global.msc = 0s
    global.typer = 33s
    self.skiptext = 0s
    global.faceemotion = 0s
    stog.flag[20s] = 2s
    stog.msg[0s] = "Undyne..^1.&You're..^1.&You're hurt.../%%"
    call (scr_blcon_x[]:int32 (- (int32 self.mypart1):y 110s) (- (int32 self.mypart1):x 65s))
    [obj_blconwideslave].sprite_index = 24s
    push -2000s
    stog.depth* = (int32 self.blcon)
    [OBJ_WRITER].depth = -3000s
    self.con = 23s
0x000CFC:
    if !(== self.con 23s) goto 0x000D2C
0x000D10:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D30
0x000D2C:
    push 0s
0x000D30:
    if !pop goto 0x000DC4
0x000D34:
    global.faceemotion = 1s
    global.typer = 39s
    stog.msg[0s] = "Hurt?&It's nothing./"
    stog.msg[1s] = "Next time^1, listen&when I tell you&to leave^1, okay?/%%"
    call (scr_blcon_x[]:int32 (int32 self.undyne):y (+ (int32 self.undyne):x 160s))
    self.con = 24s
0x000DC4:
    if !(== self.con 24s) goto 0x000DF4
0x000DD8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000DF8
0x000DF4:
    push 0s
0x000DF8:
    if !pop goto 0x000E7C
0x000DFC:
    global.typer = 33s
    stog.msg[0s] = "Undyne..^1.&I.../%%"
    call (scr_blcon_x[]:int32 (- (int32 self.mypart1):y 110s) (- (int32 self.mypart1):x 65s))
    [obj_blconwideslave].sprite_index = 24s
    self.con = 25s
0x000E7C:
    if !(== self.con 25s) goto 0x000EAC
0x000E90:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000EB0
0x000EAC:
    push 0s
0x000EB0:
    if !pop goto 0x000F44
0x000EB4:
    global.faceemotion = 2s
    global.typer = 39s
    stog.msg[0s] = "I'll take care of&this!/"
    stog.msg[1s] = "Get out of here!/%%"
    call (scr_blcon_x[]:int32 (int32 self.undyne):y (+ (int32 self.undyne):x 160s))
    self.con = 26s
0x000F44:
    if !(== self.con 26s) goto 0x000F74
0x000F58:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000F78
0x000F74:
    push 0s
0x000F78:
    if !pop goto 0x001004
0x000F7C:
    stog.flag[20s] = 3s
    self.con = 27s
    stog.alarm[4s] = 30s
    push -5s
    if !(== 13s:tempvalue 1s) goto 0x001004
0x000FCC:
    push -12s
    stog.hspeed* = (int32 self.mypart1)
    self.con = 199s
    stog.alarm[4s] = 10s
0x001004:
    if !(== self.con 28s) goto 0x001050
0x001018:
    push -2s
    stog.hspeed* = (int32 self.mypart1)
    self.con = 29s
    stog.alarm[4s] = 30s
0x001050:
    if !(== self.con 30s) goto 0x00109C
0x001064:
    self.con = 31s
    push 0s
    stog.hspeed* = (int32 self.mypart1)
    stog.alarm[4s] = 30s
0x00109C:
    if !(== self.con 32s) goto 0x0010E8
0x0010B0:
    push -8s
    stog.hspeed* = (int32 self.mypart1)
    self.con = 33s
    stog.alarm[4s] = 80s
0x0010E8:
    if !(== self.con 34s) goto 0x00122C
0x0010FC:
    self.siner = (instance_create[]:int32 (var 285s) (int32 self.undyne):y (int32 self.undyne):x)
    push 4s
    stog.idealww* = (int32 self.siner)
    global.faceemotion = 3s
    global.typer = 40s
    stog.msg[0s] = "... heh...&\"It's nothing\".../"
    stog.msg[1s] = "No..^1. s-somehow^1,&with just one&hit.../"
    stog.msg[2s] = "I'm already.../"
    stog.msg[3s] = "Already.../"
    stog.msg[4s] = "D..^1. damn it..../%%"
    call (scr_blcon_x[]:int32 (int32 self.undyne):y (+ (int32 self.undyne):x 160s))
    self.con = 35s
0x00122C:
    if !(== self.con 34s) goto 0x00125C
0x001240:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001260
0x00125C:
    push 0s
0x001260:
    if !pop goto 0x001314
0x001264:
    if !(== 782.stringno 1s) goto 0x001290
0x001278:
    push 6s
    stog.idealww* = (int32 self.siner)
0x001290:
    if !(== 782.stringno 2s) goto 0x0012BC
0x0012A4:
    push 8s
    stog.idealww* = (int32 self.siner)
0x0012BC:
    if !(== 782.stringno 3s) goto 0x0012E8
0x0012D0:
    push 10s
    stog.idealww* = (int32 self.siner)
0x0012E8:
    if !(== 782.stringno 4s) goto 0x001314
0x0012FC:
    push 12s
    stog.idealww* = (int32 self.siner)
0x001314:
    if !(== self.con 35s) goto 0x001344
0x001328:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001348
0x001344:
    push 0s
0x001348:
    if !pop goto 0x0013F4
0x00134C:
    global.faceemotion = 4s
    global.typer = 42s
    stog.msg[0s] = "Papyrus..^1.&Alphys..^1.&ASGORE.../"
    stog.msg[1s] = "Just like that^1,&I.../"
    stog.msg[2s] = "I've failed you./%%"
    call (scr_blcon_x[]:int32 (int32 self.undyne):y (+ (int32 self.undyne):x 160s))
    self.con = 36s
0x0013F4:
    if !(== self.con 35s) goto 0x001424
0x001408:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001428
0x001424:
    push 0s
0x001428:
    if !pop goto 0x0014B0
0x00142C:
    if !(== 782.stringno 1s) goto 0x001458
0x001440:
    push 15s
    stog.idealww* = (int32 self.siner)
0x001458:
    if !(== 782.stringno 2s) goto 0x001484
0x00146C:
    push 20s
    stog.idealww* = (int32 self.siner)
0x001484:
    if !(== 782.stringno 3s) goto 0x0014B0
0x001498:
    push 25s
    stog.idealww* = (int32 self.siner)
0x0014B0:
    if !(== self.con 36s) goto 0x0014E0
0x0014C4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0014E4
0x0014E0:
    push 0s
0x0014E4:
    if !pop goto 0x001574
0x0014E8:
    if !(!= (int32 self.siner):idealww 45s) goto 0x00151C
0x001508:
    call (snd_play[]:int32 (var 91s))
0x00151C:
    push 45s
    stog.idealww* = (int32 self.siner)
    if !(>= (int32 self.siner):ww 45s) goto 0x001574
0x001554:
    self.con = 37s
    stog.alarm[4s] = 60s
0x001574:
    if !(== self.con 38s) goto 0x00163C
0x001588:
    self.vol = 0s
    global.faceemotion = 5s
    push 8s
    stog.idealww* = (int32 self.siner)
    global.typer = 41s
    stog.msg[0s] = ".../"
    stog.msg[1s] = "No.../%%"
    call (scr_blcon_x[]:int32 (int32 self.undyne):y (+ (int32 self.undyne):x 160s))
    self.con = 39s
0x00163C:
    if !(== self.con 39s) goto 0x00166C
0x001650:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001670
0x00166C:
    push 0s
0x001670:
    if !pop goto 0x0018D8
0x001674:
    self.vol = 0s
    self.truthmusic = (caster_load[]:int32 (var "music/x_undyne_pre.ogg"))
    call (caster_loop[]:int32 (var 0.9d) self.vol self.truthmusic)
    global.faceemotion = 5s
    global.typer = 41s
    stog.msg[0s] = "My body..^1.&It feels like it's&splitting apart./"
    stog.msg[1s] = "Like any instant..^1.&I'll scatter into&a million pieces./"
    stog.msg[2s] = "But.../"
    stog.msg[3s] = "Deep^1, deep in my&soul./"
    stog.msg[4s] = "There's a burning&feeling I can't&describe./"
    stog.msg[5s] = "\\E6A burning feeling&that WON'T let me&die./"
    stog.msg[6s] = "\\E5This isn't just&about monsters&anymore^1, is it?/"
    stog.msg[7s] = "If you get past&me^1, you'll.../"
    stog.msg[8s] = "You'll destroy them&all^1, won't you?/"
    stog.msg[9s] = "Monsters..^1.&Humans..^1.&Everyone.../"
    stog.msg[10s] = "Everyone's hopes^1.&Everyone's dreams^1.&Vanquished in an&instant./"
    stog.msg[11s] = "\\E6But I WON'T let&you do that./"
    stog.msg[12s] = "Right now^1, everyone&in the world.../"
    stog.msg[13s] = "\\E7I can feel their&hearts beating as&one./"
    stog.msg[14s] = "And we all have&ONE goal./"
    stog.msg[15s] = "\\E8To defeat YOU./"
    stog.msg[16s] = "\\E7Human^1.&No^1, WHATEVER you&are./"
    stog.msg[17s] = "\\E8For the sake of&the whole world.../%%"
    call (scr_blcon_x[]:int32 (int32 self.undyne):y (+ (int32 self.undyne):x 160s))
    self.con = 40s
0x0018D8:
    if !(== self.con 40s) goto 0x001908
0x0018EC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00190C
0x001908:
    push 0s
0x00190C:
    if !pop goto 0x00197C
0x001910:
    global.typer = 42s
    stog.msg[0s] = "\\E9I^1, UNDYNE^1, will&strike you down!/%%"
    call (scr_blcon_x[]:int32 (int32 self.undyne):y (+ (int32 self.undyne):x 160s))
    self.con = 41s
0x00197C:
    if (== self.con 40s) goto 0x0019A4
0x001990:
    push (== self.con 41s)
    goto 0x0019A8
0x0019A4:
    push 1s
0x0019A8:
    if !pop goto 0x001A04
0x0019AC:
    if !(<= self.vol 0.8d) goto 0x0019E8
0x0019C8:
    self.vol = (+ self.vol 0.02d)
0x0019E8:
    call (caster_set_volume[]:int32 self.vol self.truthmusic)
0x001A04:
    if !(== self.con 41s) goto 0x001A34
0x001A18:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001A38
0x001A34:
    push 0s
0x001A38:
    if !pop goto 0x001AD0
0x001A3C:
    call (caster_free[]:int32 self.truthmusic)
    self.risesfx = (caster_load[]:int32 (var "music/f_destroyed2.ogg"))
    self.vol = 0s
    self.pit = 0.5d
    call (caster_loop[]:int32 (var 0.5d) (var 0s) self.risesfx)
    push 50s
    stog.idealww* = (int32 self.siner)
0x001AD0:
    if !(== self.con 41s) goto 0x001B00
0x001AE4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001B04
0x001B00:
    push 0s
0x001B04:
    if !pop goto 0x001B9C
0x001B08:
    self.wht = (scr_marker[]:int32 (var 999s) (var -2s) (var -2s))
    push 0s
    stog.image_speed* = (int32 self.wht)
    push 400s
    stog.image_xscale* = (int32 self.wht)
    push 400s
    stog.image_yscale* = (int32 self.wht)
    push 0s
    stog.image_alpha* = (int32 self.wht)
    self.con = 42s
0x001B9C:
    if !(== self.con 42s) goto 0x001C20
0x001BB0:
    stog.image_alpha* = (+ (int32 self.wht):image_alpha 0.01d)
    if !(>= (int32 self.wht):image_alpha 1s) goto 0x001C20
0x001C00:
    push (int32 self.wht)
    self.con = 43s
    stog.alarm[4s] = 55s
0x001C20:
    if !(== self.con 42s) goto 0x001CD4
0x001C34:
    if !(< self.vol 1s) goto 0x001C68
0x001C48:
    self.vol = (+ self.vol 0.01d)
0x001C68:
    if !(< self.pit 2s) goto 0x001C9C
0x001C7C:
    self.pit = (+ self.pit 0.01d)
0x001C9C:
    call (caster_set_volume[]:int32 self.vol self.risesfx)
    call (caster_set_pitch[]:int32 self.pit self.risesfx)
0x001CD4:
    if !(== self.con 43s) goto 0x001D88
0x001CE8:
    if !(> self.vol 0s) goto 0x001D1C
0x001CFC:
    self.vol = (- self.vol 0.03d)
0x001D1C:
    if !(< self.pit 2s) goto 0x001D50
0x001D30:
    self.pit = (+ self.pit 0.02d)
0x001D50:
    call (caster_set_volume[]:int32 self.vol self.risesfx)
    call (caster_set_pitch[]:int32 self.pit self.risesfx)
0x001D88:
    if !(== self.con 44s) goto 0x001E7C
0x001D9C:
    pushenv (int32 self.wht) 0x001DB8
0x001DAC:
    call (instance_destroy[]:int32 )
0x001DB8:
    popenv 0x001DAC
0x001DBC:
    call (caster_free[]:int32 self.risesfx)
    push 300s
    stog.sprite_index* = (int32 self.undyne)
    push -40s
    stog.y* = (int32 self.undyne)
    push -40s
    stog.yy* = (int32 self.siner)
    push 0s
    stog.y* = (int32 self.siner)
    if !(== global.osflavor 2s) goto 0x001E5C
0x001E44:
    push -40s
    stog.y* = (int32 self.siner)
0x001E5C:
    self.con = 45s
    stog.alarm[4s] = 30s
0x001E7C:
    if !(== self.con 45s) goto 0x001EBC
0x001E90:
    if !(== global.osflavor 2s) goto 0x001EBC
0x001EA4:
    push -40s
    stog.y* = (int32 self.siner)
0x001EBC:
    if !(== self.con 46s) goto 0x001F08
0x001ED0:
    push 0s
    stog.idealww* = (int32 self.siner)
    self.con = 47s
    stog.alarm[4s] = 100s
0x001F08:
    if !(== self.con 47s) goto 0x001F6C
0x001F1C:
    if !(> (int32 self.siner):ww 0s) goto 0x001F6C
0x001F3C:
    stog.ww* = (- (int32 self.siner):ww 0.5d)
0x001F6C:
    push (int32 self.siner)
    if !(== self.con 48s) goto 0x002020
0x001F80:
    pushenv (int32 self.siner) 0x001F9C
0x001F90:
    call (instance_destroy[]:int32 )
0x001F9C:
    popenv 0x001F90
0x001FA0:
    global.typer = 93s
    global.msc = 0s
    stog.msg[0s] = "You're gonna have&to try a little&harder than THAT./%%"
    call (scr_blcon_x[]:int32 (+ (int32 self.undyne):y 50s) (+ (int32 self.undyne):x 163s))
    self.con = 49s
0x002020:
    if !(== self.con 49s) goto 0x002050
0x002034:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002054
0x002050:
    push 0s
0x002054:
    if !pop goto 0x002084
0x002058:
    global.battlegroup = 92s
    call (caster_free[]:int32 (var -3s))
    call (room_restart[]:int32 )
0x002084:
    if !(>= self.con 20s) goto 0x0020AC
0x002098:
    push (<= self.con 47s)
    goto 0x0020B0
0x0020AC:
    push 0s
0x0020B0:
    if !pop goto 0x0020C0
0x0020B4:
    call (scr_textskip[]:int32 )
0x0020C0:
    if !(== self.con 99s) goto 0x002144
0x0020D4:
    stog.flag[27s] = 1s
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    self.cc = (caster_get_volume[]:int32 global.batmusic)
    self.con = 100s
    stog.alarm[4s] = 15s
0x002144:
    if !(== self.con 100s) goto 0x002194
0x002158:
    self.cc = (* self.cc 0.6d)
    call (caster_set_volume[]:int32 self.cc global.batmusic)
0x002194:
    if !(== self.con 101s) goto 0x0021F4
0x0021A8:
    call (caster_free[]:int32 global.batmusic)
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    call (room_goto[]:int32 global.currentroom)
0x0021F4:
    if !(== self.con 200s) goto 0x002308
0x002208:
    self.siner = (instance_create[]:int32 (var 285s) (int32 self.undyne):y (int32 self.undyne):x)
    push 4s
    stog.idealww* = (int32 self.siner)
    global.faceemotion = 5s
    push 8s
    stog.idealww* = (int32 self.siner)
    global.typer = 40s
    stog.msg[0s] = "You.../"
    stog.msg[1s] = "\\E9You're gonna have&to try a little&harder than THAT!/%%"
    call (scr_blcon_x[]:int32 (int32 self.undyne):y (+ (int32 self.undyne):x 166s))
    self.con = 201s
0x002308:
    if !(== self.con 201s) goto 0x002328
0x00231C:
    call (scr_textskip[]:int32 )
0x002328:
    if !(== self.con 201s) goto 0x002358
0x00233C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00235C
0x002358:
    push 0s
0x00235C:
    if !pop goto 0x002474
0x002360:
    self.risesfx = (caster_load[]:int32 (var "music/f_destroyed2.ogg"))
    self.vol = 0s
    self.pit = 0.5d
    call (caster_loop[]:int32 (var 0.5d) (var 0s) self.risesfx)
    push 50s
    stog.idealww* = (int32 self.siner)
    self.wht = (scr_marker[]:int32 (var 999s) (var -2s) (var -2s))
    push 0s
    stog.image_speed* = (int32 self.wht)
    push 400s
    stog.image_xscale* = (int32 self.wht)
    push 400s
    stog.image_yscale* = (int32 self.wht)
    push 0s
    stog.image_alpha* = (int32 self.wht)
    self.con = 202s
0x002474:
    if !(== self.con 202s) goto 0x0024F8
0x002488:
    stog.image_alpha* = (+ (int32 self.wht):image_alpha 0.02d)
    if !(>= (int32 self.wht):image_alpha 1s) goto 0x0024F8
0x0024D8:
    push (int32 self.wht)
    self.con = 203s
    stog.alarm[4s] = 55s
0x0024F8:
    if !(== self.con 202s) goto 0x0025AC
0x00250C:
    if !(< self.vol 1s) goto 0x002540
0x002520:
    self.vol = (+ self.vol 0.02d)
0x002540:
    if !(< self.pit 2s) goto 0x002574
0x002554:
    self.pit = (+ self.pit 0.02d)
0x002574:
    call (caster_set_volume[]:int32 self.vol self.risesfx)
    call (caster_set_pitch[]:int32 self.pit self.risesfx)
0x0025AC:
    if !(== self.con 203s) goto 0x002660
0x0025C0:
    if !(> self.vol 0s) goto 0x0025F4
0x0025D4:
    self.vol = (- self.vol 0.03d)
0x0025F4:
    if !(< self.pit 2s) goto 0x002628
0x002608:
    self.pit = (+ self.pit 0.02d)
0x002628:
    call (caster_set_volume[]:int32 self.vol self.risesfx)
    call (caster_set_pitch[]:int32 self.pit self.risesfx)
0x002660:
    if !(== self.con 204s) goto 0x002690
0x002674:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002694
0x002690:
    push 0s
0x002694:
    if !pop goto 0x0026C4
0x002698:
    global.battlegroup = 92s
    call (caster_free[]:int32 (var -3s))
    call (room_restart[]:int32 )
0x0026C4:
    if !(== global.myfight 4s) goto 0x002724
0x0026D8:
    if !(== global.mercyuse 0s) goto 0x002724
0x0026EC:
    self.con = 99s
    global.myfight = -99s
    global.mnfight = -99s
    call (script_execute[]:int32 (var 163s))
0x002724:
    if !(== self.mercymod 222s) goto 0x002754
0x002738:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002758
0x002754:
    push 0s
0x002758:
    if !pop goto 0x002770
0x00275C:
    call (script_execute[]:int32 (var 163s))
0x002770:
    exit
