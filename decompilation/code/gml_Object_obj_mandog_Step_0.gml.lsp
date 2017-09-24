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
    stog.alarm[5s] = 120s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000230:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002D8
0x000248:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002BC
0x000264:
    push -1s
    if !(< 5s:alarm 119s) goto 0x0002BC
0x000280:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002BC
0x0002A0:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002C0
0x0002BC:
    push 0s
0x0002C0:
    if !pop goto 0x0002D8
0x0002C4:
    stog.alarm[5s] = 2s
0x0002D8:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x00033C
0x0002FC:
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x00033C:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0004A0
0x000360:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0003B4
0x0003A0:
    stog.alarm[2s] = 15s
0x0003B4:
    popenv 0x0003A0
0x0003B8:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000470
0x0003DC:
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    self.mypart2 = (instance_create[]:int32 self.part2 self.y self.x)
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0004A0
0x000470:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x0004A0:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000570
0x0004C4:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000538
0x000524:
    stog.alarm[2s] = 30s
0x000538:
    popenv 0x000524
0x00053C:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000570:
    if !(== global.mnfight 2s) goto 0x00073C
0x000584:
    if !(== self.attacked 0s) goto 0x00073C
0x000598:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 172s
    global.firingrate = 15s
    if !(<= self.mycommand 50s) goto 0x0005E8
0x0005D4:
    push (> (scr_monstersum[]:int32 ) 1s)
    goto 0x0005EC
0x0005E8:
    push 0s
0x0005EC:
    if !pop goto 0x0006A8
0x0005F0:
    self.gen = (instance_create[]:int32 (var 656s) (var 0s) (var 0s))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    self.gen = (instance_create[]:int32 (var 656s) (var 0s) (var 0s))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    global.border = 8s
    goto 0x0006E8
0x0006A8:
    global.turntimer = 200s
    self.gen = (instance_create[]:int32 (var 687s) (var 0s) (var 0s))
    global.border = 9s
0x0006E8:
    push self.myself
    stog.myself* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x000730
0x000718:
    stog.msg[0s] = "* Dogamy is brokenhearted."
0x000730:
    self.attacked = 1s
0x00073C:
    if !(== global.myfight 2s) goto 0x000BFC
0x000750:
    if !(!= self.whatiheard -1s) goto 0x000BFC
0x000764:
    if !(== global.heard 0s) goto 0x000BFC
0x000778:
    if !(== self.whatiheard 0s) goto 0x000814
0x00078C:
    global.msc = 0s
    stog.msg[0s] = "* DOGAMY - ATK 14 DEF 5&* Husband of Dogaressa.&* Knows only what he smells./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000810
0x000804:
    self.halt = 0s
0x000810:
    popenv 0x000804
0x000814:
    if !(== self.whatiheard 1s) goto 0x000998
0x000828:
    global.msc = 0s
    if !(== self.smell 0s) goto 0x000878
0x000848:
    stog.msg[0s] = "* The Dogs sniff you again.../"
    stog.msg[1s] = "* But you smell just as&  weird as before!/^"
0x000878:
    if !(== self.smell 1s) goto 0x0008BC
0x00088C:
    stog.msg[0s] = "* The Dogs sniff you again.../"
    stog.msg[1s] = "* After rolling in the dirt^1,&  you smell all right!/^"
0x0008BC:
    if !(>= self.smell 2s) goto 0x0008E8
0x0008D0:
    stog.msg[0s] = "* The Dogs already know you&  smell fine./^"
0x0008E8:
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x000914
0x0008FC:
    stog.msg[0s] = "* Dogamy won't even lift&  up his snout./^"
0x000914:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000974
0x000968:
    self.halt = 0s
0x000974:
    popenv 0x000968
0x000978:
    if !(== self.smell 1s) goto 0x000998
0x00098C:
    [obj_dogeparent].smell = 2s
0x000998:
    if !(== self.whatiheard 3s) goto 0x000B1C
0x0009AC:
    global.msc = 0s
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x0009E8
0x0009CC:
    stog.msg[0s] = "* Dogamy just growls at&  you./^"
    goto 0x000AB8
0x0009E8:
    if !(< self.smell 2s) goto 0x000A14
0x0009FC:
    stog.msg[0s] = "* The Dogs are too suspicious&  of your smell./^"
0x000A14:
    if (== self.smell 2s) goto 0x000A3C
0x000A28:
    push (== self.smell 3s)
    goto 0x000A40
0x000A3C:
    push 1s
0x000A40:
    if !pop goto 0x000A68
0x000A44:
    stog.msg[0s] = "* You pet Dogamy./^"
    self.smell = 3s
0x000A68:
    if !(== self.smell 3s) goto 0x000A90
0x000A7C:
    push (== 246.smell 3s)
    goto 0x000A94
0x000A90:
    push 0s
0x000A94:
    if !pop goto 0x000AB8
0x000A98:
    [obj_dogeparent].mercymod = 999s
    stog.flag[140s] = 1s
0x000AB8:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B18
0x000B0C:
    self.halt = 0s
0x000B18:
    popenv 0x000B0C
0x000B1C:
    if !(== self.whatiheard 4s) goto 0x000BF0
0x000B30:
    global.msc = 0s
    stog.msg[0s] = "* You roll around in the&  dirt and snow./"
    stog.msg[1s] = "* You smell like a weird&  puppy./^"
    if !(== self.smell 0s) goto 0x000B8C
0x000B80:
    [obj_dogeparent].smell = 1s
0x000B8C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BEC
0x000BE0:
    self.halt = 0s
0x000BEC:
    popenv 0x000BE0
0x000BF0:
    global.heard = 1s
0x000BFC:
    if !(== global.myfight 4s) goto 0x000C58
0x000C10:
    if !(== global.mercyuse 0s) goto 0x000C58
0x000C24:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000C58
0x000C4C:
    call (instance_destroy[]:int32 )
0x000C58:
    exit
