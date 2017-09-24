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
    if !(== global.mnfight 2s) goto 0x0009A8
0x000568:
    if !(== self.attacked 0s) goto 0x0009A8
0x00057C:
    self.pop = (scr_monstersum[]:int32 )
    if !(bool (instance_exists[]:int32 (var 217s))) goto 0x0005D0
0x0005A4:
    if !(== 217.ditch 0s) goto 0x0005D0
0x0005B8:
    self.pop = (- self.pop 1s)
0x0005D0:
    global.turntimer = 120s
    if !(> self.mercymod 90s) goto 0x0005FC
0x0005F0:
    global.turntimer = -2s
0x0005FC:
    global.firingrate = 5s
    if !(== global.hardmode 1s) goto 0x000628
0x00061C:
    global.firingrate = 3s
0x000628:
    if !(== self.pop 3s) goto 0x00065C
0x00063C:
    global.firingrate = (* global.firingrate 2.4d)
0x00065C:
    if !(== self.pop 2s) goto 0x000690
0x000670:
    global.firingrate = (* global.firingrate 1.7d)
0x000690:
    if !(>= self.mycommand 0s) goto 0x0006B8
0x0006A4:
    push (<= self.mycommand 60s)
    goto 0x0006BC
0x0006B8:
    push 0s
0x0006BC:
    if !pop goto 0x000704
0x0006C0:
    self.gen = (instance_create[]:int32 (var 714s) self.y self.x)
    push 1s
    stog.bullettype* = (int32 self.gen)
    goto 0x000744
0x000704:
    self.gen = (instance_create[]:int32 (var 684s) self.y self.x)
    push 0s
    stog.bullettype* = (int32 self.gen)
0x000744:
    push self.myself
    stog.myself* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x00078C
0x000774:
    stog.msg[0s] = "* Gyftrot laments its lack of&  hands."
0x00078C:
    if !(>= self.mycommand 25s) goto 0x0007B8
0x0007A0:
    stog.msg[0s] = "* Gyftrot eyes you with&  suspicion."
0x0007B8:
    if !(>= self.mycommand 40s) goto 0x0007E4
0x0007CC:
    stog.msg[0s] = "* Gyftrot distrusts your&  youthful demeanor."
0x0007E4:
    if !(>= self.mycommand 60s) goto 0x000810
0x0007F8:
    stog.msg[0s] = "* Ah^1, the scent of fresh&  pine needles."
0x000810:
    if !(>= self.mycommand 80s) goto 0x00083C
0x000824:
    stog.msg[0s] = "* Gyftrot tries vainly to&  remove its decorations."
0x00083C:
    if !(== self.giftgiven 1s) goto 0x000868
0x000850:
    stog.msg[0s] = "* Gyftrot pretends to refuse&  your gift."
0x000868:
    if !(== self.giftgiven 2s) goto 0x000894
0x00087C:
    stog.msg[0s] = "* Gyftrot politely accepts&  your gift."
0x000894:
    if !(== self.googly 1s) goto 0x0008C0
0x0008A8:
    stog.msg[0s] = "* Gyftrot stumbles blindly."
0x0008C0:
    if (== self.itemgone 1s) goto 0x0008E8
0x0008D4:
    push (== self.itemgone 2s)
    goto 0x0008EC
0x0008E8:
    push 1s
0x0008EC:
    if !pop goto 0x000908
0x0008F0:
    stog.msg[0s] = "* Gyftrot is slightly less&  irritated."
0x000908:
    if !(== self.itemgone 3s) goto 0x000934
0x00091C:
    stog.msg[0s] = "* Gyftrot's problems have&  been taken away."
0x000934:
    if !(== self.betray 1s) goto 0x000960
0x000948:
    stog.msg[0s] = "* Gyftrot looks disappointed."
0x000960:
    push -5s
    if !(< (int32 self.myself):monsterhp 30s) goto 0x00099C
0x000984:
    stog.msg[0s] = "* Gyftrot's antlers tremble."
0x00099C:
    self.attacked = 1s
0x0009A8:
    if !(== global.myfight 2s) goto 0x001304
0x0009BC:
    if !(!= self.whatiheard -1s) goto 0x001304
0x0009D0:
    if !(== global.heard 0s) goto 0x0012F8
