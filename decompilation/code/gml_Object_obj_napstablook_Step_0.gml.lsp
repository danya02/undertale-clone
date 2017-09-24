0x000000:
    if !(== global.mnfight 3s) goto 0x000020
0x000014:
    self.attacked = 0s
0x000020:
    call (scr_blconmatch[]:int32 )
    if !(== global.mnfight 1s) goto 0x0000E0
0x000040:
    if !(== self.talked 0s) goto 0x0000E0
0x000054:
    push -5s
    if !(> (int32 self.myself):monsterhp 0s) goto 0x00008C
0x000078:
    stog.alarm[5s] = 75s
0x00008C:
    if !(== self.mercymod -49s) goto 0x0000B4
0x0000A0:
    stog.alarm[5s] = 400s
0x0000B4:
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x0000E0:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x00016C
0x0000F8:
    push -1s
    if !(> 5s:alarm 5s) goto 0x000150
0x000114:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x000150
0x000134:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x000154
0x000150:
    push 0s
0x000154:
    if !pop goto 0x00016C
0x000158:
    stog.alarm[5s] = 2s
0x00016C:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x0001D0
0x000190:
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x0001D0:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0002CC
0x0001F4:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x000248
0x000234:
    stog.alarm[2s] = 15s
0x000248:
    popenv 0x000234
0x00024C:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0002B4
0x000270:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0002CC
0x0002B4:
    global.myfight = 0s
    global.mnfight = 1s
0x0002CC:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00039C
0x0002F0:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000364
0x000350:
    stog.alarm[2s] = 30s
0x000364:
    popenv 0x000350
0x000368:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x00039C:
    if !(== global.mnfight 2s) goto 0x000700
0x0003B0:
    if !(== self.attacked 0s) goto 0x000700
0x0003C4:
    global.turntimer = 160s
    if !(!= self.mercymod -100s) goto 0x000530
0x0003E4:
    if !(!= global.turn 1s) goto 0x0004D8
0x0003F8:
    if !(>= self.mycommand 0s) goto 0x000420
0x00040C:
    push (<= self.mycommand 50s)
    goto 0x000424
0x000420:
    push 0s
0x000424:
    if !pop goto 0x000480
0x000428:
    global.turntimer = 140s
    global.firingrate = (/ (double 4000s) (- self.mercymod))
    self.gen = (instance_create[]:int32 (var 707s) (var 0s) (var 0s))
    goto 0x0004D4
0x000480:
    global.turntimer = 170s
    global.firingrate = (/ (double 3600s) (- self.mercymod))
    self.gen = (instance_create[]:int32 (var 708s) (var 0s) (var 0s))
0x0004D4:
    goto 0x00052C
0x0004D8:
    global.turntimer = 140s
    push (var 710s)
    push -5s
    self.gen = (instance_create[]:int32 (+ 2s:idealborder 30s) -5s (+ 0s:idealborder 30s))
0x00052C:
    goto 0x0005A4
0x000530:
    global.turntimer = 260s
    global.firingrate = 8s
    call (instance_create[]:int32 (var 621s) (- 210.y 30s) (+ 210.x 34s))
    self.gen = (instance_create[]:int32 (var 709s) (var 0s) (var 0s))
0x0005A4:
    push self.myself
    stog.myself* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x000618
0x000600:
    stog.msg[0s] = "* Napstablook is staring into&  the distance."
0x000618:
    if !(>= self.mycommand 30s) goto 0x000644
0x00062C:
    stog.msg[0s] = "* Napstablook is wishing they&  weren't here."
0x000644:
    if !(>= self.mycommand 70s) goto 0x000670
0x000658:
    stog.msg[0s] = "* Napstablook is pretending to&  sleep."
0x000670:
    if !(>= self.mycommand 90s) goto 0x00069C
0x000684:
    stog.msg[0s] = "* The faint odor of ectoplasm&  permeates the vicinity."
