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
    stog.alarm[6s] = 3s
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
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000320:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000484
0x000344:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x000398
0x000384:
    stog.alarm[2s] = 15s
0x000398:
    popenv 0x000384
0x00039C:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000454
0x0003C0:
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    self.mypart2 = (instance_create[]:int32 self.part2 self.y self.x)
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000484
0x000454:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000484:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000554
0x0004A8:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x00051C
0x000508:
    stog.alarm[2s] = 30s
0x00051C:
    popenv 0x000508
0x000520:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000554:
    if !(== global.mnfight 2s) goto 0x0007EC
0x000568:
    if !(== self.attacked 0s) goto 0x0007EC
0x00057C:
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x000654
0x000590:
    global.turntimer = 200s
    self.gen1 = (instance_create[]:int32 (var 656s) self.y self.x)
    self.gen = (instance_create[]:int32 (var 656s) self.y self.x)
    push 7s
    stog.dmg* = (int32 self.gen)
    push 7s
    stog.dmg* = (int32 self.gen1)
    push self.myself
    stog.myself* = (int32 self.gen1)
    push self.myself
    stog.myself* = (int32 self.gen)
0x000654:
    if !(>= self.mycommand 0s) goto 0x000680
0x000668:
    stog.msg[0s] = "* The Dogs keep shifting their&  axes to protect each other."
0x000680:
    if !(>= self.mycommand 25s) goto 0x0006AC
0x000694:
    stog.msg[0s] = "* The Dogs are re-evaluating&  your smell."
0x0006AC:
    if !(>= self.mycommand 50s) goto 0x0006D8
0x0006C0:
    stog.msg[0s] = "* The Dogs are practicing for&  the next couples contest."
0x0006D8:
    if !(>= self.mycommand 75s) goto 0x000704
0x0006EC:
    stog.msg[0s] = "* The Dogs are saying sickly&  sweet things to each other."
0x000704:
    if !(== self.smell 1s) goto 0x000730
0x000718:
    stog.msg[0s] = "* The Dogs may want to&  re-smell you."
0x000730:
    if !(== self.smell 2s) goto 0x00075C
0x000744:
    stog.msg[0s] = "* The Dogs think that you&  may be a lost puppy."
0x00075C:
    if !(> self.mercymod 100s) goto 0x000788
0x000770:
    stog.msg[0s] = "* Every dog loves to play&  fetch!!!"
0x000788:
    if !(> self.mercymod 900s) goto 0x0007B4
0x00079C:
    stog.msg[0s] = "* The Dogs' minds have been&  expanded."
0x0007B4:
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x0007E0
0x0007C8:
    stog.msg[0s] = "* The Dogaressa is on the&  warpath."
0x0007E0:
    self.attacked = 1s
0x0007EC:
    if !(== global.myfight 2s) goto 0x000CAC
0x000800:
    if !(!= self.whatiheard -1s) goto 0x000CAC
0x000814:
    if !(== global.heard 0s) goto 0x000CAC
0x000828:
    if !(== self.whatiheard 0s) goto 0x0008C4
0x00083C:
    global.msc = 0s
    stog.msg[0s] = "* DOGARESSA - ATK 14 DEF 5&* This puppy finds her&  hubby lovely^1. SMELLS ONLY?/^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0008C0
0x0008B4:
    self.halt = 0s
0x0008C0:
    popenv 0x0008B4
0x0008C4:
    if !(== self.whatiheard 1s) goto 0x000A48
0x0008D8:
    global.msc = 0s
    if !(== self.smell 0s) goto 0x000928
0x0008F8:
    stog.msg[0s] = "* The Dogs sniff you again.../"
    stog.msg[1s] = "* But you smell just as&  weird as before!/^"
0x000928:
    if !(== self.smell 1s) goto 0x00096C
0x00093C:
    stog.msg[0s] = "* The Dogs sniff you again.../"
    stog.msg[1s] = "* After rolling in the dirt^1,&  you smell all right!/^"
0x00096C:
    if !(>= self.smell 2s) goto 0x000998
0x000980:
    stog.msg[0s] = "* The Dogs already know you&  smell fine./^"
0x000998:
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x0009C4
0x0009AC:
    stog.msg[0s] = "* The Dogaressa won't even&  lift up her snout./^"
0x0009C4:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A24
0x000A18:
    self.halt = 0s
0x000A24:
    popenv 0x000A18
0x000A28:
    if !(== self.smell 1s) goto 0x000A48
0x000A3C:
    [obj_dogeparent].smell = 2s
0x000A48:
    if !(== self.whatiheard 3s) goto 0x000BCC
0x000A5C:
    global.msc = 0s
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x000A98
0x000A7C:
    stog.msg[0s] = "* The Dogaressa just growls& at you./^"
    goto 0x000B68
0x000A98:
    if !(< self.smell 2s) goto 0x000AC4
0x000AAC:
    stog.msg[0s] = "* The Dogaressa is too&  suspicious of your smell./^"
0x000AC4:
    if (== self.smell 2s) goto 0x000AEC
0x000AD8:
    push (== self.smell 3s)
    goto 0x000AF0
0x000AEC:
    push 1s
0x000AF0:
    if !pop goto 0x000B18
0x000AF4:
    stog.msg[0s] = "* You pet the Dogaressa./^"
    self.smell = 3s
0x000B18:
    if !(== self.smell 3s) goto 0x000B40
0x000B2C:
    push (== 245.smell 3s)
    goto 0x000B44
0x000B40:
    push 0s
0x000B44:
    if !pop goto 0x000B68
0x000B48:
    [obj_dogeparent].mercymod = 999s
    stog.flag[140s] = 1s
0x000B68:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BC8
0x000BBC:
    self.halt = 0s
0x000BC8:
    popenv 0x000BBC
0x000BCC:
    if !(== self.whatiheard 4s) goto 0x000CA0
0x000BE0:
    global.msc = 0s
    stog.msg[0s] = "* You roll around in the&  dirt and snow./"
    stog.msg[1s] = "* You smell like a weird&  puppy./^"
    if !(== self.smell 0s) goto 0x000C3C
0x000C30:
    [obj_dogeparent].smell = 1s
0x000C3C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C9C
0x000C90:
    self.halt = 0s
0x000C9C:
    popenv 0x000C90
0x000CA0:
    global.heard = 1s
0x000CAC:
    if !(== global.myfight 4s) goto 0x000D08
0x000CC0:
    if !(== global.mercyuse 0s) goto 0x000D08
0x000CD4:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000D08
0x000CFC:
    call (instance_destroy[]:int32 )
0x000D08:
    if !(== self.mercymod 222s) goto 0x000D38
0x000D1C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D3C
0x000D38:
    push 0s
0x000D3C:
    if !pop goto 0x000D74
0x000D40:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000D74
0x000D68:
    call (instance_destroy[]:int32 )
0x000D74:
    exit
