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
    if !(== global.mnfight 1s) goto 0x0002B8
0x0001DC:
    if !(== self.talked 0s) goto 0x0002B8
0x0001F0:
    if !(>= self.turns 19s) goto 0x000218
0x000204:
    push (>= global.ratings 10000s)
    goto 0x00021C
0x000218:
    push 0s
0x00021C:
    if !pop goto 0x00022C
0x000220:
    self.qualify = 1s
0x00022C:
    if !(< self.turns 19s) goto 0x000254
0x000240:
    push (>= global.ratings 12000s)
    goto 0x000258
0x000254:
    push 0s
0x000258:
    if !pop goto 0x000268
0x00025C:
    self.qualify = 1s
0x000268:
    if !(== self.qualify 0s) goto 0x000294
0x00027C:
    stog.alarm[6s] = 1s
    goto 0x0002A0
0x000294:
    self.con = 90s
0x0002A0:
    self.talked = 1s
    global.heard = 0s
0x0002B8:
    if !(== self.talked 2s) goto 0x0002E8
0x0002CC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0002EC
0x0002E8:
    push 0s
0x0002EC:
    if !pop goto 0x000304
0x0002F0:
    call (event_user[]:int32 (var 1s))
0x000304:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000368
0x000328:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000368:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00049C
0x00038C:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0003E0
0x0003CC:
    stog.alarm[2s] = 15s
0x0003E0:
    popenv 0x0003CC
0x0003E4:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000458
0x000408:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00049C
0x000458:
    if !(== self.killed 0s) goto 0x00049C
0x00046C:
    global.mnfight = -1s
    global.myfight = -1s
    self.killed = 1s
    self.con = 50s
0x00049C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00056C
0x0004C0:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000534
0x000520:
    stog.alarm[2s] = 30s
0x000534:
    popenv 0x000520
0x000538:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x00056C:
    if !(== global.mnfight 2s) goto 0x0008C4
0x000580:
    if !(== self.attacked 0s) goto 0x000888
0x000594:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 10s
    if !(>= self.turns 1s) goto 0x000718
0x0005C4:
    global.attacktype = (+ 29s self.turns)
    if !(== global.attacktype 54s) goto 0x000614
0x0005F0:
    self.turns = (- self.turns 5s)
    global.attacktype = 49s
0x000614:
    if !(>= global.attacktype 50s) goto 0x0006F4
0x000628:
    push -5s
    if !(>= (int32 self.myself):monsterdef -10s) goto 0x000668
0x00064C:
    stog.monsterdef[(int32 self.myself)] = -10s
0x000668:
    push -5s
    stog.monsterdef[(- (int32 self.myself):monsterdef 5s)] = (int32 self.myself)
    if !(== global.attacktype 50s) goto 0x0006B4
0x0006A8:
    global.attacktype = 38s
0x0006B4:
    if !(== global.attacktype 51s) goto 0x0006D4
0x0006C8:
    global.attacktype = 54s
0x0006D4:
    if !(== global.attacktype 52s) goto 0x0006F4
0x0006E8:
    global.attacktype = 56s
0x0006F4:
    call (instance_create[]:int32 (var 414s) (var 0s) (var 0s))
0x000718:
    if !(>= self.mycommand 0s) goto 0x000744
0x00072C:
    stog.msg[0s] = "* Mettaton."
0x000744:
    if !(>= self.mycommand 25s) goto 0x000770
0x000758:
    stog.msg[0s] = "* Mettaton."
0x000770:
    if !(>= self.mycommand 50s) goto 0x00079C
0x000784:
    stog.msg[0s] = "* Mettaton."
0x00079C:
    if !(>= self.mycommand 75s) goto 0x0007C8
0x0007B0:
    stog.msg[0s] = "* Mettaton."
0x0007C8:
    if !(>= self.mycommand 90s) goto 0x0007F4
0x0007DC:
    stog.msg[0s] = "* Smells like Mettaton."
