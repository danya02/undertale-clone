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
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000320:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x000410
0x000344:
    pushenv (int32 self.dmgwriter) 0x000368
0x000354:
    stog.alarm[2s] = 15s
0x000368:
    popenv 0x000354
0x00036C:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0003E0
0x000390:
    stog.hurtanim[(int32 self.myself)] = 0s
    push 0s
    stog.pause* = (int32 self.mypart1)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000410
0x0003E0:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000410:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0004E0
0x000434:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004A8
0x000494:
    stog.alarm[2s] = 30s
0x0004A8:
    popenv 0x000494
0x0004AC:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0004E0:
    if !(== global.mnfight 2s) goto 0x000560
0x0004F4:
    if !(== self.attacked 0s) goto 0x000524
0x000508:
    self.pop = (scr_monstersum[]:int32 )
    self.attacked = 1s
0x000524:
    if !(== self.mercymod 999999) goto 0x000554
0x00053C:
    global.turntimer = -1s
    global.mnfight = 3s
0x000554:
    self.whatiheard = -1s
0x000560:
    if !(== global.myfight 2s) goto 0x000BE4
0x000574:
    if !(!= self.whatiheard -1s) goto 0x000BE4
0x000588:
    if !(== global.heard 0s) goto 0x000BE4
0x00059C:
    if !(== self.whatiheard 0s) goto 0x000720
0x0005B0:
    global.msc = 0s
    pushenv 605s 0x0005DC
0x0005C4:
    self.totalmercy = (+ self.totalmercy 1s)
0x0005DC:
    popenv 0x0005C4
0x0005E0:
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You asked the Lost Soul to&  take a break from fighting&  with you.../"
    stog.msg[1s] = "* It seems like it wants to./^"
    if !(>= self.totalmercy 3s) goto 0x0006B0
0x00063C:
    stog.msg[1s] = "* It nods its head solemnly..^1.&* Seems like it will!/%%"
    [obj_ripoff_papyrus].saved = 1s
    global.mnfight = 5s
    if !(== 559.mercyno 0s) goto 0x0006B0
0x000680:
    stog.msg[1s] = "* Suddenly^1, its memories are&  flooding back!/"
    stog.msg[2s] = "* Seeing how nicely you treated&  its brother^1, the other Lost&  Soul remembers^1, too!/%%"
0x0006B0:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000710
0x000704:
    self.halt = 0s
0x000710:
    popenv 0x000704
0x000714:
    self.whatiheard = 9s
0x000720:
    if !(== self.whatiheard 3s) goto 0x000898
0x000734:
    global.msc = 0s
    pushenv 605s 0x000760
0x000748:
    self.totalmercy = (+ self.totalmercy 1s)
0x000760:
    popenv 0x000748
0x000764:
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You told the Lost Soul a&  bad pun about skeletons./"
    stog.msg[1s] = "* He seems to love it..^1.&* But the other Lost Soul seems&  to hate it./^"
    if !(>= self.totalmercy 3s) goto 0x000834
0x0007C0:
    stog.msg[1s] = "* Suddenly^1, the memories are&  flooding back!/%%"
    [obj_ripoff_papyrus].saved = 1s
    global.mnfight = 5s
    if !(== 559.mercyno 0s) goto 0x000834
0x000804:
    stog.msg[1s] = "* Suddenly^1, its memories are&  flooding back!/"
    stog.msg[2s] = "* Seeing how nicely you treated&  its brother^1, the other Lost&  Soul remembers^1, too!/%%"
0x000834:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000894
0x000888:
    self.halt = 0s
0x000894:
    popenv 0x000888
0x000898:
    if !(== self.whatiheard 1s) goto 0x000A10
0x0008AC:
    global.msc = 0s
    pushenv 605s 0x0008D8
0x0008C0:
    self.totalmercy = (+ self.totalmercy 1s)
0x0008D8:
    popenv 0x0008C0
0x0008DC:
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You told the Lost Soul you'd&  think about what you'd&  done./"
    stog.msg[1s] = "* It seems like it's trying&  to remember.../^"
    if !(>= self.totalmercy 3s) goto 0x0009AC
0x000938:
    stog.msg[1s] = "* It nods solemnly...!/%%"
    [obj_ripoff_papyrus].saved = 1s
    global.mnfight = 5s
    if !(== 559.mercyno 0s) goto 0x0009AC
0x00097C:
    stog.msg[1s] = "* Suddenly^1, its memories are&  flooding back!/"
    stog.msg[2s] = "* Seeing how nicely you treated&  its brother^1, the other Lost&  Soul remembers^1, too!/%%"
0x0009AC:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A0C
0x000A00:
    self.halt = 0s
0x000A0C:
    popenv 0x000A00
0x000A10:
    if !(== self.whatiheard 4s) goto 0x000BD8
0x000A24:
    global.msc = 0s
    pushenv 605s 0x000A50
0x000A38:
    self.totalmercy = (+ self.totalmercy 1s)
0x000A50:
    popenv 0x000A38
0x000A54:
    self.mercyno = (+ self.mercyno 1s)
    push -5s
    if !(== 58s:flag 0s) goto 0x000AA0
0x000A88:
    stog.msg[0s] = "* You tell the Lost Soul you&  think that jumble is&  tougher than crosswords./"
0x000AA0:
    push -5s
    if !(== 58s:flag 1s) goto 0x000AD4
0x000ABC:
    stog.msg[0s] = "* You tell the Lost Soul you&  think that crosswords&  are tougher than jumble./"
0x000AD4:
    stog.msg[1s] = "* It seems to have some dim&  recollection of this&  fact.../^"
    if !(>= self.totalmercy 3s) goto 0x000B74
0x000B00:
    stog.msg[1s] = "* It nods its head^1, like it&  knew this without question...!/%%"
    [obj_ripoff_papyrus].saved = 1s
    global.mnfight = 5s
    if !(== 559.mercyno 0s) goto 0x000B74
0x000B44:
    stog.msg[1s] = "* Suddenly^1, its memories are&  flooding back!/"
    stog.msg[2s] = "* The other Lost Soul remembers&  this conversation^1, too!/%%"
0x000B74:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BD4
0x000BC8:
    self.halt = 0s
0x000BD4:
    popenv 0x000BC8
0x000BD8:
    global.heard = 1s
0x000BE4:
    if !(== global.myfight 4s) goto 0x000C40
0x000BF8:
    if !(== global.mercyuse 0s) goto 0x000C40
0x000C0C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000C40
0x000C34:
    call (instance_destroy[]:int32 )
0x000C40:
    if !(== self.mercymod 222s) goto 0x000C70
0x000C54:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C74
0x000C70:
    push 0s
0x000C74:
    if !pop goto 0x000CAC
0x000C78:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000CAC
0x000CA0:
    call (instance_destroy[]:int32 )
0x000CAC:
    exit
