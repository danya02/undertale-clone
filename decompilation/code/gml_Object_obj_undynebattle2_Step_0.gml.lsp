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
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000328
0x0002E0:
    global.faceemotion = 6s
    call (caster_stop[]:int32 global.batmusic)
    self.con = 15s
    stog.hurtanim[(int32 self.myself)] = 99s
0x000328:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000360
0x00034C:
    push (== self.con 20s)
    goto 0x000364
0x000360:
    push 0s
0x000364:
    if !pop goto 0x0003BC
0x000368:
    pushenv (int32 self.dmgwriter) 0x00038C
0x000378:
    stog.alarm[2s] = 15s
0x00038C:
    popenv 0x000378
0x000390:
    self.con = 20.1d
    global.myfight = 0s
    global.mnfight = 99s
0x0003BC:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00048C
0x0003E0:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000454
0x000440:
    stog.alarm[2s] = 30s
0x000454:
    popenv 0x000440
0x000458:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x00048C:
    if !(== global.mnfight 2s) goto 0x000510
0x0004A0:
    if !(== self.attacked 0s) goto 0x0004E0
0x0004B4:
    if !(>= self.mycommand 0s) goto 0x0004E0
0x0004C8:
    stog.msg[0s] = "* Undyne is letting you make&  the first attack."
0x0004E0:
    self.attacked = 1s
    global.turntimer = -1s
    global.mnfight = 3s
    self.whatiheard = -1s
0x000510:
    if !(== global.myfight 2s) goto 0x0006E4
0x000524:
    if !(!= self.whatiheard -1s) goto 0x0006E4
0x000538:
    if !(== global.heard 0s) goto 0x0006E4
0x00054C:
    if !(== self.whatiheard 0s) goto 0x0005F4
0x000560:
    global.msc = 0s
    stog.msg[0s] = "* UNDYNE - ATK 41 DEF 21&* This time^1, don't hold&  anything back!/^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0005E4
0x0005D8:
    self.halt = 0s
0x0005E4:
    popenv 0x0005D8
0x0005E8:
    self.whatiheard = 9s
0x0005F4:
    if !(== self.whatiheard 3s) goto 0x0006D8
0x000608:
    self.con = 80s
    global.msc = 0s
    stog.msg[0s] = "* You pretend to swing at&  UNDYNE with all your might./%%"
    self.encourage = 0s
    self.criticize = (+ self.criticize 1s)
    self.hug = 0s
    self.mercymod = -200s
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0006D4
0x0006C8:
    self.halt = 0s
0x0006D4:
    popenv 0x0006C8
0x0006D8:
    global.heard = 1s
0x0006E4:
    if !(== self.con 0s) goto 0x000724
0x0006F8:
    [obj_heart].x = -200s
    self.con = 1s
    stog.alarm[4s] = 20s
0x000724:
    if !(== self.con 1s) goto 0x00075C
0x000738:
    global.myfight = 0s
    global.mnfight = 99s
    [obj_heart].x = -200s
0x00075C:
    if !(== self.con 2s) goto 0x000784
0x000770:
    self.con = 4.1d
0x000784:
    if !(== self.con 4.1d) goto 0x00089C
0x0007A0:
    global.typer = 39s
    global.msc = 0s
    stog.msg[0s] = "I've been&defeated..^1.&My house is in&shambles.../"
    stog.msg[1s] = "I even failed to&befriend you./"
    stog.msg[2s] = "That's it./"
    stog.msg[3s] = "\\E8I don't care if&you're my guest&anymore./"
    stog.msg[4s] = "\\E6One final rematch^1!&All out on both&sides!!!/"
    stog.msg[5s] = "IT'S THE ONLY WAY&I CAN REGAIN MY&LOST PRIDE!!!/"
    stog.msg[6s] = "NOW COME ON^1!&HIT ME WITH&ALL YOU'VE GOT!&NGAHHHH!!!/%%"
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
    [obj_heart].x = -200s
    self.con = 4.2d
0x00089C:
    if !(== self.con 4.2d) goto 0x0008C4
0x0008B8:
    call (scr_textskip[]:int32 )
0x0008C4:
    if !(== self.con 4.2d) goto 0x0008FC
0x0008E0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000900
0x0008FC:
    push 0s
0x000900:
    if !pop goto 0x00094C
0x000904:
    global.faceemotion = 8s
    stog.msg[0s] = "* Undyne is letting you make&  the first attack."
    global.mnfight = 3s
    global.myfight = 0s
    self.con = 5s
0x00094C:
    if !(== self.con 15s) goto 0x000A10
0x000960:
    self.wht = (scr_marker[]:int32 (var 999s) (var -2s) (var -2s))
    push -99999
    stog.depth* = (int32 self.wht)
    push 0s
    stog.image_speed* = (int32 self.wht)
    push 400s
    stog.image_xscale* = (int32 self.wht)
    push 400s
    stog.image_yscale* = (int32 self.wht)
    push 0s
    stog.image_alpha* = (int32 self.wht)
    self.con = 16s
0x000A10:
    if !(== self.con 16s) goto 0x000A94
0x000A24:
    stog.image_alpha* = (+ (int32 self.wht):image_alpha 0.02d)
    if !(>= (int32 self.wht):image_alpha 1s) goto 0x000A94
0x000A74:
    push (int32 self.wht)
    self.con = 17s
    stog.alarm[4s] = 45s
0x000A94:
    if !(== self.con 18s) goto 0x000B10
0x000AA8:
    pushenv (int32 self.wht) 0x000AC4
0x000AB8:
    call (instance_destroy[]:int32 )