0x0007F4:
    if !(> self.mercymod 100s) goto 0x000820
0x000808:
    stog.msg[0s] = "* Monster seems satisfied."
0x000820:
    push -5s
    push (int32 self.myself):monsterhp
    if !(<= -5s (/ (int32 self.myself):monstermaxhp (double 4s))) goto 0x00087C
0x000864:
    stog.msg[0s] = "* Mettaton has low HP."
0x00087C:
    self.attacked = 1s
0x000888:
    if !(== self.mercymod 999999) goto 0x0008B8
0x0008A0:
    global.turntimer = -1s
    global.mnfight = 3s
0x0008B8:
    self.whatiheard = -1s
0x0008C4:
    if !(== global.myfight 2s) goto 0x000CB8
0x0008D8:
    if !(!= self.whatiheard -1s) goto 0x000CB8
0x0008EC:
    if !(== global.heard 0s) goto 0x000CB8
0x000900:
    if !(== self.whatiheard 0s) goto 0x0009A8
0x000914:
    global.msc = 0s
    stog.msg[0s] = "* METTATON EX - ATK 47 DEF 47&* His weak point is his&  heart-shaped core./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000998
0x00098C:
    self.halt = 0s
0x000998:
    popenv 0x00098C
0x00099C:
    self.whatiheard = 9s
0x0009A8:
    if !(== self.whatiheard 3s) goto 0x000A74
0x0009BC:
    global.msc = 0s
    stog.msg[0s] = "* You say you aren't going&  to get hit at ALL./"
    stog.msg[1s] = "* Ratings gradually increase&  during Mettaton's turn./^"
    pushenv 402s 0x000A0C
0x000A00:
    self.boastmode = 1s
0x000A0C:
    popenv 0x000A00
0x000A10:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A70
0x000A64:
    self.halt = 0s
0x000A70:
    popenv 0x000A64
0x000A74:
    if !(== self.whatiheard 1s) goto 0x000BE0
0x000A88:
    global.msc = 0s
    stog.msg[0s] = "* You posed dramatically^1.&* The audience nods./^"
    if !(<= global.hp (/ global.maxhp (double 2s))) goto 0x000AE8
0x000AD0:
    stog.msg[0s] = "* Despite being hurt^1, you&  posed dramatically^1.&* The audience applauds./^"
0x000AE8:
    if !(< global.hp (/ global.maxhp (double 4s))) goto 0x000B24
0x000B0C:
    stog.msg[0s] = "* Despite being wounded^1, you&  posed dramatically^1.&* The audience gasps./^"
0x000B24:
    if !(<= global.hp 3s) goto 0x000B50
0x000B38:
    stog.msg[0s] = "* With the last of your power^1,&  you pose dramatically^1.&* The audience screams./^"
0x000B50:
    pushenv 402s 0x000B78
0x000B58:
    self.curtype = 11s
    call (event_user[]:int32 (var 0s))
0x000B78:
    popenv 0x000B58
0x000B7C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BDC
0x000BD0:
    self.halt = 0s
0x000BDC:
    popenv 0x000BD0
0x000BE0:
    if !(== self.whatiheard 4s) goto 0x000CAC
0x000BF4:
    global.msc = 0s
    stog.msg[0s] = "* You turn and scoff at the&  audience./"
    stog.msg[1s] = "* They're rooting for your&  destruction this turn!/^"
    pushenv 402s 0x000C44
0x000C38:
    self.heel = 1s
0x000C44:
    popenv 0x000C38
0x000C48:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000CA8
0x000C9C:
    self.halt = 0s
0x000CA8:
    popenv 0x000C9C
0x000CAC:
    global.heard = 1s
0x000CB8:
    if !(== self.con 50s) goto 0x000DA0
0x000CCC:
    pushenv 402s 0x000CE0
0x000CD4:
    self.active = 0s
0x000CE0:
    popenv 0x000CD4
0x000CE4:
    pushenv 189s 0x000CF8
