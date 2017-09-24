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
    if !(== global.mnfight 1s) goto 0x00023C
0x0001DC:
    if !(== self.talked 0s) goto 0x00023C
0x0001F0:
    self.attacked = 0s
    stog.alarm[5s] = 80s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x00023C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002AC
0x000254:
    push -1s
    if !(> 5s:alarm 5s) goto 0x000290
0x000270:
    push 758.x
    push (== -5s 0s:idealborder)
    goto 0x000294
0x000290:
    push 0s
0x000294:
    if !pop goto 0x0002AC
0x000298:
    stog.alarm[5s] = 2s
0x0002AC:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000310
0x0002D0:
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000310:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000424
0x000334:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x000388
0x000374:
    stog.alarm[2s] = 15s
0x000388:
    popenv 0x000374
0x00038C:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0003F4
0x0003B0:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000424
0x0003F4:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000424:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0004F4
0x000448:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004BC
0x0004A8:
    stog.alarm[2s] = 30s
0x0004BC:
    popenv 0x0004A8
0x0004C0:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0004F4:
    if !(== global.mnfight 2s) goto 0x000668
0x000508:
    if !(== self.attacked 0s) goto 0x000668
0x00051C:
    global.turntimer = 1s
    global.firingrate = 1s
    if !(>= self.mycommand 0s) goto 0x000560
0x000548:
    stog.msg[0s] = "* Dummy looks like it's&  going to fall over."
0x000560:
    if !(>= self.mycommand 50s) goto 0x00058C
0x000574:
    stog.msg[0s] = "* Dummy stands around&  absentmindedly."
0x00058C:
    global.mnfight = 3s
    if !(> global.turn 6s) goto 0x00065C
0x0005AC:
    if !(== self.outside 0s) goto 0x00065C
0x0005C0:
    stog.msg[0s] = "* Dummy tires of your&  aimless shenanigans."
    stog.flag[13s] = 1s
    stog.alarm[7s] = 2s
    global.mnfight = 2s
    global.typer = 1s
    global.msc = 0s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
0x00065C:
    self.attacked = 1s
0x000668:
    if !(== self.whatiheard 0s) goto 0x0006B0
0x00067C:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0006B0
0x000698:
    global.mnfight = 1s
    global.myfight = 0s
0x0006B0:
    if !(== self.whatiheard 3s) goto 0x000710
0x0006C4:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000710
0x0006E0:
    stog.flag[10s] = 1s
    stog.monster[(int32 self.myself)] = 0s
0x000710:
    if !(== global.myfight 2s) goto 0x0008D4
0x000724:
    if !(!= self.whatiheard -1s) goto 0x0008D4
0x000738:
    if !(== global.heard 0s) goto 0x0008D4
0x00074C:
    if !(== self.whatiheard 0s) goto 0x0007E8
0x000760:
    global.msc = 0s
    stog.msg[0s] = "* DUMMY - ATK 0 DEF 0^1 &* A cotton heart and a button ey^1e* You are the apple of my eye/%%"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0007E4
0x0007D8:
    self.halt = 0s
0x0007E4:
    popenv 0x0007D8
0x0007E8:
    if !(== self.whatiheard 3s) goto 0x0008C8
0x0007FC:
    global.msc = 0s
    stog.msg[0s] = "* You talk to the DUMMY^2.&* .../"
    stog.msg[1s] = "* It doesn't seem much for&  conversation./"
    stog.msg[2s] = "* TORIEL seems happy with you./%%"
    stog.flag[14s] = 2s
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0008C4
0x0008B8:
    self.halt = 0s
0x0008C4:
    popenv 0x0008B8
0x0008C8:
    global.heard = 1s
0x0008D4:
    if !(== global.myfight 4s) goto 0x000910
0x0008E8:
    if !(== global.mercyuse 0s) goto 0x000910
0x0008FC:
    call (script_execute[]:int32 (var 163s))
0x000910:
    exit
