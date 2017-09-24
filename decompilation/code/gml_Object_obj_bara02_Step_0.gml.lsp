0x000000:
    if !(== global.mnfight 3s) goto 0x000038
0x000014:
    self.attacked = 0s
    pushenv 699s 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    popenv 0x000028
0x000038:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0001E0
0x000054:
    push -5s
    if !(== 0s:monster 1s) goto 0x0000D8
0x000070:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0000D8
0x0000A8:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0000D8:
    push -5s
    if !(== 1s:monster 1s) goto 0x00015C
0x0000F4:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x00015C
0x00012C:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x00015C:
    push -5s
    if !(== 2s:monster 1s) goto 0x0001E0
0x000178:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001E0
0x0001B0:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001E0:
    if !(== global.mnfight 1s) goto 0x000248
0x0001F4:
    if !(== self.talked 0s) goto 0x000248
0x000208:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000248:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002D4
0x000260:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002B8
0x00027C:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002B8
0x00029C:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002BC
0x0002B8:
    push 0s
0x0002BC:
    if !pop goto 0x0002D4
0x0002C0:
    stog.alarm[5s] = 2s
0x0002D4:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000338
0x0002F8:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000338:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000458
0x00035C:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0003B0
0x00039C:
    stog.alarm[2s] = 15s
0x0003B0:
    popenv 0x00039C
0x0003B4:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000428
0x0003D8:
    push 0s
    stog.pause* = (int32 self.mypart1)
    stog.hurtanim[(int32 self.myself)] = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000458
0x000428:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000458:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000528
0x00047C:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004F0
0x0004DC:
    stog.alarm[2s] = 30s
0x0004F0:
    popenv 0x0004DC
0x0004F4:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000528:
    if !(== global.mnfight 2s) goto 0x000A98
0x00053C:
    push 759.y
    if !(> -5s 2s:idealborder) goto 0x000584
0x00055C:
    [obj_heart].y = (/ (+ 759.y 761.y) (double 2s))
0x000584:
    if !(== self.attacked 0s) goto 0x000A98
0x000598:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 180s
    if !(== (instance_exists[]:int32 (var 699s)) 0s) goto 0x000894
0x0005D0:
    if !(== self.whatiheard 1s) goto 0x00060C
0x0005E4:
    if !(== self.con 0s) goto 0x00060C
0x0005F8:
    push (> self.pop 1s)
    goto 0x000610
0x00060C:
    push 0s
0x000610:
    if !pop goto 0x000620
0x000614:
    self.mycommand = 80s
0x000620:
    if !(>= self.mycommand 0s) goto 0x000648
0x000634:
    push (<= self.mycommand 50s)
    goto 0x00064C
0x000648:
    push 0s
0x00064C:
    if !pop goto 0x000718
