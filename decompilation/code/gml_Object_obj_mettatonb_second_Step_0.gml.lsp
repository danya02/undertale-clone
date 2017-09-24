0x000000:
    if !(== global.mnfight 3s) goto 0x00002C
0x000014:
    self.attacked = 0s
    self.talked = 0s
0x00002C:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0001D4
0x000048:
    push -5s
    if !(== 0s:monster 1s) goto 0x0000CC
0x000064:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0000CC
0x00009C:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0000CC:
    push -5s
    if !(== 1s:monster 1s) goto 0x000150
0x0000E8:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000150
0x000120:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000150:
    push -5s
    if !(== 2s:monster 1s) goto 0x0001D4
0x00016C:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001D4
0x0001A4:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001D4:
    if !(== global.mnfight 1s) goto 0x00028C
0x0001E8:
    if !(== self.talked 1s) goto 0x000218
0x0001FC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00021C
0x000218:
    push 0s
0x00021C:
    if !pop goto 0x000240
0x000220:
    stog.alarm[5s] = 1s
    self.talked = 2s
0x000240:
    if !(== self.talked 0s) goto 0x00028C
0x000254:
    self.attacked = 0s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x00028C:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x0002F0
0x0002B0:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x0002F0:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0003D4
0x000314:
    pushenv (int32 self.dmgwriter) 0x000338
0x000324:
    stog.alarm[2s] = 15s
0x000338:
    popenv 0x000324
0x00033C:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0003A4
0x000360:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.hurta = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0003D4
0x0003A4:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x0003D4:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0004A4
0x0003F8:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x00046C
0x000458:
    stog.alarm[2s] = 30s
0x00046C:
    popenv 0x000458
0x000470:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0004A4:
    if !(== global.mnfight 2s) goto 0x00070C
0x0004B8:
    if !(== self.attacked 0s) goto 0x00070C
0x0004CC:
    if !(== self.con 0s) goto 0x0004EC
0x0004E0:
    self.con = 1s
0x0004EC:
    if !(> self.turns 1s) goto 0x00051C
0x000500:
    push -5s
    push (== 385s:flag 1s)
    goto 0x000520
0x00051C:
    push 0s
0x000520:
    if !pop goto 0x00057C
0x000524:
    global.firingrate = 6s
    self.g = (instance_create[]:int32 (var 696s) (var 100s) (var 100s))
    push 4s
    stog.hspeed* = (int32 self.g)
    global.turntimer = 90s
0x00057C:
    pushenv (int32 self.mypart1) 0x0005A0
0x00058C:
    call (event_user[]:int32 (var 0s))
0x0005A0:
    popenv 0x00058C
0x0005A4:
    stog.msg[0s] = "* Mettaton."
    if !(>= self.mycommand 0s) goto 0x0005E8
0x0005D0:
    stog.msg[0s] = "* Mettaton."
0x0005E8:
    if !(>= self.mycommand 25s) goto 0x000614
0x0005FC:
    stog.msg[0s] = "* Aaron is sweating bullets^3.&* Literally."
0x000614:
    if !(>= self.mycommand 50s) goto 0x000640
0x000628:
    stog.msg[0s] = "* Aaron is admiring his own&  muscles."
0x000640:
    if !(>= self.mycommand 75s) goto 0x00066C
0x000654:
    stog.msg[0s] = "* Smells like an underwater&  barnyard."
0x00066C:
    if !(>= self.mycommand 90s) goto 0x000698
0x000680:
    stog.msg[0s] = "* Smells like a mussel farm."
0x000698:
    stog.msg[0s] = "* Mettaton."
    push -5s
    if !(< (int32 self.myself):monsterhp 30s) goto 0x0006EC
0x0006D4:
    stog.msg[0s] = "* No on e cares."
0x0006EC:
    self.attacked = 1s
    stog.alarm[7s] = 20s
0x00070C:
    if !(== global.myfight 2s) goto 0x0008EC
0x000720:
    if !(!= self.whatiheard -1s) goto 0x0008EC
0x000734:
    if !(== global.heard 0s) goto 0x0008EC
0x000748:
    if !(== self.whatiheard 0s) goto 0x0007F0
0x00075C:
    global.msc = 0s
    stog.msg[0s] = "* METTATON - ATK 30 DEF 255&* His metal body STILL renders&  him invulnerable to attack./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0007E0
0x0007D4:
    self.halt = 0s
0x0007E0:
    popenv 0x0007D4
0x0007E4:
    self.whatiheard = 9s
0x0007F0:
    if !(== self.whatiheard 3s) goto 0x0008E0
0x000804:
    global.msc = 0s
    stog.msg[0s] = "* You yell..^1.&* Nothing happened./^"
    push -5s
    if !(== 385s:flag 1s) goto 0x00087C
0x000844:
    stog.flag[385s] = 2s
    stog.msg[0s] = "* You press the yellow button^1.&* The phone is resonating with&  Mettaton's presence...!/^"
    self.con = 10s
0x00087C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0008DC
0x0008D0:
    self.halt = 0s
