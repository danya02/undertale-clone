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
    if !(== global.mnfight 1s) goto 0x00021C
0x0001DC:
    if !(== self.talked 0s) goto 0x00021C
0x0001F0:
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x00021C:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000280
0x000240:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000280:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0003A0
0x0002A4:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x0002F8
0x0002E4:
    stog.alarm[2s] = 15s
0x0002F8:
    popenv 0x0002E4
0x0002FC:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000370
0x000320:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0003A0
0x000370:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x0003A0:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x000470
0x0003C4:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000438
0x000424:
    stog.alarm[2s] = 30s
0x000438:
    popenv 0x000424
0x00043C:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x000470:
    if !(== global.mnfight 2s) goto 0x000540
0x000484:
    if !(== self.attacked 0s) goto 0x000504
0x000498:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 180s
    pushenv (int32 self.mypart1) 0x0004DC
0x0004C4:
    self.fight = 1s
    self.f_timer = -1s
0x0004DC:
    popenv 0x0004C4
0x0004E0:
    self.mycommand = (random[]:int32 (var 100s))
    self.attacked = 1s
0x000504:
    if !(== self.mercymod 999999) goto 0x000534
0x00051C:
    global.turntimer = -1s
    global.mnfight = 3s
0x000534:
    self.whatiheard = -1s
0x000540:
    if !(== global.myfight 2s) goto 0x000728
0x000554:
    if !(!= self.whatiheard -1s) goto 0x000728
0x000568:
    if !(== global.heard 0s) goto 0x000728
0x00057C:
    if !(== self.whatiheard 0s) goto 0x000650
0x000590:
    global.msc = 0s
    stog.msg[0s] = "* DOODLEBOG - ? ATK ? DEF&* Art lets your wildest&  fantasies come to life!/^"
    if !(== self.specialmessage 1s) goto 0x0005E0
0x0005C8:
    stog.msg[0s] = "* DOODLEBOG C - ? ATK ? DEF&* The \"C\" stands for \"seafaring.\"&* It likes to ride in a boat./^"
0x0005E0:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000640
0x000634:
    self.halt = 0s
0x000640:
    popenv 0x000634
0x000644:
    self.whatiheard = 9s
0x000650:
    if !(== self.whatiheard 3s) goto 0x00071C
0x000664:
    global.msc = 0s
    stog.msg[0s] = "* You draw a boat.&* Away it goes./^"
    pushenv (int32 self.mypart1) 0x0006A4
0x000698:
    self.boat = 2s
0x0006A4:
    popenv 0x000698
0x0006A8:
    self.mercymod = 222222
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000718
0x00070C:
    self.halt = 0s
0x000718:
    popenv 0x00070C
0x00071C:
    global.heard = 1s
0x000728:
    if !(== global.myfight 4s) goto 0x000784
0x00073C:
    if !(== global.mercyuse 0s) goto 0x000784
0x000750:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000784
0x000778:
    call (instance_destroy[]:int32 )
0x000784:
    if !(== self.mercymod 222222) goto 0x0007B8
0x00079C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0007BC
0x0007B8:
    push 0s
0x0007BC:
    if !pop goto 0x0007CC
0x0007C0:
    call (instance_destroy[]:int32 )
0x0007CC:
    exit