0x000650:
    global.firingrate = 25s
    self.gen = (instance_create[]:int32 (var 699s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    push 8s
    push (int32 self.gen)
    stog.alarm[] = 0s
    if !(> self.con 6s) goto 0x0006F4
0x0006E0:
    push (== (scr_monstersum[]:int32 ) 2s)
    goto 0x0006F8
0x0006F4:
    push 0s
0x0006F8:
    if !pop goto 0x000714
0x0006FC:
    push 1s
    stog.shake* = (int32 self.gen)
0x000714:
    goto 0x000878
0x000718:
    global.firingrate = 20s
    if !(== self.whatiheard 1s) goto 0x000760
0x000738:
    if !(== self.con 0s) goto 0x000760
0x00074C:
    push (> self.pop 1s)
    goto 0x000764
0x000760:
    push 0s
0x000764:
    if !pop goto 0x0007C0
0x000768:
    call (instance_create[]:int32 (var 308s) (- (/ self.room_height (double 2s)) 80s) (- (/ self.room_width (double 2s)) 15s))
    global.firingrate = 35s
0x0007C0:
    self.gen = (instance_create[]:int32 (var 699s) self.y self.x)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    push 8s
    push (int32 self.gen)
    stog.alarm[] = 1s
    if !(> self.con 6s) goto 0x000858
0x000844:
    push (== (scr_monstersum[]:int32 ) 2s)
    goto 0x00085C
0x000858:
    push 0s
0x00085C:
    if !pop goto 0x000878
0x000860:
    push 1s
    stog.shake* = (int32 self.gen)
0x000878:
    push self.myself
    stog.myself* = (int32 self.gen)
0x000894:
    if !(>= self.mycommand 0s) goto 0x0008C0
0x0008A8:
    stog.msg[0s] = "* Sweat pours from 02's armor."
0x0008C0:
    if !(>= self.mycommand 25s) goto 0x0008EC
0x0008D4:
    stog.msg[0s] = "* 01 is polishing his face."
0x0008EC:
    if !(>= self.mycommand 50s) goto 0x000918
0x000900:
    stog.msg[0s] = "* 01 stands guard."
0x000918:
    if !(>= self.mycommand 75s) goto 0x000944
0x00092C:
    stog.msg[0s] = "* 02 watches your movements."
0x000944:
    if !(>= self.mycommand 90s) goto 0x000970
0x000958:
    stog.msg[0s] = "* Smells like a military zoo."
0x000970:
    self.pop = (scr_monstersum[]:int32 )
    if !(== self.pop 1s) goto 0x000A44
0x000994:
    if !(>= self.mycommand 0s) goto 0x0009C0
0x0009A8:
    stog.msg[0s] = "* 02 is clenching and unclenching&  his fists."
0x0009C0:
    if !(>= self.mycommand 25s) goto 0x0009EC
0x0009D4:
    stog.msg[0s] = "* 02 is shaking his head."
0x0009EC:
    if !(>= self.mycommand 50s) goto 0x000A18
0x000A00:
    stog.msg[0s] = "* 02 is striking his sword&  against the ground."
0x000A18:
    if !(>= self.mycommand 75s) goto 0x000A44
0x000A2C:
    stog.msg[0s] = "* 02 is coughing."
0x000A44:
    push -5s
    if !(< (int32 self.myself):monsterhp 30s) goto 0x000A80
0x000A68:
    stog.msg[0s] = "* 02's breathing intensifies."
0x000A80:
    self.attacked = 1s
    self.whatiheard = -1s
0x000A98:
    if !(== global.myfight 2s) goto 0x000DA4
0x000AAC:
    if !(!= self.whatiheard -1s) goto 0x000DA4
0x000AC0:
    if !(== global.heard 0s) goto 0x000DA4
0x000AD4:
    if !(== self.whatiheard 0s) goto 0x000BE4
0x000AE8:
    global.msc = 0s
    stog.msg[0s] = "* RG 02 - ATK 30 DEF 20&* Royal Guard member with&  stuffy armor./^"
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000B3C
0x000B20:
    push -5s
    push (== 27s:flag 0s)
    goto 0x000B40
0x000B3C:
    push 0s
0x000B40:
    if !pop goto 0x000B74
0x000B44:
    stog.msg[0s] = "* Do they both wish for death^1?&* That means their love will&  end in hell./"
    stog.msg[1s] = "* I couldn't stop laughing./^"
0x000B74:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BD4
0x000BC8:
    self.halt = 0s
0x000BD4:
    popenv 0x000BC8
0x000BD8:
    self.whatiheard = 9s
0x000BE4:
    if !(== self.whatiheard 1s) goto 0x000CFC
0x000BF8:
    global.msc = 0s
    stog.msg[0s] = "* You clean RG 02's armor.&* Its cooling dirt begins to&  wash away./^"
    if !(< (scr_monstersum[]:int32 ) 2s) goto 0x000C48
0x000C30:
    stog.msg[0s] = "* You were repelled./^"
0x000C48:
    if !(== self.shirtless 1s) goto 0x000C98
0x000C5C:
    stog.msg[0s] = "* You pat RG 02's chest&  like a muscular bongo./^"
    if !(bool (instance_exists[]:int32 (var 309s))) goto 0x000C98
0x000C8C:
    [obj_bara01].whatiheard = 12s
0x000C98:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000CF8
0x000CEC:
    self.halt = 0s
0x000CF8:
    popenv 0x000CEC
0x000CFC:
    if !(== self.whatiheard 3s) goto 0x000D98
0x000D10:
    global.msc = 0s
    stog.msg[0s] = "* You tell RG 02 your favorite&  secret./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000D94
0x000D88:
    self.halt = 0s
0x000D94:
    popenv 0x000D88
0x000D98:
    global.heard = 1s
0x000DA4:
    if !(== self.alphaup 1s) goto 0x000DCC
0x000DB8:
    push (< self.image_alpha 1s)
    goto 0x000DD0
0x000DCC:
    push 0s
0x000DD0:
    if !pop goto 0x000DF4
0x000DD4:
    self.image_alpha = (+ self.image_alpha 0.05d)
0x000DF4:
    if !(== global.myfight 4s) goto 0x000E50
0x000E08:
    if !(== global.mercyuse 0s) goto 0x000E50
0x000E1C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000E50
0x000E44:
    call (instance_destroy[]:int32 )
0x000E50:
    if !(== self.mercymod 222s) goto 0x000E80
0x000E64:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E84
0x000E80:
    push 0s
0x000E84:
    if !pop goto 0x000EBC
0x000E88:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000EBC
0x000EB0:
    call (instance_destroy[]:int32 )
0x000EBC:
    if !(== global.mnfight 5s) goto 0x0012D4
0x000ED0:
    if !(== self.con 0s) goto 0x000F28
0x000EE4:
    [obj_heart].x = -800s
    [obj_heart].movement = -1s
    global.border = 0s
    stog.alarm[4s] = 15s
    self.con = 1s
0x000F28:
    if !(== self.con 2s) goto 0x00102C
0x000F3C:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (- self.x self.blconx))
    push 20s
    stog.sprite_index* = (int32 self.blcon)
    global.typer = 2s
    stog.msg[0s] = "...&can't&...&take it./"
    stog.msg[1s] = "...&armor...&too...&HOT!!!/%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.con = 3s
0x00102C:
    if !(== self.con 3s) goto 0x00105C
0x001040:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001060
0x00105C:
    push 0s
0x001060:
    if !pop goto 0x0010D8
0x001064:
    pushenv (int32 self.blcon) 0x001080
0x001074:
    call (instance_destroy[]:int32 )
0x001080:
    popenv 0x001074
0x001084:
    call (snd_play[]:int32 (var 47s))
    pushenv (int32 self.mypart1) 0x0010B4
0x0010A8:
    self.bodypic = 363s
0x0010B4:
    popenv 0x0010A8
0x0010B8:
    self.con = 4s
    stog.alarm[4s] = 60s
0x0010D8:
    if !(== self.con 5s) goto 0x001108
0x0010EC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00110C
0x001108:
    push 0s
0x00110C:
    if !pop goto 0x001228
0x001110:
    if !(bool (instance_exists[]:int32 (var 309s))) goto 0x001150
0x001128:
    pushenv (int32 309.mypart1) 0x00114C
0x001138:
    call (event_user[]:int32 (var 2s))
0x00114C:
    popenv 0x001138
0x001150:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y self.blcony) (- self.x self.blconx))
    push 20s
    stog.sprite_index* = (int32 self.blcon)
    global.typer = 2s
    stog.msg[0s] = "...&much&better./%%"
    self.writer = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.con = 6s
0x001228:
    if !(== self.con 6s) goto 0x001258
0x00123C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00125C
0x001258:
    push 0s
0x00125C:
    if !pop goto 0x0012D4
0x001260:
    self.shirtless = 1s
    pushenv (int32 self.blcon) 0x001288
0x00127C:
    call (instance_destroy[]:int32 )
0x001288:
    popenv 0x00127C
0x00128C:
    stog.msg[0s] = "* RG 01 looks bothered by&  something."
    self.con = 7s
    global.mnfight = 3s
    [obj_bara01].shake = 1s
    [obj_heart].movement = 1s
0x0012D4:
    exit