0x000CEC:
    call (instance_destroy[]:int32 )
0x000CF8:
    popenv 0x000CEC
0x000CFC:
    call (caster_free[]:int32 (var -3s))
    pushenv 782s 0x000D24
0x000D18:
    call (instance_destroy[]:int32 )
0x000D24:
    popenv 0x000D18
0x000D28:
    pushenv (int32 self.mypart1) 0x000D70
0x000D38:
    self.hurt = 2s
    self.sineron = 0s
    self.pause = 3s
    self.dsf = 0.5d
0x000D70:
    popenv 0x000D38
0x000D74:
    global.faceemotion = 0s
    self.con = 51s
    stog.alarm[4s] = 30s
0x000DA0:
    if !(== self.con 52s) goto 0x000F3C
0x000DB4:
    global.typer = 53s
    global.msc = 0s
    stog.msg[0s] = "H.. ha.../"
    stog.msg[1s] = "So I was wrong./"
    stog.msg[2s] = "Darling.../"
    stog.msg[3s] = "\\E1You really are&strong enough to&get past ASGORE./"
    stog.msg[4s] = "\\E0Well then.../"
    stog.msg[5s] = "It's time for&you to go./"
    stog.msg[6s] = "\\E0Don't worry about&me./"
    stog.msg[7s] = "I might seem like&I'm dying now^1,&but.../"
    stog.msg[8s] = "\\E1Dr. Alphys can&always repair me./"
    stog.msg[9s] = "\\E0And... besides.../"
    stog.msg[10s] = "Even if I'm not&cut out to be&a star.../"
    stog.msg[11s] = "\\E1I still got to&perform for a&human, didn't I?/"
    stog.msg[12s] = "So, thank you,&darling.../%%"
    self.con = 53s
    call (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 180s))
0x000F3C:
    if !(== self.con 53s) goto 0x000F6C
0x000F50:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000F70
0x000F6C:
    push 0s
0x000F70:
    if !pop goto 0x000F94
0x000F74:
    self.con = 54s
    stog.alarm[4s] = 45s
0x000F94:
    if !(== self.con 54s) goto 0x000FDC
0x000FA8:
    pushenv (int32 self.mypart1) 0x000FD8
0x000FB8:
    self.dsf = (- self.dsf 0.012d)
0x000FD8:
    popenv 0x000FB8
0x000FDC:
    if !(== self.con 55s) goto 0x00100C
0x000FF0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001010
0x00100C:
    push 0s
0x001010:
    if !pop goto 0x001090
0x001014:
    global.typer = 54s
    pushenv (int32 self.mypart1) 0x00103C
0x001030:
    self.dsf = 0s
0x00103C:
    popenv 0x001030
0x001040:
    stog.msg[0s] = "\\E1You've been a&great audience!/%%"
    call (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 180s))
    self.con = 56s
0x001090:
    if !(== self.con 56s) goto 0x0010C0
0x0010A4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0010C4
0x0010C0:
    push 0s
0x0010C4:
    if !pop goto 0x00111C
0x0010C8:
    self.explode = (caster_load[]:int32 (var "music/explosion.ogg"))
    push 1s
    stog.fadewhite* = (int32 self.mypart1)
    self.con = 57s
    stog.alarm[4s] = 2s
0x00111C:
    if !(== self.con 58s) goto 0x0011B0
0x001130:
    call (caster_play[]:int32 (var 1s) (var 1s) self.explode)
    global.xp = (+ global.xp 800s)
    call (scr_levelup[]:int32 )
    global.kills = (+ global.kills 1s)
    stog.flag[425s] = 1s
    self.con = 59s
0x0011B0:
    if !(== self.con 90s) goto 0x0012E4
0x0011C4:
    pushenv 189s 0x0011D8
0x0011CC:
    call (instance_destroy[]:int32 )
0x0011D8:
    popenv 0x0011CC
