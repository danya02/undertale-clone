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
    stog.alarm[5s] = 75s
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
    self.sprite_index = self.normalgfx
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
    if !(== global.mnfight 2s) goto 0x000778
0x00038C:
    if !(== self.attacked 0s) goto 0x000778
0x0003A0:
    self.pop = (scr_monstersum[]:int32 )
    if !(bool (instance_exists[]:int32 (var 217s))) goto 0x0003F4
0x0003C8:
    if !(== 217.ditch 0s) goto 0x0003F4
0x0003DC:
    self.pop = (- self.pop 1s)
0x0003F4:
    global.turntimer = 150s
    if !(< self.mycommand 50s) goto 0x0004A0
0x000414:
    if !(== self.pop 1s) goto 0x000434
0x000428:
    global.turntimer = 100s
0x000434:
    push (var 650s)
    push -5s
    push 2s:idealborder
    self.gen = (instance_create[]:int32 -5s (+ 3s:idealborder (/ (- (- -5s 2s:idealborder) 40s) (double 2s))) (var 0s))
0x0004A0:
    if !(>= self.mycommand 50s) goto 0x000594
0x0004B4:
    self.pop = (scr_monstersum[]:int32 )
    if !(bool (instance_exists[]:int32 (var 217s))) goto 0x000508
0x0004DC:
    if !(== 217.ditch 0s) goto 0x000508
0x0004F0:
    self.pop = (- self.pop 1s)
0x000508:
    global.firingrate = 33s
    if !(== self.pop 2s) goto 0x000534
0x000528:
    global.firingrate = 45s
0x000534:
    if !(== self.pop 3s) goto 0x000554
0x000548:
    global.firingrate = 60s
0x000554:
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 11s
    stog.bullettype* = (int32 self.gen)
0x000594:
    push self.myself
    stog.myself* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x000608
0x0005F0:
    stog.msg[0s] = "* It's snowing dandruff."
0x000608:
    if !(>= self.mycommand 25s) goto 0x000634
0x00061C:
    stog.msg[0s] = "* Ice Cap also wants a hat&  for its nose."
0x000634:
    if !(>= self.mycommand 50s) goto 0x000660
0x000648:
    stog.msg[0s] = "* Ice Cap makes sure its hat&  is still there."
0x000660:
    if !(>= self.mycommand 75s) goto 0x00068C
0x000674:
    stog.msg[0s] = "* Ice Cap is thinking about a&  certain article of clothing."
0x00068C:
    if !(>= self.mycommand 90s) goto 0x0006B8
0x0006A0:
    stog.msg[0s] = "* Here comes that new clothes&  smell."
0x0006B8:
    if !(== self.ignore 1s) goto 0x0006E4
0x0006CC:
    stog.msg[0s] = "* Ice Cap is secretly checking&  if you're looking at&  its hat."
0x0006E4:
    if !(> self.ignore 1s) goto 0x000710
0x0006F8:
    stog.msg[0s] = "* Ice Cap is desperate for&  attention."
0x000710:
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (/ (int32 self.myself):monstermaxhp (double 3s))) goto 0x00076C
0x000754:
    stog.msg[0s] = "* Ice Cap's hat is loose."
0x00076C:
    self.attacked = 1s
0x000778:
    if !(== global.myfight 2s) goto 0x000C14
0x00078C:
    if !(!= self.whatiheard -1s) goto 0x000C14
0x0007A0:
    if !(== global.heard 0s) goto 0x000C14
0x0007B4:
    if !(== self.whatiheard 0s) goto 0x000850
0x0007C8:
    global.msc = 0s
    stog.msg[0s] = "* ICE CAP - ATK 11 DEF 4&* This teen wonders why&  it isn't named 'Ice Hat.'/^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x00084C
0x000840:
    self.halt = 0s
0x00084C:
    popenv 0x000840
0x000850:
    if !(== self.whatiheard 1s) goto 0x00095C
0x000864:
    global.msc = 0s
    if !(> self.ignore 0s) goto 0x0008B4
0x000884:
    stog.msg[0s] = "* You continue not looking&  at Ice Cap's hat./"
    stog.msg[1s] = "* It seems defeated.../^"
0x0008B4:
    if !(== self.ignore 0s) goto 0x0008F8
0x0008C8:
    stog.msg[0s] = "* You manage to tear your&  eyes away from Ice Cap's&  hat./"
    stog.msg[1s] = "* It looks annoyed.../^"
0x0008F8:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000958
0x00094C:
    self.halt = 0s
0x000958:
    popenv 0x00094C
0x00095C:
    if !(== self.whatiheard 3s) goto 0x0009F8
0x000970:
    global.msc = 0s
    stog.msg[0s] = "* You inform Ice Cap that&  it has a great hat!/^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0009F4
0x0009E8:
    self.halt = 0s
0x0009F4:
    popenv 0x0009E8
0x0009F8:
    if !(== self.whatiheard 4s) goto 0x000C08
0x000A0C:
    global.msc = 0s
    call (script_execute[]:int32 (var 163s))
    stog.msg[0s] = "* You tried to steal Ice Cap's&  hat.../"
    stog.msg[1s] = "* ... but it's not weakened&  enough!/^"
    if !(< self.mercy 0s) goto 0x000BA4
0x000A70:
    stog.msg[1s] = "* And succeeded!&* (It melts in your hands...)/^"
    self.m = 0s
    stog.monster[(int32 self.myself)] = 0s
    push -5s
    if !(== 1s:monster 1s) goto 0x000AE8
0x000ACC:
    push -5s
    push (== 0s:monster 0s)
    goto 0x000AEC
0x000AE8:
    push 0s
0x000AEC:
    if !pop goto 0x000AFC
0x000AF0:
    self.m = 1s
0x000AFC:
    stog.monster[1s] = 0s
    stog.monstertype[(int32 self.myself)] = 20s
    self.cube = 1s
    stog.monsterinstance[(int32 self.myself)] = (instance_create[]:int32 (var 218s) self.y self.x)
    if !(== self.m 1s) goto 0x000B98
0x000B84:
    stog.monster[1s] = 1s
0x000B98:
    call (instance_destroy[]:int32 )
0x000BA4:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C04
0x000BF8:
    self.halt = 0s
0x000C04:
    popenv 0x000BF8
0x000C08:
    global.heard = 1s
0x000C14:
    if !(== global.myfight 4s) goto 0x000C70
0x000C28:
    if !(== global.mercyuse 0s) goto 0x000C70
0x000C3C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000C70
0x000C64:
    call (instance_destroy[]:int32 )
0x000C70:
    exit
