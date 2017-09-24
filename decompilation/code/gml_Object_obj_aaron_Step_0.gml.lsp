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
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00045C
0x000344:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x000398
0x000384:
    stog.alarm[2s] = 15s
0x000398:
    popenv 0x000384
0x00039C:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x00042C
0x0003C0:
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00045C
0x00042C:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x00045C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00052C
0x000480:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0004F4
0x0004E0:
    stog.alarm[2s] = 30s
0x0004F4:
    popenv 0x0004E0
0x0004F8:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x00052C:
    if !(== global.mnfight 2s) goto 0x000914
0x000540:
    if !(== self.attacked 0s) goto 0x000914
0x000554:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 160s
    global.firingrate = 25s
    if !(== self.pop 3s) goto 0x0005B0
0x000590:
    global.firingrate = (* global.firingrate 2.4d)
0x0005B0:
    if !(== self.pop 2s) goto 0x0005E4
0x0005C4:
    global.firingrate = (* global.firingrate 1.7d)
0x0005E4:
    if !(>= self.mycommand 0s) goto 0x00060C
0x0005F8:
    push (<= self.mycommand 50s)
    goto 0x000610
0x00060C:
    push 0s
0x000610:
    if !pop goto 0x0006A4
0x000614:
    global.turntimer = 160s
    self.gen = (instance_create[]:int32 (var 694s) self.y self.x)
    if !(> self.pop 1s) goto 0x000674
0x00065C:
    push 1s
    stog.offset* = (int32 self.gen)
0x000674:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x000758
0x0006A4:
    global.firingrate = 5s
    if !(== self.pop 3s) goto 0x0006E4
0x0006C4:
    global.firingrate = (* global.firingrate 2.7d)
0x0006E4:
    if !(== self.pop 2s) goto 0x000718
0x0006F8:
    global.firingrate = (* global.firingrate 1.8d)
0x000718:
    self.gen = (instance_create[]:int32 (var 693s) self.y self.x)
    push 0s
    stog.bullettype* = (int32 self.gen)
0x000758:
    push self.myself
    stog.myself* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x0007A0
0x000788:
    stog.msg[0s] = "* Aaron is splashing you&  playfully."
0x0007A0:
    if !(>= self.mycommand 0s) goto 0x0007D0
0x0007B4:
    push -5s
    push (== 95s:flag 1s)
    goto 0x0007D4
0x0007D0:
    push 0s
0x0007D4:
    if !pop goto 0x0007F0
0x0007D8:
    stog.msg[0s] = "* Aaron is looking around^1,&  fearful of something."
0x0007F0:
    if !(>= self.mycommand 25s) goto 0x00081C
0x000804:
    stog.msg[0s] = "* Aaron is sweating bullets^3.&* Literally."
0x00081C:
    if !(>= self.mycommand 50s) goto 0x000848
0x000830:
    stog.msg[0s] = "* Aaron is admiring his own&  muscles."
0x000848:
    if !(>= self.mycommand 75s) goto 0x000874
0x00085C:
    stog.msg[0s] = "* Smells like an underwater&  barnyard."
0x000874:
    if !(>= self.mycommand 90s) goto 0x0008A0
0x000888:
    stog.msg[0s] = "* Smells like a mussel farm."
0x0008A0:
    if !(> self.flex 0s) goto 0x0008CC
0x0008B4:
    stog.msg[0s] = "* Aaron is ready for your&  next flex."
0x0008CC:
    push -5s
    if !(< (int32 self.myself):monsterhp 30s) goto 0x000908
0x0008F0:
    stog.msg[0s] = "* Aaron's muscles droop&  comically."
0x000908:
    self.attacked = 1s
0x000914:
    if !(== global.myfight 2s) goto 0x000CB4
0x000928:
    if !(!= self.whatiheard -1s) goto 0x000CB4
0x00093C:
    if !(== global.heard 0s) goto 0x000CB4
0x000950:
    if !(== self.whatiheard 0s) goto 0x000A10
