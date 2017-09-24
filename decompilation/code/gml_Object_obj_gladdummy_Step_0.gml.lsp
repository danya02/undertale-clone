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
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002C8
0x000254:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002AC
0x000270:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002AC
0x000290:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002B0
0x0002AC:
    push 0s
0x0002B0:
    if !pop goto 0x0002C8
0x0002B4:
    stog.alarm[5s] = 2s
0x0002C8:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x00032C
0x0002EC:
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x00032C:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000454
0x000350:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0003A4
0x000390:
    stog.alarm[2s] = 15s
0x0003A4:
    popenv 0x000390
0x0003A8:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000410
0x0003CC:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000454
0x000410:
    call (caster_free[]:int32 (var -3s))
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000454:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000524
0x000478:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004EC
0x0004D8:
    stog.alarm[2s] = 30s
0x0004EC:
    popenv 0x0004D8
0x0004F0:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000524:
    if !(== global.mnfight 2s) goto 0x000684
0x000538:
    if !(== self.attacked 0s) goto 0x000684
0x00054C:
    global.turntimer = 1s
    global.firingrate = 1s
    if !(>= self.mycommand 0s) goto 0x000590
0x000578:
    stog.msg[0s] = "* Dummy looks like it's&  going to fall over."
0x000590:
    if !(>= self.mycommand 50s) goto 0x0005BC
0x0005A4:
    stog.msg[0s] = "* Dummy stands around&  absentmindedly."
0x0005BC:
    global.mnfight = 3s
    if !(> global.turn 6s) goto 0x000678
0x0005DC:
    if !(== self.outside 0s) goto 0x000678
0x0005F0:
    stog.msg[0s] = "* Dummy tires of your&  aimless shenanigans."
    stog.alarm[7s] = 2s
    global.mnfight = 2s
    global.typer = 1s
    global.msc = 0s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
0x000678:
    self.attacked = 1s
0x000684:
    if !(== self.whatiheard 0s) goto 0x0006CC
0x000698:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0006CC
0x0006B4:
    global.mnfight = 1s
    global.myfight = 0s
0x0006CC:
    if !(== global.myfight 2s) goto 0x0007B0
0x0006E0:
    if !(!= self.whatiheard -1s) goto 0x0007B0
0x0006F4:
    if !(== global.heard 0s) goto 0x0007B0
0x000708:
    if !(== self.whatiheard 0s) goto 0x0007A4
0x00071C:
    global.msc = 0s
    stog.msg[0s] = "* GLAD DUMMY - ATK 0 DEF 0^1 &* Wipe that smile off your&  face./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0007A0
0x000794:
    self.halt = 0s
0x0007A0:
    popenv 0x000794
0x0007A4:
    global.heard = 1s
0x0007B0:
    if !(== global.myfight 4s) goto 0x000808
0x0007C4:
    if !(== global.mercyuse 0s) goto 0x000808
0x0007D8:
    call (script_execute[]:int32 (var 163s))
    stog.monster[(int32 self.myself)] = 0s
0x000808:
    exit