0x0009E4:
    if !(== self.whatiheard 0s) goto 0x000A80
0x0009F8:
    global.msc = 0s
    stog.msg[0s] = "* GYFTROT - ATK 16 DEF 8&* Some teens \"decorated\" it as&  a prank./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A7C
0x000A70:
    self.halt = 0s
0x000A7C:
    popenv 0x000A70
0x000A80:
    if !(== self.whatiheard 1s) goto 0x000F04
0x000A94:
    global.msc = 0s
    if !(< self.itemgone 3s) goto 0x000C94
0x000AB4:
    push -1s
    if !(== (int32 self.itemgone):gift 0s) goto 0x000AF0
0x000AD8:
    stog.msg[0s] = "* You remove the striped cane&  that says \"I use this tiny&  cane to walk\" on it./^"
0x000AF0:
    push -1s
    if !(== (int32 self.itemgone):gift 1s) goto 0x000B2C
0x000B14:
    stog.msg[0s] = "* You remove the box of&  non-dog-related raisins./^"
0x000B2C:
    push -1s
    if !(== (int32 self.itemgone):gift 2s) goto 0x000B68
0x000B50:
    stog.msg[0s] = "* You remove the lenticular&  bookmark of a smug teen&  winking./^"
0x000B68:
    push -1s
    if !(== (int32 self.itemgone):gift 3s) goto 0x000BA4
0x000B8C:
    stog.msg[0s] = "* You remove the barbed wire&  made of pipe cleaners./^"
0x000BA4:
    push -1s
    if !(== (int32 self.itemgone):gift 4s) goto 0x000BE0
0x000BC8:
    stog.msg[0s] = "* You remove a childhood&  photograph of Snowdrake and&  his parent./^"
0x000BE0:
    push -1s
    if !(== (int32 self.itemgone):gift 5s) goto 0x000C1C
0x000C04:
    stog.msg[0s] = "* You remove a small^1, confused&  dog./^"
0x000C1C:
    push -1s
    if !(== (int32 self.itemgone):gift 6s) goto 0x000C58
0x000C40:
    stog.msg[0s] = "* You remove a stocking filled&  with chicken nuggets./^"
0x000C58:
    push -1s
    if !(== (int32 self.itemgone):gift 7s) goto 0x000C94
0x000C7C:
    stog.msg[0s] = "* You remove the shirt that says& 'I'm with stupid' and points&  inward./^"
0x000C94:
    if !(== self.itemgone 3s) goto 0x000CCC
0x000CA8:
    stog.msg[0s] = "* You try to undecorate...?/^"
    self.mercymod = 180s
0x000CCC:
    if !(== self.googly 1s) goto 0x000CF8
0x000CE0:
    stog.msg[0s] = "* You remove the googly eyes./^"
0x000CF8:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000D58
0x000D4C:
    self.halt = 0s
0x000D58:
    popenv 0x000D4C
0x000D5C:
    if !(== self.googly 1s) goto 0x000DAC
0x000D70:
    self.googly = 0s
    self.ung = 1s
    pushenv (int32 self.mypart5) 0x000DA4
0x000D98:
    call (instance_destroy[]:int32 )
0x000DA4:
    popenv 0x000D98
0x000DA8:
    goto 0x000E80
0x000DAC:
    if !(< self.itemgone 3s) goto 0x000E80
0x000DC0:
    if !(== self.itemgone 2s) goto 0x000E00
0x000DD4:
    pushenv (int32 self.mypart8) 0x000DF0
0x000DE4:
    call (instance_destroy[]:int32 )
0x000DF0:
    popenv 0x000DE4
0x000DF4:
    self.itemgone = 3s
0x000E00:
    if !(== self.itemgone 1s) goto 0x000E40
0x000E14:
    pushenv (int32 self.mypart4) 0x000E30
0x000E24:
    call (instance_destroy[]:int32 )
0x000E30:
    popenv 0x000E24
0x000E34:
    self.itemgone = 2s
0x000E40:
    if !(== self.itemgone 0s) goto 0x000E80
0x000E54:
    pushenv (int32 self.mypart3) 0x000E70
0x000E64:
    call (instance_destroy[]:int32 )
0x000E70:
    popenv 0x000E64
0x000E74:
    self.itemgone = 1s