0x0008DC:
    popenv 0x0008D0
0x0008E0:
    global.heard = 1s
0x0008EC:
    if !(== self.whatiheard 3s) goto 0x00092C
0x000900:
    if !(== self.flex 3s) goto 0x00092C
0x000914:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000930
0x00092C:
    push 0s
0x000930:
    if !pop goto 0x00096C
0x000934:
    if !(== 782.stringno 1s) goto 0x00096C
0x000948:
    self.vspeed = -4s
    push -4s
    stog.vspeed* = (int32 self.mypart1)
0x00096C:
    if !(== global.myfight 4s) goto 0x0009C8
0x000980:
    if !(== global.mercyuse 0s) goto 0x0009C8
0x000994:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x0009C8
0x0009BC:
    call (instance_destroy[]:int32 )
0x0009C8:
    if !(== self.mercymod 222s) goto 0x0009F8
0x0009DC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0009FC
0x0009F8:
    push 0s
0x0009FC:
    if !pop goto 0x000A34
0x000A00:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000A34
0x000A28:
    call (instance_destroy[]:int32 )
0x000A34:
    if !(== self.con 1s) goto 0x000B1C
0x000A48:
    self.phone = (instance_create[]:int32 (var 1363s) (var 260s) (var 500s))
    push 317s
    stog.sprite_index* = (int32 self.phone)
    push 0s
    stog.image_speed* = (int32 self.phone)
    push 1s
    stog.visible* = (int32 self.phone)
    push 20s
    stog.depth* = (int32 self.phone)
    call (snd_play[]:int32 (var 104s))
    push -2s
    stog.vspeed* = (int32 self.phone)
    self.con = 2s
    stog.alarm[4s] = 30s
0x000B1C:
    if !(== self.con 3s) goto 0x000B7C
0x000B30:
    push 0s
    stog.vspeed* = (int32 self.phone)
    call (snd_play[]:int32 (var 104s))
    self.con = 4s
    stog.alarm[4s] = 30s
0x000B7C:
    if !(== self.con 5s) goto 0x000C18
0x000B90:
    global.msc = 0s
    stog.msg[0s] = "IS THAT YOUR PHONE?&YOU'D BETTER ANSWER&IT!/%%"
    global.typer = 51s
    call (scr_blcon[]:int32 (var 1s) (- (int32 self.mypart1):y 120s) (- (int32 self.mypart1):x 320s))
    self.con = 6s
0x000C18:
    if !(== self.con 6s) goto 0x000C48
0x000C2C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C4C
0x000C48:
    push 0s
0x000C4C:
    if !pop goto 0x000D80
0x000C50:
    self.shblcon = (instance_create[]:int32 (var 186s) (int32 self.phone):y (+ (int32 self.phone):x 10s))
    push 27s
    stog.sprite_index* = (int32 self.shblcon)
    self.shake = 1s
    global.typer = 49s
    stog.msg[0s] = "H-hey!!&Th-this seems bad,&but don't worry!!/"
    stog.msg[1s] = "Th-there's one last&thing I installed&on your phone...!/"
    stog.msg[2s] = "\\WYou see that\\Y &yellow button\\W...?/"
    stog.msg[3s] = "Go to this phone's&[[ACT]] menu and&press it!!!/%%"
    call (instance_create[]:int32 (var 782s) (- (int32 self.phone):y 140s) (- (int32 self.phone):x 100s))
    self.con = 7s
0x000D80:
    if !(== self.con 7s) goto 0x000DB0
0x000D94:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000DB4
0x000DB0:
    push 0s
0x000DB4:
    if !pop goto 0x000E40
0x000DB8:
    stog.msg[0s] = "* Your phone's [[ACT]] menu is&  glowing."
    stog.flag[385s] = 1s
    pushenv (int32 self.shblcon) 0x000E00
0x000DF4:
    call (instance_destroy[]:int32 )
0x000E00:
    popenv 0x000DF4
0x000E04:
    self.con = 8s
    self.shake = 0s
    global.turntimer = -1s
    global.mnfight = 3s
    global.myfight = -1s
0x000E40:
    if !(> self.con 6s) goto 0x000F00
0x000E54:
    if !(== self.shake 1s) goto 0x000E80
0x000E68:
    push (bool (instance_exists[]:int32 self.shblcon))
    goto 0x000E84
0x000E80:
    push 0s
0x000E84:
    if !pop goto 0x000F00
0x000E88:
    push (+ (int32 self.shblcon):xstart (random[]:int32 (var 2s)))
    stog.x* = (int32 self.shblcon)
    push (+ (int32 self.shblcon):ystart (random[]:int32 (var 2s)))
    stog.y* = (int32 self.shblcon)
0x000F00:
    if !(== self.con 11s) goto 0x000F40
0x000F14:
    [obj_heart].movement = -1s
    self.con = 12s
    stog.alarm[4s] = 40s
0x000F40:
    if !(== self.con 13s) goto 0x000FC4