0x000964:
    global.msc = 0s
    stog.msg[0s] = "* AARON - ATK 24 DEF 12&* This seahorse has a lot of&  HP (Horsepower)./"
    stog.msg[1s] = "* All of his attacks are harder&  to dodge at the bottom of the&  box./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000A00
0x0009F4:
    self.halt = 0s
0x000A00:
    popenv 0x0009F4
0x000A04:
    self.whatiheard = 9s
0x000A10:
    if !(== self.whatiheard 1s) goto 0x000AF8
0x000A24:
    global.msc = 0s
    stog.msg[0s] = "* You tell Aaron to go away./^"
    self.mercymod = -10s
    push -5s
    if !(== 95s:flag 1s) goto 0x000A94
0x000A70:
    stog.msg[0s] = "* You tell Aaron to go away^1.&* He agrees./^"
    self.mercymod = 222s
0x000A94:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000AF4
0x000AE8:
    self.halt = 0s
0x000AF4:
    popenv 0x000AE8
0x000AF8:
    if !(== self.whatiheard 3s) goto 0x000CA8
0x000B0C:
    global.msc = 0s
    if !(== self.flex 0s) goto 0x000B44
0x000B2C:
    stog.msg[0s] = "* You flex^1.&* Aaron flexes twice as hard.&* ATTACK increases for you two./^"
0x000B44:
    if !(== self.flex 1s) goto 0x000B70
0x000B58:
    stog.msg[0s] = "* You flex harder^1.&* Aaron flexes thrice as hard.&* ATTACK increases for you two./^"
0x000B70:
    if !(== self.flex 2s) goto 0x000BBC
0x000B84:
    stog.msg[0s] = "* You flex^1.&* Aaron flexes very hard.../"
    self.mercymod = 400s
    stog.flag[143s] = 1s
0x000BBC:
    stog.msg[1s] = "* He flexes himself out of&  the room!/^"
    self.flex = (+ self.flex 1s)
    if !(< global.at 150s) goto 0x000C18
0x000C00:
    global.at = (+ global.at 15s)
0x000C18:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000C78
0x000C6C:
    self.halt = 0s
0x000C78:
    popenv 0x000C6C
0x000C7C:
    push -5s
    stog.monsteratk[(+ (int32 self.myself):monsteratk 1s)] = (int32 self.myself)
0x000CA8:
    global.heard = 1s
0x000CB4:
    if !(== self.whatiheard 3s) goto 0x000CF4
0x000CC8:
    if !(== self.flex 3s) goto 0x000CF4
0x000CDC:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000CF8
0x000CF4:
    push 0s
0x000CF8:
    if !pop goto 0x000D34
0x000CFC:
    if !(== 782.stringno 1s) goto 0x000D34
0x000D10:
    self.vspeed = -4s
    push -4s
    stog.vspeed* = (int32 self.mypart1)
0x000D34:
    if !(== self.whatiheard 3s) goto 0x000D78
0x000D48:
    if !(== self.flex 3s) goto 0x000D78
0x000D5C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D7C
0x000D78:
    push 0s
0x000D7C:
    if !pop goto 0x000DB4
0x000D80:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000DB4
0x000DA8:
    call (instance_destroy[]:int32 )
0x000DB4:
    if !(== self.alphaup 1s) goto 0x000DDC
0x000DC8:
    push (< self.image_alpha 1s)
    goto 0x000DE0
0x000DDC:
    push 0s
0x000DE0:
    if !pop goto 0x000E04
0x000DE4:
    self.image_alpha = (+ self.image_alpha 0.05d)
0x000E04:
    if !(== global.myfight 4s) goto 0x000E60
0x000E18:
    if !(== global.mercyuse 0s) goto 0x000E60
0x000E2C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000E60
0x000E54:
    call (instance_destroy[]:int32 )
0x000E60:
    if !(== self.mercymod 222s) goto 0x000E90
0x000E74:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E94
0x000E90:
    push 0s
0x000E94:
    if !pop goto 0x000ECC
0x000E98:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x000ECC
0x000EC0:
    call (instance_destroy[]:int32 )
0x000ECC:
    exit
