0x000000:
    if !(== self.ditch 1s) goto 0x000028
0x000014:
    push (> global.mnfight 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0000EC
0x000030:
    self.talked = 0s
    if !(> self.image_alpha 0.05d) goto 0x000078
0x000058:
    self.image_alpha = (- self.image_alpha 0.05d)
0x000078:
    self.thisturn2 = (- global.turn self.thisturn)
    if !(>= self.thisturn2 2s) goto 0x0000BC
0x0000A8:
    push (> (scr_monstersum[]:int32 ) 0s)
    goto 0x0000C0
0x0000BC:
    push 0s
0x0000C0:
    if !pop goto 0x0000D0
0x0000C4:
    self.ditch = 0s
0x0000D0:
    stog.monster[(int32 self.myself)] = 0s
0x0000EC:
    if !(== self.ditch 0s) goto 0x000150
0x000100:
    stog.monster[(int32 self.myself)] = 1s
    if !(< self.image_alpha 1s) goto 0x000150
0x000130:
    self.image_alpha = (+ self.image_alpha 0.05d)
0x000150:
    if !(== global.mnfight 3s) goto 0x000170
0x000164:
    self.attacked = 0s
0x000170:
    call (scr_blconmatch[]:int32 )
    if !(== global.mnfight 1s) goto 0x0001E4
0x000190:
    if !(== self.talked 0s) goto 0x0001E4
0x0001A4:
    stog.alarm[5s] = 100s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x0001E4:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x000270
0x0001FC:
    push -1s
    if !(> 5s:alarm 5s) goto 0x000254
0x000218:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x000254
0x000238:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x000258
0x000254:
    push 0s
0x000258:
    if !pop goto 0x000270
0x00025C:
    stog.alarm[5s] = 2s
0x000270:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x0002D4
0x000294:
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x0002D4:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00040C
0x0002F8:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp (ceil[]:int32 (/ self.takedamage (double 5s))))] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x000360
0x00034C:
    stog.alarm[2s] = 15s
0x000360:
    popenv 0x00034C
0x000364:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0003DC
0x000388:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.sprite_index = self.normalgfx
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00040C
0x0003DC:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x00040C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0004DC
0x000430:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004A4
0x000490:
    stog.alarm[2s] = 30s
0x0004A4:
    popenv 0x000490
0x0004A8:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0004DC:
    if !(== global.mnfight 2s) goto 0x000780
0x0004F0:
    if !(== self.attacked 0s) goto 0x000780
0x000504:
    if !(== self.ditch 0s) goto 0x000570
0x000518:
    if !(> (scr_monstersum[]:int32 ) 1s) goto 0x000564
0x00052C:
    if !(< global.turntimer 1s) goto 0x00054C
0x000540:
    global.turntimer = 1s
0x00054C:
    stog.alarm[10s] = 10s
    goto 0x000570
0x000564:
    global.mnfight = 3s
0x000570:
    if !(< self.mycommand 50s) goto 0x000584
0x000584:
    if !(>= self.mycommand 50s) goto 0x000598
0x000598:
    if !(== self.ditch 0s) goto 0x0006E4
0x0005AC:
    if !(>= self.mycommand 0s) goto 0x0005D8
0x0005C0:
    stog.msg[0s] = "* Jerry eats powdery food and&  licks its hands loudly."
0x0005D8:
    if !(>= self.mycommand 25s) goto 0x000604
0x0005EC:
    stog.msg[0s] = "* Jerry sneezes without covering&  its nose."
0x000604:
    if !(>= self.mycommand 50s) goto 0x000630
0x000618:
    stog.msg[0s] = "* Jerry tells everyone it has to&  go to the bathroom."
0x000630:
    if !(>= self.mycommand 75s) goto 0x00065C
0x000644:
    stog.msg[0s] = "* Jerry lets out a yawn."
0x00065C:
    if !(>= self.mycommand 90s) goto 0x000688
0x000670:
    stog.msg[0s] = "* Smells like....... Jerry."
0x000688:
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (/ (int32 self.myself):monstermaxhp (double 3s))) goto 0x0006E4
0x0006CC:
    stog.msg[0s] = "* Jerry is wounded."
