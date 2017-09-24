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
    stog.alarm[5s] = 60s
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
    if !(== (int32 self.myself):hurtanim 2s) goto 0x0002D8
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
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0002A8
0x000224:
    stog.hurtanim[(int32 self.myself)] = 0s
    self.sprite_index = 180s
    call (path_start[]:int32 (var 0s) (var 1s) (var 0.5d) (var 42s))
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x0002D8
0x0002A8:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x0002D8:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0003A8
0x0002FC:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x000370
0x00035C:
    stog.alarm[2s] = 30s
0x000370:
    popenv 0x00035C
0x000374:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0003A8:
    if !(== global.mnfight 2s) goto 0x0005D0
0x0003BC:
    if !(== self.attacked 0s) goto 0x0005D0
0x0003D0:
    global.turntimer = 100s
    if !(>= self.mycommand 0s) goto 0x000404
0x0003F0:
    push (<= self.mycommand 50s)
    goto 0x000408
0x000404:
    push 0s
0x000408:
    if !pop goto 0x000454
0x00040C:
    call (script_execute[]:int32 (+ 743.y 42s) 743.x (var 624s) (var 20s) (var 10s) (var 123s))
    goto 0x00047C
0x000454:
    self.gen = (instance_create[]:int32 (var 702s) (var 0s) (var 0s))
0x00047C:
    push self.myself
    stog.myself* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x0004C4
0x0004AC:
    stog.msg[0s] = "* Whimsun avoids eye contact."
0x0004C4:
    if !(>= self.mycommand 30s) goto 0x0004F0
0x0004D8:
    stog.msg[0s] = "* Whimsun continues to mutter&  apologies."
0x0004F0:
    if !(>= self.mycommand 70s) goto 0x00051C
0x000504:
    stog.msg[0s] = "* Whimsun is fluttering."
0x00051C:
    if !(>= self.mycommand 90s) goto 0x000548
0x000530:
    stog.msg[0s] = "* It's starting to smell like&  lavender and mothballs."
0x000548:
    if !(> self.mercymod 100s) goto 0x000574
0x00055C:
    stog.msg[0s] = "* Whimsun is hyperventilating."
0x000574:
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (int32 self.myself):monstermaxhp) goto 0x0005C4
0x0005AC:
    stog.msg[0s] = "* Whimsun is having trouble&  flying."
0x0005C4:
    self.attacked = 1s
0x0005D0:
    if !(== self.whatiheard 3s) goto 0x000600
0x0005E4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000604
0x000600:
    push 0s
0x000604:
    if !pop goto 0x00063C
0x000608:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x00063C
0x000630:
    call (instance_destroy[]:int32 )
0x00063C:
    if !(== global.myfight 2s) goto 0x000878
0x000650:
    if !(!= self.whatiheard -1s) goto 0x000878
0x000664:
    if !(== global.heard 0s) goto 0x000878
0x000678:
    if !(== self.whatiheard 0s) goto 0x000714
0x00068C:
    global.msc = 0s
    stog.msg[0s] = "* WHIMSUN - ATK 5 DEF 0&* This monster is too&  sensitive to fight.../^"
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
    if !(== self.whatiheard 3s) goto 0x0007C4
0x000728:
    stog.flag[131s] = 1s
    global.msc = 0s
    stog.msg[0s] = "* Halfway through your first&  word^1, Whimsun bursts into&  tears and runs away./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0007C0
0x0007B4:
    self.halt = 0s
0x0007C0:
    popenv 0x0007B4
0x0007C4:
    if !(== self.whatiheard 1s) goto 0x00086C
0x0007D8:
    global.msc = 0s
    stog.msg[0s] = "* You raise your arms and&  wiggle your fingers.&* Whimsun freaks out!/^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x00085C
0x000850:
    self.halt = 0s
0x00085C:
    popenv 0x000850
0x000860:
    self.mercymod = 101s
0x00086C:
    global.heard = 1s
0x000878:
    if !(== global.myfight 4s) goto 0x0008D4
0x00088C:
    if !(== global.mercyuse 0s) goto 0x0008D4
0x0008A0:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x0008D4
0x0008C8:
    call (instance_destroy[]:int32 )
0x0008D4:
    exit