0x000F54:
    call (caster_stop[]:int32 global.batmusic)
    self.ctheart = (instance_create[]:int32 (var 742s) (+ 743.y 8s) (+ 743.x 8s))
    [obj_heart].x = -999s
    [obj_heart].movement = -1s
    self.con = 14s
0x000FC4:
    if !(== self.con 15s) goto 0x0010D4
0x000FD8:
    self.shblcon = (instance_create[]:int32 (var 186s) (int32 self.phone):y (+ (int32 self.phone):x 10s))
    push 27s
    stog.sprite_index* = (int32 self.shblcon)
    self.shake = 1s
    global.typer = 49s
    stog.msg[0s] = "Now press [Z]!!!"
    call (instance_create[]:int32 (var 782s) (- (int32 self.phone):y 140s) (- (int32 self.phone):x 100s))
    self.con = 16s
    stog.alarm[4s] = 15s
0x0010D4:
    if !(== self.con 17s) goto 0x001378
0x0010E8:
    if !(> global.hp 999s) goto 0x001358
0x0010FC:
    global.turntimer = 300s
    call (instance_create[]:int32 (var 675s) (- 743.y 180s) 743.x)
    call (instance_create[]:int32 (var 675s) (- 743.y 180s) (- 743.x 20s))
    call (instance_create[]:int32 (var 675s) (- 743.y 180s) (- 743.x 40s))
    call (instance_create[]:int32 (var 675s) (- 743.y 180s) (- 743.x 60s))
    call (instance_create[]:int32 (var 675s) (- 743.y 180s) (+ 743.x 20s))
    call (instance_create[]:int32 (var 675s) (- 743.y 180s) (+ 743.x 40s))
    call (instance_create[]:int32 (var 675s) (- 743.y 180s) (+ 743.x 60s))
    call (instance_create[]:int32 (var 675s) (- 743.y 220s) 743.x)
    call (instance_create[]:int32 (var 675s) (- 743.y 260s) 743.x)
    call (instance_create[]:int32 (var 675s) (- 743.y 220s) (- 743.x 20s))
    call (instance_create[]:int32 (var 675s) (- 743.y 220s) (+ 743.x 20s))
    [obj_blackboxtest].vspeed = 3s
    [obj_blackboxtest].friction = -0.1d
    [obj_blackboxtest].dmg = 1s
0x001358:
    self.con = 18s
    stog.alarm[4s] = 120s
0x001378:
    if !(== self.con 25s) goto 0x001404
0x00138C:
    pushenv 782s 0x0013A0
0x001394:
    call (instance_destroy[]:int32 )
0x0013A0:
    popenv 0x001394
0x0013A4:
    pushenv (int32 self.shblcon) 0x0013C0
0x0013B4:
    call (instance_destroy[]:int32 )
0x0013C0:
    popenv 0x0013B4
0x0013C4:
    pushenv 739s 0x0013D8
0x0013CC:
    call (instance_destroy[]:int32 )
0x0013D8:
    popenv 0x0013CC
0x0013DC:
    self.con = 24.5d
    stog.alarm[4s] = 30s
0x001404:
    if !(== self.con 25.5d) goto 0x0014F0
0x001420:
    global.msc = 0s
    stog.msg[0s] = "OOOH!/"
    stog.msg[1s] = "OOOOOOOH!/"
    stog.msg[2s] = "YOU'VE DEFEATED ME!!/"
    stog.msg[3s] = "HOW CAN THIS BE,&YOU WERE STRONGER&THAN I THOUGHT, ETC./%%"
    global.typer = 51s
    call (scr_blcon[]:int32 (var 1s) (- (int32 self.mypart1):y 120s) (- (int32 self.mypart1):x 320s))
    self.con = 26s
0x0014F0:
    if !(== self.con 26s) goto 0x001520
0x001504:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001524
0x001520:
    push 0s
0x001524:
    if !pop goto 0x0015DC
0x001528:
    stog.msg[0s] = "WHATEVER."
    call (scr_blcon[]:int32 (var 1s) (- (int32 self.mypart1):y 120s) (- (int32 self.mypart1):x 320s))
    self.con = 27s
    push -7s
    stog.hspeed* = (int32 self.mypart1)
    push 1s
    stog.hurta* = (int32 self.mypart1)
    stog.alarm[4s] = 60s
0x0015DC:
    if !(>= self.con 27s) goto 0x001650
0x0015F0:
    if !(bool (instance_exists[]:int32 (var 188s))) goto 0x001650
0x001608:
    [obj_blconwideslave].x = (- (int32 self.mypart1):x 320s)
    [OBJ_WRITER].writingx = (- (int32 self.mypart1):x 280s)
0x001650:
    if !(== self.con 28s) goto 0x0016A8
0x001664:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    self.con = 29s
    stog.alarm[4s] = 13s
0x0016A8:
    if !(== self.con 30s) goto 0x0016E4
0x0016BC:
    call (caster_free[]:int32 (var -3s))
    call (room_goto[]:int32 global.currentroom)
0x0016E4:
    exit
