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
    if !(== global.mnfight 2s) goto 0x00068C
0x00038C:
    if !(== self.attacked 0s) goto 0x00068C
0x0003A0:
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x0003C0
0x0003B4:
    global.turntimer = 5s
0x0003C0:
    if !(< self.mycommand 96s) goto 0x000458
0x0003D4:
    push (var 650s)
    push -5s
    push 2s:idealborder
    self.gen = (instance_create[]:int32 -5s (+ 3s:idealborder (/ (- (- -5s 2s:idealborder) 40s) (double 2s))) (var 0s))
    push 500s
    stog.toothdist* = (int32 self.gen)
0x000458:
    if !(>= self.mycommand 96s) goto 0x000558
0x00046C:
    global.firingrate = 15s
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 2s) goto 0x0004C8
0x0004BC:
    global.firingrate = 25s
0x0004C8:
    push -5s
    push 0s:monster
    push (+ -5s 1s:monster)
    if !(== (+ -5s 2s:monster) 3s) goto 0x000518
0x00050C:
    global.firingrate = 35s
0x000518:
    self.gen = (instance_create[]:int32 (var 713s) (var 0s) (var 0s))
    push 11s
    stog.bullettype* = (int32 self.gen)
0x000558:
    push self.myself
    stog.myself* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x0005CC
0x0005B4:
    stog.msg[0s] = "* 'Ice Cap' is no more."
0x0005CC:
    if !(>= self.mycommand 90s) goto 0x0005F8
0x0005E0:
    stog.msg[0s] = "* It smells like frozen despair."
0x0005F8:
    if !(== self.happy 1s) goto 0x000624
0x00060C:
    stog.msg[0s] = "* Ice doesn't mind its identity."
0x000624:
    push -5s
    push (int32 self.myself):monsterhp
    if !(< -5s (/ (int32 self.myself):monstermaxhp (double 3s))) goto 0x000680
0x000668:
    stog.msg[0s] = "* It's melting."
0x000680:
    self.attacked = 1s
0x00068C:
    if !(== self.whatiheard 1s) goto 0x0006BC
0x0006A0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0006C0
0x0006BC:
    push 0s
0x0006C0:
    if !pop goto 0x000704
0x0006C4:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000704
0x0006EC:
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x000704:
    if !(== global.myfight 2s) goto 0x0008A4
0x000718:
    if !(!= self.whatiheard -1s) goto 0x0008A4
0x00072C:
    if !(== global.heard 0s) goto 0x0008A4
0x000740:
    if !(== self.whatiheard 0s) goto 0x0007DC
0x000754:
    global.msc = 0s
    stog.msg[0s] = "* ICE - ATK 1 DEF 0&* Without its cap.../^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0007D8
0x0007CC:
    self.halt = 0s
0x0007D8:
    popenv 0x0007CC
0x0007DC:
    if !(== self.whatiheard 3s) goto 0x000898
0x0007F0:
    global.msc = 0s
    stog.msg[0s] = "* You inform Ice Cap that&  it still looks fine.../^"
    stog.flag[137s] = 1s
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000888
0x00087C:
    self.halt = 0s
0x000888:
    popenv 0x00087C
0x00088C:
    self.happy = 1s
0x000898:
    global.heard = 1s
0x0008A4:
    if !(== global.myfight 4s) goto 0x000900
0x0008B8:
    if !(== global.mercyuse 0s) goto 0x000900
0x0008CC:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000900
0x0008F4:
    call (instance_destroy[]:int32 )
0x000900:
    exit
