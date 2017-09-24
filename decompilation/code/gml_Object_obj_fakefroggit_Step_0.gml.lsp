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
    stog.alarm[5s] = 60s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000230:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0002A0
0x000248:
    push -1s
    if !(> 5s:alarm 5s) goto 0x000284
0x000264:
    push 758.x
    push (== -5s 0s:idealborder)
    goto 0x000288
0x000284:
    push 0s
0x000288:
    if !pop goto 0x0002A0
0x00028C:
    stog.alarm[5s] = 2s
0x0002A0:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000304
0x0002C4:
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000304:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000468
0x000328:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x00037C
0x000368:
    stog.alarm[2s] = 15s
0x00037C:
    popenv 0x000368
0x000380:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000438
0x0003A4:
    self.mypart1 = (instance_create[]:int32 (var 215s) self.y self.x)
    self.mypart2 = (instance_create[]:int32 (var 214s) self.y self.x)
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000468
0x000438:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000468:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000538
0x00048C:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000500
0x0004EC:
    stog.alarm[2s] = 30s
0x000500:
    popenv 0x0004EC
0x000504:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000538:
    if !(== global.mnfight 2s) goto 0x0006C4
0x00054C:
    if !(== self.attacked 0s) goto 0x0006C4
0x000560:
    global.turntimer = 100s
    global.firingrate = 20s
    self.gen = (instance_create[]:int32 (var 713s) self.y self.x)
    if !(>= self.mycommand 0s) goto 0x0005CC
0x0005B4:
    stog.msg[0s] = "* Froggit doesn't seem to&  know why it's here."
0x0005CC:
    if !(>= self.mycommand 30s) goto 0x0005F8
0x0005E0:
    stog.msg[0s] = "* Froggit hops to and fro."
0x0005F8:
    if !(>= self.mycommand 60s) goto 0x000624
0x00060C:
    stog.msg[0s] = "* The battlefield is filled   with the smell of&   mustard seed."
0x000624:
    if !(>= self.mycommand 80s) goto 0x000650
0x000638:
    stog.msg[0s] = "* You are intimidated by&  Froggit's raw strength^4.&  * Only kidding."
0x000650:
    if !(> self.mercymod 5s) goto 0x00067C
0x000664:
    stog.msg[0s] = "* Froggit seems reluctant&  to fight you."
0x00067C:
    push -5s
    if !(< (int32 self.myself):monsterhp 5s) goto 0x0006B8
0x0006A0:
    stog.msg[0s] = "* Froggit is trying to&  run away."
0x0006B8:
    self.attacked = 1s
0x0006C4:
    if !(== global.myfight 2s) goto 0x0008F8
0x0006D8:
    if !(!= self.whatiheard -1s) goto 0x0008F8
0x0006EC:
    if !(== global.heard 0s) goto 0x0008F8
0x000700:
    if !(== self.whatiheard 0s) goto 0x00079C
0x000714:
    global.msc = 0s
    stog.msg[0s] = "* FROGGIT - ATK 4 DEF 5&* Life is difficult for&  this enemy./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000798
0x00078C:
    self.halt = 0s
0x000798:
    popenv 0x00078C
0x00079C:
    if !(== self.whatiheard 3s) goto 0x000844
0x0007B0:
    global.msc = 0s
    stog.msg[0s] = "* Froggit didn't understand&  what you said^1, but was&  flattered anyway./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000834
0x000828:
    self.halt = 0s
0x000834:
    popenv 0x000828
0x000838:
    self.mercymod = 30s
0x000844:
    if !(== self.whatiheard 1s) goto 0x0008EC
0x000858:
    global.msc = 0s
    stog.msg[0s] = "* Froggit didn't understand&  what you said^1, but was&  scared anyway./^"
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
    self.mercymod = 30s
0x0008EC:
    global.heard = 1s
0x0008F8:
    if !(== global.myfight 4s) goto 0x000954
0x00090C:
    if !(== global.mercyuse 0s) goto 0x000954
0x000920:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000954
0x000948:
    call (instance_destroy[]:int32 )
0x000954:
    if !(< self.x (- self.sprite_width)) goto 0x00098C
0x000970:
    stog.monster[(int32 self.myself)] = 0s
0x00098C:
    exit