0x0011DC:
    global.faceemotion = 0s
    push 1s
    stog.endface* = (int32 self.mypart1)
    global.typer = 51s
    global.msc = 0s
    stog.msg[0s] = "OOH^1, LOOK AT&THESE RATINGS!!!/"
    stog.msg[1s] = "\\E6THIS IS THE MOST&VIEWERS I'VE EVER&HAD!!!/"
    stog.msg[2s] = "WE'VE REACHED THE&VIEWER CALL-IN&MILESTONE!/"
    stog.msg[3s] = "\\E8ONE LUCKY VIEWER&WILL HAVE THE CHANCE&TO TALK TO ME.../"
    stog.msg[4s] = "\\E7... BEFORE I LEAVE&THE UNDERGROUND&FOREVER!!/"
    stog.msg[5s] = "\\E9LET'S SEE WHO&CALLS IN FIRST!/%%"
    self.con = 91s
    self.blc = (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 180s))
0x0012E4:
    if !(== self.con 91s) goto 0x001310
0x0012F8:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x001314
0x001310:
    push 0s
0x001314:
    if !pop goto 0x00136C
0x001318:
    self.vol = (caster_get_volume[]:int32 global.batmusic)
    self.vol = (- self.vol 0.02d)
    call (caster_set_volume[]:int32 self.vol global.batmusic)
0x00136C:
    if !(== self.con 91s) goto 0x00139C
0x001380:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0013A0
0x00139C:
    push 0s
0x0013A0:
    if !pop goto 0x0013EC
0x0013A4:
    call (caster_stop[]:int32 global.batmusic)
    call (snd_play[]:int32 (var 104s))
    self.con = 93s
    stog.alarm[4s] = 50s
0x0013EC:
    if !(== self.con 94s) goto 0x00141C
0x001400:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001420
0x00141C:
    push 0s
0x001420:
    if !pop goto 0x0014A4
0x001424:
    global.typer = 51s
    global.msc = 0s
    stog.msg[0s] = "\\E0HI^1, YOU'RE ON TV!/"
    stog.msg[1s] = "WHAT DO YOU HAVE&TO SAY ON THIS^1,&OUR LAST SHOW???/%%"
    self.con = 95s
    call (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 180s))
0x0014A4:
    if !(== self.con 95s) goto 0x0014D4
0x0014B8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0014D8
0x0014D4:
    push 0s
0x0014D8:
    if !pop goto 0x001690