0x000E80:
    if !(< self.mercymod 150s) goto 0x000F04
0x000E94:
    if !(> self.itemgone 0s) goto 0x000EBC
0x000EA8:
    push (< self.mercymod 100s)
    goto 0x000EC0
0x000EBC:
    push 0s
0x000EC0:
    if !pop goto 0x000ED0
0x000EC4:
    self.mercymod = 10s
0x000ED0:
    if !(> self.itemgone 2s) goto 0x000F04
0x000EE4:
    self.mercymod = 160s
    stog.flag[138s] = 1s
0x000F04:
    if !(== self.whatiheard 3s) goto 0x00101C
0x000F18:
    global.msc = 0s
    if !(== self.googly 0s) goto 0x000FA0
0x000F38:
    stog.msg[0s] = "* You add some googly eyes&  you found on the ground./^"
    self.googly = 1s
    self.mypart5 = (instance_create[]:int32 self.part3 self.y self.x)
    push 8s
    stog.gift* = (int32 self.mypart5)
    goto 0x000FB8
0x000FA0:
    stog.msg[0s] = "* You can't improve on&  perfection./^"
0x000FB8:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x001018
0x00100C:
    self.halt = 0s
0x001018:
    popenv 0x00100C
0x00101C:
    if !(== self.whatiheard 4s) goto 0x0012F8
0x001030:
    global.msc = 0s
    if !(== self.giftgiven 0s) goto 0x00108C
0x001050:
    if !(== self.googly 0s) goto 0x00108C
0x001064:
    if !(> self.itemgone 0s) goto 0x00108C
0x001078:
    push (== self.betray 0s)
    goto 0x001090
0x00108C:
    push 0s
0x001090:
    if !pop goto 0x0011E0
0x001094:
    self.mypart6 = (instance_create[]:int32 self.part3 self.y self.x)
    push 9s
    stog.gift* = (int32 self.mypart6)
    if !(== global.gold 0s) goto 0x001144
0x0010E8:
    stog.msg[0s] = "* You give the cheapest gift&  of all..^1.&* Friendship./^"
    self.giftgiven = 2s
    self.mercymod = 140s
    push -5s
    stog.goldreward[(+ (int32 self.myself):goldreward 50s)] = (int32 self.myself)
0x001144:
    if !(> global.gold 0s) goto 0x0011DC
0x001158:
    if !(>= global.gold 35s) goto 0x0011A0
0x00116C:
    stog.msg[0s] = "* You give 35 G because&  you can't think of an&  appropriate gift./^"
    global.gold = (- global.gold 35s)
    goto 0x0011C4
0x0011A0:
    global.gold = 0s
    stog.msg[0s] = "* You give your remaining&  money because you can't&  think of a better gift./^"
0x0011C4:
    self.giftgiven = 1s
    self.mercymod = 140s
0x0011DC:
    goto 0x001294
0x0011E0:
    if (== self.googly 1s) goto 0x00121C
0x0011F4:
    if (== self.betray 1s) goto 0x00121C
0x001208:
    push (== self.itemgone 0s)
    goto 0x001220
0x00121C:
    push 1s
0x001220:
    if !pop goto 0x00123C
0x001224:
    stog.msg[0s] = "* Gyftrot refuses your gift./^"
0x00123C:
    if !(== self.giftgiven 1s) goto 0x001268
0x001250:
    stog.msg[0s] = "* Hey now^1.&* You aren't made of money./^"
0x001268:
    if !(== self.giftgiven 2s) goto 0x001294
0x00127C:
    stog.msg[0s] = "* Hey now^1.&* You aren't made of friendship./^"
0x001294:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0012F4
0x0012E8:
    self.halt = 0s
0x0012F4:
    popenv 0x0012E8
0x0012F8:
    global.heard = 1s
0x001304:
    if !(== global.myfight 4s) goto 0x001360
0x001318:
    if !(== global.mercyuse 0s) goto 0x001360
0x00132C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001360
0x001354:
    call (instance_destroy[]:int32 )
0x001360:
    if !(== self.mercymod 222s) goto 0x001390
0x001374:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001394
0x001390:
    push 0s
0x001394:
    if !pop goto 0x0013CC
0x001398:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x0013CC
0x0013C0:
    call (instance_destroy[]:int32 )
0x0013CC:
    exit