0x00069C:
    if !(> self.mercymod -400s) goto 0x0006C8
0x0006B0:
    stog.msg[0s] = "* Napstablook looks just a&  little bit better."
0x0006C8:
    if !(> self.mercymod -290s) goto 0x0006F4
0x0006DC:
    stog.msg[0s] = "* Cheering seems to have&  improved Napstablook's&  mood again."
0x0006F4:
    self.attacked = 1s
0x000700:
    if !(== self.whatiheard 3s) goto 0x000730
0x000714:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000734
0x000730:
    push 0s
0x000734:
    if !pop goto 0x00076C
0x000738:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x00076C
0x000760:
    call (instance_destroy[]:int32 )
0x00076C:
    if !(== global.myfight 2s) goto 0x000B5C
0x000780:
    if !(!= self.whatiheard -1s) goto 0x000B5C
0x000794:
    if !(== global.heard 0s) goto 0x000B5C
0x0007A8:
    if !(== self.whatiheard 0s) goto 0x000878
0x0007BC:
    global.msc = 0s
    stog.msg[0s] = "* NAPSTABLOOK - ATK 10 DEF 10&* This monster doesn't seem to&  have a sense of humor.../^"
    push -5s
    if !(== 6s:flag 1s) goto 0x000814
0x0007FC:
    stog.msg[0s] = "* NAPSTABLOOK - ATK 10 DEF 10&* Missed the memo and is the&  same difficulty as normal./^"
0x000814:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000874
0x000868:
    self.halt = 0s
0x000874:
    popenv 0x000868
0x000878:
    if !(== self.whatiheard 3s) goto 0x000904
0x00088C:
    global.myfight = 0s
    global.mnfight = 1s
    if !(== self.mercymod -50s) goto 0x000904
0x0008B8:
    self.mercymod = -49s
    call (caster_stop[]:int32 global.batmusic)
    call (caster_free[]:int32 global.batmusic)
    global.myfight = 0s
    global.mnfight = 1s
0x000904:
    if !(== self.whatiheard 1s) goto 0x0009A0
0x000918:
    global.msc = 0s
    stog.msg[0s] = "* You give Napstablook a&  cruel look./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x00099C
0x000990:
    self.halt = 0s
0x00099C:
    popenv 0x000990
0x0009A0:
    if !(== self.whatiheard 4s) goto 0x000B50
0x0009B4:
    global.msc = 0s
    if !(== self.mercymod -50s) goto 0x000A24
0x0009D4:
    self.mercymod = -49s
    call (caster_stop[]:int32 global.batmusic)
    call (caster_free[]:int32 global.batmusic)
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x000B50
0x000A24:
    if !(< self.mercymod -400s) goto 0x000A50
0x000A38:
    stog.msg[0s] = "* You try to console&  Napstablook.../^"
0x000A50:
    if !(== self.mercymod -400s) goto 0x000A7C
0x000A64:
    stog.msg[0s] = "* You gave Napstablook a&  patient smile./^"
0x000A7C:
    if !(== self.mercymod -300s) goto 0x000AA8
0x000A90:
    stog.msg[0s] = "* You told Napstablook a&  little joke./^"
0x000AA8:
    if !(== self.mercymod -200s) goto 0x000AD4
0x000ABC:
    stog.msg[0s] = "* Napstablook wants to&  show you something./^"
0x000AD4:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000B34
0x000B28:
    self.halt = 0s
0x000B34:
    popenv 0x000B28
0x000B38:
    self.mercymod = (+ self.mercymod 100s)
0x000B50:
    global.heard = 1s
0x000B5C:
    if !(== global.myfight 4s) goto 0x000BC4
0x000B70:
    if !(== global.mercyuse 0s) goto 0x000BC4
0x000B84:
    self.mercer = 1s
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000BC4
0x000BB8:
    call (instance_destroy[]:int32 )
0x000BC4:
    exit