0x0014DC:
    self.shblcon = (instance_create[]:int32 (var 186s) (var 200s) (var 530s))
    push 27s
    stog.sprite_index* = (int32 self.shblcon)
    self.sadmett = (caster_load[]:int32 (var "music/mettsad.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.9d) self.sadmett)
    global.typer = 92s
    stog.msg[0s] = "...../"
    stog.msg[1s] = "oh......../"
    stog.msg[2s] = "\\E1hi..^1.&mettaton.../"
    stog.msg[3s] = "i really liked&watching your show.../"
    stog.msg[4s] = "my life is pretty&boring..^1. but.../"
    stog.msg[5s] = "seeing you on the&screen..^1. brought&excitement to my&life..^1. vicariously/"
    stog.msg[6s] = "i can't tell^1, but..^1.&i guess this is&the last episode...?/"
    stog.msg[7s] = "\\E3i'll miss you..^1.&mettaton....../"
    stog.msg[8s] = "... oh...^1. i didn't&mean to talk so&long.../"
    stog.msg[9s] = "\\E2oh........../%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 420s))
    self.con = 96s
0x001690:
    if !(== self.con 96s) goto 0x0016C0
0x0016A4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0016C4
0x0016C0:
    push 0s
0x0016C4:
    if !pop goto 0x001790
0x0016C8:
    pushenv 186s 0x0016DC
0x0016D0:
    call (instance_destroy[]:int32 )
0x0016DC:
    popenv 0x0016D0
0x0016E0:
    global.typer = 51s
    global.msc = 0s
    stog.msg[0s] = "NO^1, WAIT^1!&WAIT^1, BL.../"
    stog.msg[1s] = "\\E1H..^1.&THEY ALREADY HUNG&UP./"
    stog.msg[2s] = "\\E3.../"
    stog.msg[3s] = "\\E0I'LL TAKE ANOTHER&CALLER!!!/%%"
    self.con = 97s
    call (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 180s))
0x001790:
    if !(== self.con 97s) goto 0x0017C0
0x0017A4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0017C4
0x0017C0:
    push 0s
0x0017C4:
    if !pop goto 0x001870
0x0017C8:
    call (snd_play[]:int32 (var 104s))
    self.shblcon = (instance_create[]:int32 (var 186s) (var 200s) (var 530s))
    push 27s
    stog.sprite_index* = (int32 self.shblcon)
    global.typer = 92s
    stog.msg[0s] = "\\E1Mettaton^1, your show&made us so happy!/%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 420s))
    self.con = 98s
0x001870:
    if !(== self.con 98s) goto 0x0018A0
0x001884:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0018A4
0x0018A0:
    push 0s
0x0018A4:
    if !pop goto 0x00197C
0x0018A8:
    call (snd_play[]:int32 (var 104s))
    self.shblcon = (instance_create[]:int32 (var 186s) (var 200s) (var 560s))
    push 27s
    stog.sprite_index* = (int32 self.shblcon)
    pushenv (int32 self.shblcon) 0x001924
0x00190C:
    self.depth = (- self.depth 4s)
0x001924:
    popenv 0x00190C
0x001928:
    global.typer = 92s
    stog.msg[0s] = "Mettaton^1, I don't&know what I'll&watch without you./%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 450s))
    self.con = 99s
0x00197C:
    if !(== self.con 99s) goto 0x0019AC
0x001990:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0019B0
0x0019AC:
    push 0s
0x0019B0:
    if !pop goto 0x001A88
0x0019B4:
    call (snd_play[]:int32 (var 104s))
    self.shblcon = (instance_create[]:int32 (var 186s) (var 200s) (var 520s))
    push 27s
    stog.sprite_index* = (int32 self.shblcon)
    pushenv (int32 self.shblcon) 0x001A30
0x001A18:
    self.depth = (- self.depth 8s)
0x001A30:
    popenv 0x001A18
0x001A34:
    global.typer = 92s
    stog.msg[0s] = "Mettaton^1, there's&a Mettaton-shaped&hole in my Mettaton-&shaped heart./%%"
    call (instance_create[]:int32 (var 782s) (var 60s) (var 410s))
    self.con = 100s
0x001A88:
    if !(== self.con 100s) goto 0x001AB8
0x001A9C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001ABC
0x001AB8:
    push 0s
0x001ABC:
    if !pop goto 0x001AE0
0x001AC0:
    self.con = 101s
    stog.alarm[4s] = 30s
0x001AE0:
    if !(== self.con 101s) goto 0x001B14
0x001AF4:
    [obj_blconsm].image_alpha = (- 186.image_alpha 0.035d)
0x001B14:
    if !(== self.con 102s) goto 0x001E00
0x001B28:
    pushenv 186s 0x001B3C
0x001B30:
    call (instance_destroy[]:int32 )
0x001B3C:
    popenv 0x001B30
0x001B40:
    global.typer = 51s
    global.msc = 0s
    stog.msg[0s] = "\\E3AH..^1. I.../"
    stog.msg[1s] = "I SEE.../"
    stog.msg[2s] = "\\E4.../"
    stog.msg[3s] = "EVERYONE..^1.&THANK YOU SO MUCH./"
    stog.msg[4s] = ".../"
    stog.msg[5s] = "\\E0DARLING./"
    stog.msg[6s] = "\\E1PERHAPS..^1. IT MIGHT BE&BETTER IF I STAY&HERE FOR A WHILE./"
    stog.msg[7s] = "\\E2HUMANS ALREADY HAVE&STARS AND IDOLS^1,&BUT MONSTERS.../"
    stog.msg[8s] = "\\E0THEY ONLY HAVE ME./"
    stog.msg[9s] = "\\E1IF I LEFT..^1.&THE UNDERGROUND WOULD&LOSE ITS SPARK./"
    stog.msg[10s] = "\\E3I'D LEAVE AN ACHING&VOID THAT CAN NEVER&BE FILLED./"
    stog.msg[11s] = "\\E0SO..^1. I THINK I'LL&HAVE TO DELAY MY&BIG DEBUT./"
    stog.msg[12s] = "\\E2BESIDES./"
    stog.msg[13s] = "\\E1YOU'VE PROVEN TO&BE VERY STRONG./"
    stog.msg[14s] = "\\E0PERHAPS..^1. EVEN STRONG&ENOUGH TO GET PAST&ASGORE./"
    stog.msg[15s] = "\\E0I'M SURE YOU'LL BE&ABLE TO PROTECT&HUMANITY./"
    stog.msg[16s] = "\\E4HA^1, HA.../"
    stog.msg[17s] = "IT'S ALL FOR THE&BEST^1, ANYWAY./"
    stog.msg[18s] = "\\E3THE TRUTH IS^1, THIS&FORM'S ENERGY&CONSUMPTION IS.../"
    stog.msg[19s] = "INEFFICIENT./"
    stog.msg[20s] = "IN A FEW MOMENTS^1,&I'LL RUN OUT OF&BATTERY POWER^1, AND.../"
    stog.msg[21s] = "\\E4WELL./"
    stog.msg[22s] = "\\E0I'LL BE ALRIGHT./"
    stog.msg[23s] = "\\E5KNOCK 'EM DEAD^1,&DARLING./"
    stog.msg[24s] = "\\E0AND EVERYONE..^1.&THANK YOU./"
    stog.msg[25s] = "YOU'VE BEEN A&GREAT AUDIENCE!/%%"
    self.con = 103s
    call (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 180s))
