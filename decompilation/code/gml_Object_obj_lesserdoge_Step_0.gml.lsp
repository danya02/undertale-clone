0x000000:
    if !(== global.mnfight 3s) goto 0x000020
0x000014:
    self.attacked = 0s
0x000020:
    call (scr_blconmatch[]:int32 )
    if !(== global.mnfight 1s) goto 0x000094
0x000040:
    if !(== self.talked 0s) goto 0x000094
0x000054:
    stog.alarm[5s] = 70s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000094:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x000120
0x0000AC:
    push -1s
    if !(> 5s:alarm 5s) goto 0x000104
0x0000C8:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x000104
0x0000E8:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x000108
0x000104:
    push 0s
0x000108:
    if !pop goto 0x000120
0x00010C:
    stog.alarm[5s] = 2s
0x000120:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000184
0x000144:
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000184:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0002A8
0x0001A8:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0001FC
0x0001E8:
    stog.alarm[2s] = 15s
0x0001FC:
    popenv 0x0001E8
0x000200:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000278
0x000224:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.sprite_index = self.normalsprite
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0002A8
0x000278:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x0002A8:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000378
0x0002CC:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000340
0x00032C:
    stog.alarm[2s] = 30s
0x000340:
    popenv 0x00032C
0x000344:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000378:
    if !(== global.mnfight 2s) goto 0x0008A4
0x00038C:
    if !(== self.attacked 0s) goto 0x0008A4
0x0003A0:
    if !(> self.mercymod 250s) goto 0x0003C8
0x0003B4:
    push (< global.turntimer 10s)
    goto 0x0003CC
0x0003C8:
    push 0s
0x0003CC:
    if !pop goto 0x0003E0
0x0003D0:
    global.turntimer = 0s
    goto 0x0003EC
0x0003E0:
    global.turntimer = 110s
0x0003EC:
    global.firingrate = 4s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x000448
0x00043C:
    self.mycommand = 2s
0x000448:
    if !(< self.mycommand 50s) goto 0x000500
0x00045C:
    global.firingrate = 13s
    push (var 648s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 45s) -5s (- 1s:idealborder 50s))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    global.border = 8s
    push 0s
    stog.bullettype* = (int32 self.gen)
0x000500:
    if !(>= self.mycommand 50s) goto 0x0005B8
0x000514:
    global.firingrate = 13s
    push (var 653s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 45s) -5s (- 1s:idealborder 50s))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    global.border = 8s
    push 0s
    stog.bullettype* = (int32 self.gen)
0x0005B8:
    push self.myself
    stog.myself* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x00062C
0x000614:
    stog.msg[0s] = "* Lesser Dog cocks its head&  to one side."
0x00062C:
    if !(>= self.mycommand 30s) goto 0x000658
0x000640:
    stog.msg[0s] = "* Lesser Dog thinks your&  weapon is a dog treat."
0x000658:
    if !(>= self.mycommand 60s) goto 0x000684
0x00066C:
    stog.msg[0s] = "* Lesser Dog is really not&  paying attention."
0x000684:
    if !(>= self.mycommand 85s) goto 0x0006B0
0x000698:
    stog.msg[0s] = "* Smells like dog chow."
0x0006B0:
    if !(>= self.mercymod 40s) goto 0x0006DC
0x0006C4:
    stog.msg[0s] = "* Lesser Dog is barking&  excitedly."
0x0006DC:
    if !(>= self.mercymod 200s) goto 0x000708
0x0006F0:
    stog.msg[0s] = "* Lesser Dog is overstimulated."
0x000708:
    if !(>= self.mercymod 400s) goto 0x000734
0x00071C:
    stog.msg[0s] = "* Lesser Dog shows no signs&  of stopping."
0x000734:
    if !(>= self.mercymod 700s) goto 0x000760
0x000748:
    stog.msg[0s] = "* Lesser Dog is lowering."
0x000760:
    if !(>= self.mercymod 1640s) goto 0x00078C
0x000774:
    stog.msg[0s] = "* Lesser Dog is learning&  to read."
0x00078C:
    if !(>= self.mercymod 1740s) goto 0x0007B8
0x0007A0:
    stog.msg[0s] = "* Lesser Dog is whining&  because it can't see&  you."
0x0007B8:
    if !(>= self.mercymod 2190s) goto 0x0007E4
0x0007CC:
    stog.msg[0s] = "* Hello there."
0x0007E4:
    if !(>= self.mercymod 2340s) goto 0x000810
0x0007F8:
    stog.msg[0s] = "* Lesser Dog is questioning&  your choices."
0x000810:
    if !(>= self.mercymod 2640s) goto 0x00083C
0x000824:
    stog.msg[0s] = "* Lesser Dog has gone where&  no Dog has gone before."
0x00083C:
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (/ (int32 self.myself):monstermaxhp (double 3s))) goto 0x000898
0x000880:
    stog.msg[0s] = "* Lesser Dog tucks its tail&  between its legs."
0x000898:
    self.attacked = 1s
0x0008A4:
    if !(== global.myfight 2s) goto 0x000E14
0x0008B8:
    if !(!= self.whatiheard -1s) goto 0x000E14
0x0008CC:
    if !(== global.heard 0s) goto 0x000E08
