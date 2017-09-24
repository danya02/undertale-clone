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
    stog.alarm[5s] = 2s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000230:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002BC
0x000248:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002A0
0x000264:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002A0
0x000284:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002A4
0x0002A0:
    push 0s
0x0002A4:
    if !pop goto 0x0002BC
0x0002A8:
    stog.alarm[5s] = 2s
0x0002BC:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000320
0x0002E0:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000320:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0003F0
0x000344:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x000398
0x000384:
    stog.alarm[2s] = 15s
0x000398:
    popenv 0x000384
0x00039C:
    global.myfight = -1s
    global.mnfight = -1s
    self.con = 20s
    stog.alarm[4s] = 45s
    stog.hurtanim[(int32 self.myself)] = -1s
0x0003F0:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0004C0
0x000414:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000488
0x000474:
    stog.alarm[2s] = 30s
0x000488:
    popenv 0x000474
0x00048C:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0004C0:
    if !(== global.mnfight 2s) goto 0x0006D8
0x0004D4:
    if !(== self.attacked 0s) goto 0x000684
0x0004E8:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 150s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x000544
0x000524:
    global.firingrate = (* global.firingrate 2.5d)
0x000544:
    if !(== self.pop 2s) goto 0x000578
0x000558:
    global.firingrate = (* global.firingrate 1.8d)
0x000578:
    if !(>= self.mycommand 50s) goto 0x0005E4
0x00058C:
    self.gen = (instance_create[]:int32 (var 334s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x00064C
0x0005E4:
    push (var 331s)
    push -5s
    push (+ 2s:idealborder 2s)
    self.gen = (instance_create[]:int32 -5s 0s:idealborder (- (/ (+ -5s 1s:idealborder) (double 2s)) 30s))
0x00064C:
    if !(>= self.mycommand 0s) goto 0x000678
0x000660:
    stog.msg[0s] = "* Stage lights are blaring."
0x000678:
    self.attacked = 1s
0x000684:
    if !(== self.mercymod -999999) goto 0x0006B4
0x00069C:
    global.turntimer = -1s
    global.mnfight = 3s
0x0006B4:
    stog.msg[0s] = "* Stage lights are blaring."
    self.whatiheard = -1s
0x0006D8:
    if !(== global.myfight 2s) goto 0x0007C8
0x0006EC:
    if !(!= self.whatiheard -1s) goto 0x0007C8
0x000700:
    if !(== global.heard 0s) goto 0x0007C8
0x000714:
    if !(== self.whatiheard 0s) goto 0x0007BC
0x000728:
    global.msc = 0s
    stog.msg[0s] = "* METTATON NEO - 90 ATK 9 DEF&* Dr. Alphys's greatest&  invention./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0007AC
0x0007A0:
    self.halt = 0s
0x0007AC:
    popenv 0x0007A0
0x0007B0:
    self.whatiheard = 9s
0x0007BC:
    global.heard = 1s
0x0007C8:
    if !(== global.myfight 4s) goto 0x000804
0x0007DC:
    if !(== global.mercyuse 0s) goto 0x000804
0x0007F0:
    call (script_execute[]:int32 (var 163s))
0x000804:
    if !(== self.mercymod 222s) goto 0x000834
0x000818:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000838
0x000834:
    push 0s
0x000838:
    if !pop goto 0x000850
0x00083C:
    call (script_execute[]:int32 (var 163s))
0x000850:
    if !(== self.con 21s) goto 0x00089C
0x000864:
    push -3s
    stog.hspeed* = (int32 self.mypart1)
    self.con = 22s
    stog.alarm[4s] = 20s
0x00089C:
    if !(== self.con 23s) goto 0x000AD0
0x0008B0:
    pushenv (int32 self.mypart1) 0x0008D4
0x0008C0:
    call (event_user[]:int32 (var 0s))
0x0008D4:
    popenv 0x0008C0
0x0008D8:
    push 0s
    stog.hspeed* = (int32 self.mypart1)
    pushenv 189s 0x000904
0x0008F8:
    call (instance_destroy[]:int32 )
0x000904:
    popenv 0x0008F8
0x000908:
    global.faceemotion = 6s
    global.typer = 97s
    global.msc = 0s
    if !(< (scr_murderlv[]:int32 ) 15s) goto 0x000A64
0x000940:
    stog.msg[0s] = "\\E6G...&GUESS SHE SHOULD&HAVE WORKED MORE&ON THE DEFENSES.../"
    stog.msg[1s] = "\\E6.../"
    stog.msg[2s] = "\\E6YOU MAY HAVE&DEFEATED ME...&BUT.../"
    stog.msg[3s] = "\\E4I KNOW.&I CAN TELL FROM&THAT STRIKE, DARLING./"
    stog.msg[4s] = "\\E5YOU WERE HOLDING&BACK./"
    stog.msg[5s] = "\\E6YES, ASGORE WILL&FALL EASILY TO&YOU.../"
    stog.msg[6s] = "\\E5BUT YOU WON'T&HARM HUMANITY,&WILL YOU?/"
    stog.msg[7s] = "\\E1YOU AREN'T&ABSOLUTELY EVIL./"
    stog.msg[8s] = "\\E5IF YOU WERE&TRYING TO BE,&THEN YOU MESSED UP./"
    stog.msg[9s] = "\\E0AND SO LATE INTO&THE SHOW, TOO./"
    stog.msg[10s] = "\\E0HA... HA.&AT LEAST NOW,&I CAN REST EASY./"
    stog.msg[11s] = "\\E3KNOWING ALPHYS AND&THE HUMANS WILL&LIVE ON...!/%%"
    goto 0x000A94
0x000A64:
    stog.msg[0s] = "\\E6GH.../"
    stog.msg[1s] = "\\E5GUESS YOU DON'T&WANNA JOIN MY&FAN CLUB...?/%%"
0x000A94:
    self.con = 24s
    self.blc = (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 180s))
0x000AD0:
    if !(== self.con 24s) goto 0x000B00
0x000AE4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000B04
0x000B00:
    push 0s
0x000B04:
    if !pop goto 0x000B5C
0x000B08:
    self.explode = (caster_load[]:int32 (var "music/explosion.ogg"))
    push 1s
    stog.fadewhite* = (int32 self.mypart1)
    self.con = 25s
    stog.alarm[4s] = 2s
0x000B5C:
    if !(== self.con 26s) goto 0x000C44
0x000B70:
    stog.flag[8s] = 1s
    call (caster_play[]:int32 (var 1s) (var 1s) self.explode)
    if !(>= (scr_murderlv[]:int32 ) 15s) goto 0x000C00
0x000BBC:
    if !(<= global.xp 50000) goto 0x000BE4
0x000BD4:
    global.xp = 50000
0x000BE4:
    global.kills = (+ global.kills 1s)
    goto 0x000C18
0x000C00:
    global.xp = (+ global.xp 10000s)
0x000C18:
    call (scr_levelup[]:int32 )
    stog.flag[425s] = 1s
    self.con = 27s
0x000C44:
    exit
