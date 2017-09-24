0x000000:
    if !(== global.mnfight 3s) goto 0x00002C
0x000014:
    self.attacked = 0s
    self.talked = 0s
0x00002C:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0001D4
0x000048:
    push -5s
    if !(== 0s:monster 1s) goto 0x0000CC
0x000064:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0000CC
0x00009C:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0000CC:
    push -5s
    if !(== 1s:monster 1s) goto 0x000150
0x0000E8:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000150
0x000120:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000150:
    push -5s
    if !(== 2s:monster 1s) goto 0x0001D4
0x00016C:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0001D4
0x0001A4:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0001D4:
    if !(== global.mnfight 1s) goto 0x00028C
0x0001E8:
    if !(== self.talked 1s) goto 0x000218
0x0001FC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00021C
0x000218:
    push 0s
0x00021C:
    if !pop goto 0x000240
0x000220:
    stog.alarm[5s] = 1s
    self.talked = 2s
0x000240:
    if !(== self.talked 0s) goto 0x00028C
0x000254:
    self.attacked = 0s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x00028C:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x0002F0
0x0002B0:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x0002F0:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0003D4
0x000314:
    pushenv (int32 self.dmgwriter) 0x000338
0x000324:
    stog.alarm[2s] = 15s
0x000338:
    popenv 0x000324
0x00033C:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0003A4
0x000360:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.hurta = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0003D4
0x0003A4:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x0003D4:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0004A4
0x0003F8:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x00046C
0x000458:
    stog.alarm[2s] = 30s
0x00046C:
    popenv 0x000458
0x000470:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0004A4:
    if !(== global.mnfight 2s) goto 0x0006D4
0x0004B8:
    if !(== self.attacked 0s) goto 0x000694
0x0004CC:
    pushenv (int32 self.mypart1) 0x0004F0
0x0004DC:
    call (event_user[]:int32 (var 0s))
0x0004F0:
    popenv 0x0004DC
0x0004F4:
    if !(>= self.mycommand 0s) goto 0x000520
0x000508:
    stog.msg[0s] = "* Aaron is splashing you&  playfully."
0x000520:
    if !(>= self.mycommand 0s) goto 0x000550
0x000534:
    push -5s
    push (== 95s:flag 1s)
    goto 0x000554
0x000550:
    push 0s
0x000554:
    if !pop goto 0x000570
0x000558:
    stog.msg[0s] = "* Aaron is looking around^1,&  fearful of something."
0x000570:
    if !(>= self.mycommand 25s) goto 0x00059C
0x000584:
    stog.msg[0s] = "* Aaron is sweating bullets^3.&* Literally."
0x00059C:
    if !(>= self.mycommand 50s) goto 0x0005C8
0x0005B0:
    stog.msg[0s] = "* Aaron is admiring his own&  muscles."
0x0005C8:
    if !(>= self.mycommand 75s) goto 0x0005F4
0x0005DC:
    stog.msg[0s] = "* Smells like an underwater&  barnyard."
0x0005F4:
    if !(>= self.mycommand 90s) goto 0x000620
0x000608:
    stog.msg[0s] = "* Smells like a mussel farm."
0x000620:
    push -5s
    if !(< (int32 self.myself):monsterhp 30s) goto 0x00065C
0x000644:
    stog.msg[0s] = "* Aaron's muscles droop&  comically."
0x00065C:
    stog.msg[0s] = "* Mettaton."
    self.attacked = 1s
    stog.alarm[7s] = 20s
0x000694:
    if !(== self.attacked 2s) goto 0x0006D4
0x0006A8:
    pushenv 307s 0x0006C4
0x0006B0:
    call (event_user[]:int32 (var 0s))
0x0006C4:
    popenv 0x0006B0
0x0006C8:
    self.attacked = 3s
0x0006D4:
    if !(== global.myfight 2s) goto 0x000860
0x0006E8:
    if !(!= self.whatiheard -1s) goto 0x000860
0x0006FC:
    if !(== global.heard 0s) goto 0x000860
0x000710:
    if !(== self.whatiheard 0s) goto 0x0007B8
0x000724:
    global.msc = 0s
    stog.msg[0s] = "* METTATON - ATK 30 DEF 255&* His metal body renders him&  invulnerable to attack./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0007A8
0x00079C:
    self.halt = 0s
0x0007A8:
    popenv 0x00079C
0x0007AC:
    self.whatiheard = 9s
0x0007B8:
    if !(== self.whatiheard 3s) goto 0x000854
0x0007CC:
    global.msc = 0s
    stog.msg[0s] = "* Screaming is against the&  rules./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000850
0x000844:
    self.halt = 0s
0x000850:
    popenv 0x000844
0x000854:
    global.heard = 1s
0x000860:
    if !(== self.whatiheard 3s) goto 0x0008A0
0x000874:
    if !(== self.flex 3s) goto 0x0008A0
0x000888:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0008A4
0x0008A0:
    push 0s
0x0008A4:
    if !pop goto 0x0008E0
0x0008A8:
    if !(== 782.stringno 1s) goto 0x0008E0
0x0008BC:
    self.vspeed = -4s
    push -4s
    stog.vspeed* = (int32 self.mypart1)
0x0008E0:
    if !(== self.whatiheard 3s) goto 0x000924
0x0008F4:
    if !(== self.flex 3s) goto 0x000924
0x000908:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000928
0x000924:
    push 0s
0x000928:
    if !pop goto 0x000960
0x00092C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000960
0x000954:
    call (instance_destroy[]:int32 )
0x000960:
    if !(== self.alphaup 1s) goto 0x000988
0x000974:
    push (< self.image_alpha 1s)
    goto 0x00098C
0x000988:
    push 0s
0x00098C:
    if !pop goto 0x0009B0
0x000990:
    self.image_alpha = (+ self.image_alpha 0.05d)
0x0009B0:
    if !(== global.myfight 4s) goto 0x000A0C
0x0009C4:
    if !(== global.mercyuse 0s) goto 0x000A0C
0x0009D8:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000A0C
0x000A00:
    call (instance_destroy[]:int32 )
0x000A0C:
    if !(== self.mercymod 222s) goto 0x000A3C
0x000A20:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A40
0x000A3C:
    push 0s
0x000A40:
    if !pop goto 0x000A78
0x000A44:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000A78
0x000A6C:
    call (instance_destroy[]:int32 )
0x000A78:
    exit