0x0008E0:
    if !(== self.whatiheard 0s) goto 0x00097C
0x0008F4:
    global.msc = 0s
    stog.msg[0s] = "* LESSER DOG - ATK 12 DEF 2&* Wields a stone dogger made&  of pomer-granite./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000978
0x00096C:
    self.halt = 0s
0x000978:
    popenv 0x00096C
0x00097C:
    if (== self.whatiheard 1s) goto 0x0009E0
0x000990:
    if (== self.whatiheard 2s) goto 0x0009E0
0x0009A4:
    if (== self.whatiheard 3s) goto 0x0009E0
0x0009B8:
    if (== self.whatiheard 4s) goto 0x0009E0
0x0009CC:
    push (== self.whatiheard 5s)
    goto 0x0009E4
0x0009E0:
    push 1s
0x0009E4:
    if !pop goto 0x000E08
0x0009E8:
    global.msc = 0s
    if !(== self.mercymod 0s) goto 0x000A20
0x000A08:
    stog.msg[0s] = "* You barely lifted your&  hand and Lesser Dog&  got excited./^"
0x000A20:
    if !(> self.mercymod 40s) goto 0x000A4C
0x000A34:
    stog.msg[0s] = "* You lightly touched the&  Dog^1.&* It's already overexcited.../^"
0x000A4C:
    if !(> self.mercymod 90s) goto 0x000A78
0x000A60:
    stog.msg[0s] = "* You pet the Dog.&* It raises its head up&  to meet your hand./^"
0x000A78:
    if !(> self.mercymod 140s) goto 0x000AA4
0x000A8C:
    stog.msg[0s] = "* You pet the Dog.&* It was a good Dog./^"
0x000AA4:
    if !(> self.mercymod 190s) goto 0x000AD0
0x000AB8:
    stog.msg[0s] = "* You pet the Dog.&* Its excitement knows no&  bounds./^"
0x000AD0:
    if !(> self.mercymod 240s) goto 0x000AFC
0x000AE4:
    stog.msg[0s] = "* Critical pet!&* Dog excitement increased./^"
0x000AFC:
    if !(> self.mercymod 290s) goto 0x000B28
0x000B10:
    stog.msg[0s] = "* You have to jump up&  to pet the Dog./^"
0x000B28:
    if !(> self.mercymod 340s) goto 0x000B54
0x000B3C:
    stog.msg[0s] = "* You don't even pet it^1.&* It gets more excited./^"
0x000B54:
    if !(> self.mercymod 390s) goto 0x000B80
0x000B68:
    stog.msg[0s] = "* There is no way to&  stop this madness./^"
0x000B80:
    if !(> self.mercymod 440s) goto 0x000BAC
0x000B94:
    stog.msg[0s] = "* Lesser Dog enters the&  realm of the clouds./^"
0x000BAC:
    if !(> self.mercymod 490s) goto 0x000BD8
0x000BC0:
    stog.msg[0s] = "* You call the Dog but it&  is too late^1.&* It cannot hear you./^"
0x000BD8:
    if !(> self.mercymod 540s) goto 0x000C04
0x000BEC:
    stog.msg[0s] = "* .../^"
0x000C04:
    if !(> self.mercymod 590s) goto 0x000C30
0x000C18:
    stog.msg[0s] = "* You can reach Lesser Dog&  again./^"
0x000C30:
    if !(> self.mercymod 640s) goto 0x000C5C
0x000C44:
    stog.msg[0s] = "* You pet Lesser Dog./^"
0x000C5C:
    if !(> self.mercymod 900s) goto 0x000C88
0x000C70:
    stog.msg[0s] = "* It's possible that you&  may have a problem./^"
0x000C88:
    if !(> self.mercymod 1640s) goto 0x000CB4
0x000C9C:
    stog.msg[0s] = "* Lesser Dog is unpettable&  but appreciates the attempt./^"
0x000CB4:
    if !(> self.mercymod 2190s) goto 0x000CE0
0x000CC8:
    stog.msg[0s] = "* Perhaps mankind was not&  meant to pet this much./^"
0x000CE0:
    if !(> self.mercymod 2240s) goto 0x000D0C
0x000CF4:
    stog.msg[0s] = "* It continues./^"
0x000D0C:
    if !(>= self.mercymod 2640s) goto 0x000D38
0x000D20:
    stog.msg[0s] = "* Lesser Dog is beyond&  your reach./^"
0x000D38:
    if !(>= self.mercymod 2690s) goto 0x000D64
0x000D4C:
    stog.msg[0s] = "* Really.../^"
0x000D64:
    if !(> self.mercymod 100s) goto 0x000D8C
0x000D78:
    stog.flag[141s] = 1s
0x000D8C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000DEC
0x000DE0:
    self.halt = 0s
0x000DEC:
    popenv 0x000DE0
0x000DF0:
    self.mercymod = (+ self.mercymod 50s)
0x000E08:
    global.heard = 1s
0x000E14:
    if !(== global.myfight 4s) goto 0x000E70
0x000E28:
    if !(== global.mercyuse 0s) goto 0x000E70
0x000E3C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000E70
0x000E64:
    call (instance_destroy[]:int32 )
0x000E70:
    exit