0x0006E4:
    if !(== self.ditch 1s) goto 0x00070C
0x0006F8:
    push (== self.thisturn2 0s)
    goto 0x000710
0x00070C:
    push 0s
0x000710:
    if !pop goto 0x00072C
0x000714:
    stog.msg[0s] = "* The other monsters celebrate&  Jerry's disappearance."
0x00072C:
    if !(== self.ditch 0s) goto 0x000754
0x000740:
    push (== self.thisturn2 2s)
    goto 0x000758
0x000754:
    push 0s
0x000758:
    if !pop goto 0x000774
0x00075C:
    stog.msg[0s] = "* Return of Jerry."
0x000774:
    self.attacked = 1s
0x000780:
    if !(== self.whatiheard 1s) goto 0x0007B0
0x000794:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0007B4
0x0007B0:
    push 0s
0x0007B4:
    if !pop goto 0x0007F8
0x0007B8:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x0007F8
0x0007E0:
    self.killed = 0s
    call (instance_destroy[]:int32 )
0x0007F8:
    if !(== global.myfight 2s) goto 0x000820
0x00080C:
    push (== self.ditch 0s)
    goto 0x000824
0x000820:
    push 0s
0x000824:
    if !pop goto 0x000BC0
0x000828:
    if !(!= self.whatiheard -1s) goto 0x000BC0
0x00083C:
    if !(== global.heard 0s) goto 0x000BC0
0x000850:
    if !(== self.whatiheard 0s) goto 0x0008EC
0x000864:
    global.msc = 0s
    stog.msg[0s] = "* JERRY - ATK 0 DEF 30&* Everyone knows Jerry.&* Makes attacks 2 seconds longer./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0008E8
0x0008DC:
    self.halt = 0s
0x0008E8:
    popenv 0x0008DC
0x0008EC:
    if !(== self.whatiheard 3s) goto 0x0009A4
0x000900:
    global.msc = 0s
    stog.msg[0s] = "* You and the other&  monsters ditch Jerry&  when it looks away!/^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000984
0x000978:
    self.halt = 0s
0x000984:
    popenv 0x000978
0x000988:
    self.ditch = 1s
    self.thisturn = global.turn
0x0009A4:
    if !(== self.whatiheard 4s) goto 0x000BB4
0x0009B8:
    global.msc = 0s
    call (script_execute[]:int32 (var 163s))
    stog.msg[0s] = "* You tried to steal Ice Cap's&  hat.../"
    stog.msg[1s] = "* ... but failed!/^"
    if !(< self.mercy 0s) goto 0x000B50
0x000A1C:
    stog.msg[1s] = "* And succeeded!&* (It melts in your hands...)/^"
    self.m = 0s
    stog.monster[(int32 self.myself)] = 0s
    push -5s
    if !(== 1s:monster 1s) goto 0x000A94
0x000A78:
    push -5s
    push (== 0s:monster 0s)
    goto 0x000A98
0x000A94:
    push 0s
0x000A98:
    if !pop goto 0x000AA8
0x000A9C:
    self.m = 1s
0x000AA8:
    stog.monster[1s] = 0s
    stog.monstertype[(int32 self.myself)] = 20s
    self.cube = 1s
    stog.monsterinstance[(int32 self.myself)] = (instance_create[]:int32 (var 218s) self.y self.x)
    if !(== self.m 1s) goto 0x000B44
0x000B30:
    stog.monster[1s] = 1s
0x000B44:
    call (instance_destroy[]:int32 )
0x000B50:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BB0
0x000BA4:
    self.halt = 0s
0x000BB0:
    popenv 0x000BA4
0x000BB4:
    global.heard = 1s
0x000BC0:
    if !(== global.myfight 4s) goto 0x000BE8
0x000BD4:
    push (== self.ditch 0s)
    goto 0x000BEC
0x000BE8:
    push 0s
0x000BEC:
    if !pop goto 0x000C38
0x000BF0:
    if !(== global.mercyuse 0s) goto 0x000C38
0x000C04:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000C38
0x000C2C:
    call (instance_destroy[]:int32 )
0x000C38:
    exit