0x000AC4:
    popenv 0x000AB8
0x000AC8:
    self.con = 19s
    self.shudder = 8s
    stog.alarm[3s] = 1s
    stog.hurtanim[(int32 self.myself)] = 3s
0x000B10:
    if !(== self.con 20.1d) goto 0x000B54
0x000B2C:
    self.con = 20.2d
    stog.alarm[4s] = 70s
0x000B54:
    if !(== self.con 21.2d) goto 0x000C40
0x000B70:
    global.msc = 0s
    global.typer = 39s
    stog.msg[0s] = "What./"
    stog.msg[1s] = "\\E2That's the best&you can manage?/"
    stog.msg[2s] = "\\E3Even attacking at&full force.../"
    stog.msg[3s] = "You just can't&muster any intent&to hurt me^1,&huh?/"
    stog.msg[4s] = "\\E4.../"
    stog.msg[5s] = "\\E7Heh^1, you know&what?/%%"
    call (scr_blcon_x[]:int32 self.blcony self.blconx)
    self.con = 23s
0x000C40:
    if !(== self.con 23s) goto 0x000C60
0x000C54:
    call (scr_textskip[]:int32 )
0x000C60:
    if !(== self.con 23s) goto 0x000C90
0x000C74:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C94
0x000C90:
    push 0s
0x000C94:
    if !pop goto 0x000CDC
0x000C98:
    push 1s
    stog.off* = (int32 self.mypart1)
    if !(== (int32 self.mypart1):noanim 1s) goto 0x000CDC
0x000CD0:
    self.con = 24s
0x000CDC:
    if !(== self.con 24s) goto 0x000F60
0x000CF0:
    global.msc = 0s
    global.typer = 39s
    stog.msg[0s] = "I don't actually&want to hurt you&either./"
    stog.msg[1s] = "At first^1, I hated&your stupid&saccharine&schtick^1, but.../"
    stog.msg[2s] = "\\E3The way you hit&me right now^1,&it.../"
    stog.msg[3s] = "\\E4Reminded me of&someone I used&to train with./"
    stog.msg[4s] = "\\E7Now I know you&aren't just some&wimpy loser./"
    stog.msg[5s] = "\\E9You're a wimpy&loser with a&big heart!/"
    stog.msg[6s] = "\\E4Just like him.../"
    stog.msg[7s] = "\\E7.../"
    stog.msg[8s] = "\\E3Listen^1, human./"
    stog.msg[9s] = "\\E2It seems that you&and ASGORE are&fated to fight./"
    stog.msg[10s] = "\\E3But knowing him.../"
    stog.msg[11s] = "\\E4He probably&doesn't want to./"
    stog.msg[12s] = "\\E2Talk to him./"
    stog.msg[13s] = "\\E1I'm sure you can&persuade him to&let you go home./"
    stog.msg[14s] = "\\E3Eventually^1, some&mean human will&fall down here.../"
    stog.msg[15s] = "\\E3And I'll take&THEIR soul instead./"
    stog.msg[16s] = "\\E1That makes sense^1,&right^1?&Fuhuhu./"
    stog.msg[17s] = "\\E2Oh^1, and if you&DO hurt ASGORE.../"
    stog.msg[18s] = "\\E7I'll take the&human souls..^1.&Cross the barrier.../"
    stog.msg[19s] = "\\E6And beat the&hell out of you!/"
    stog.msg[20s] = "\\E9That's what friends&are for^1, right?/"
    stog.msg[21s] = "\\E9Fuhuhu!/"
    stog.msg[22s] = "\\E9Now let's get the&hell out of this&flaming house!/%%"
    call (scr_blcon_x[]:int32 self.blcony (- self.blconx 70s))
    self.con = 25s
0x000F60:
    if !(== self.con 25s) goto 0x000F80
0x000F74:
    call (scr_textskip[]:int32 )
0x000F80:
    if !(== self.con 25s) goto 0x000FB0
0x000F94:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000FB4
0x000FB0:
    push 0s
0x000FB4:
    if !pop goto 0x000FD8
0x000FB8:
    self.con = 26s
    stog.alarm[4s] = 15s
0x000FD8:
    if !(== self.con 27s) goto 0x001030
0x000FEC:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    self.con = 28s
    stog.alarm[4s] = 12s
0x001030:
    if !(== self.con 29s) goto 0x001144
0x001044:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.udhd = (ini_read_real[]:int32 (var 0s) (var "UD") (var "Undyne"))
    call (ini_write_real[]:int32 (+ self.udhd 1s) (var "UD") (var "Undyne"))
    call (ini_close[]:int32 )
    global.phasing = 0s
    stog.flag[17s] = 0s
    global.mercy = 0s
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    stog.flag[389s] = 3s
    call (room_goto[]:int32 (var 117s))
0x001144:
    if !(== self.con 80s) goto 0x001174
0x001158:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001178
0x001174:
    push 0s
0x001178:
    if !pop goto 0x0011B8
0x00117C:
    call (snd_play[]:int32 (var 44s))
    global.damage = 1s
    stog.hurtanim[(int32 self.myself)] = 1s
0x0011B8:
    if !(== global.myfight 4s) goto 0x001214
0x0011CC:
    if !(== global.mercyuse 0s) goto 0x001214
0x0011E0:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001214
0x001208:
    call (instance_destroy[]:int32 )
0x001214:
    if !(== self.mercymod 222s) goto 0x001244
0x001228:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001248
0x001244:
    push 0s
0x001248:
    if !pop goto 0x001280
0x00124C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001280
0x001274:
    call (instance_destroy[]:int32 )
0x001280:
    exit