0x001E00:
    if !(== self.con 103s) goto 0x001E2C
0x001E14:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x001E30
0x001E2C:
    push 0s
0x001E30:
    if !pop goto 0x001F7C
0x001E34:
    if !(== 782.stringno 20s) goto 0x001E6C
0x001E48:
    call (caster_set_volume[]:int32 (var 0.8d) self.sadmett)
0x001E6C:
    if !(== 782.stringno 21s) goto 0x001EA4
0x001E80:
    call (caster_set_volume[]:int32 (var 0.6d) self.sadmett)
0x001EA4:
    if !(== 782.stringno 22s) goto 0x001EDC
0x001EB8:
    call (caster_set_volume[]:int32 (var 0.4d) self.sadmett)
0x001EDC:
    if !(== 782.stringno 23s) goto 0x001F14
0x001EF0:
    call (caster_set_volume[]:int32 (var 0.2d) self.sadmett)
0x001F14:
    if !(== 782.stringno 24s) goto 0x001F4C
0x001F28:
    call (caster_set_volume[]:int32 (var 0.1d) self.sadmett)
0x001F4C:
    if !(== 782.stringno 25s) goto 0x001F7C
0x001F60:
    call (caster_set_volume[]:int32 (var 0s) self.sadmett)
0x001F7C:
    if !(== self.con 103s) goto 0x001FAC
0x001F90:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001FB0
0x001FAC:
    push 0s
0x001FB0:
    if !pop goto 0x002020
0x001FB4:
    self.impact = (caster_load[]:int32 (var "music/create.ogg"))
    call (caster_play[]:int32 (var 0.8d) (var 1s) self.impact)
    push 1s
    stog.fadewhite* = (int32 self.mypart1)
    self.con = 105s
0x002020:
    if !(== global.myfight 4s) goto 0x00205C
0x002034:
    if !(== global.mercyuse 0s) goto 0x00205C
0x002048:
    call (script_execute[]:int32 (var 163s))
0x00205C:
    exit
