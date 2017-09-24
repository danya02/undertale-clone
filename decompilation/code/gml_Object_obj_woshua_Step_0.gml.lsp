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
    if !(== global.mnfight 2s) goto 0x000C60
0x000540:
    if !(== self.attacked 0s) goto 0x000C60
0x000554:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 160s
    global.firingrate = 3s
    if !(== self.pop 3s) goto 0x0005A8
0x000590:
    global.firingrate = (* global.firingrate 3s)
0x0005A8:
    if !(== self.pop 2s) goto 0x0005D4
0x0005BC:
    global.firingrate = (* global.firingrate 2s)
0x0005D4:
    self.type = 2s
    if !(>= self.mycommand 0s) goto 0x000608
0x0005F4:
    push (< self.mycommand 50s)
    goto 0x00060C
0x000608:
    push 0s
0x00060C:
    if !pop goto 0x00061C
0x000610:
    self.type = 1s
0x00061C:
    if (== self.clean 1s) goto 0x000644
0x000630:
    push (== self.clean 3s)
    goto 0x000648
0x000644:
    push 1s
0x000648:
    if !pop goto 0x000658
0x00064C:
    self.type = 1s
0x000658:
    if !(== self.type 1s) goto 0x0009A0
0x00066C:
    global.turntimer = 180s
    if !(== self.pop 1s) goto 0x000698
0x00068C:
    global.turntimer = 150s
0x000698:
    if !(== self.pop 1s) goto 0x0006B8
0x0006AC:
    global.firingrate = 3s
0x0006B8:
    global.firingrate = (+ global.firingrate self.dirtyjoke)
    if !(> self.dirtyjoke 3s) goto 0x0006F4
0x0006E8:
    self.dirtyjoke = 2s
0x0006F4:
    if !(> self.pop 1s) goto 0x000788
0x000708:
    push (var 690s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (+ 2s:idealborder 90s) (/ (c_borderheight[]:int32 (var 0s)) (double 2s))) -5s (+ 0s:idealborder (/ (c_borderwidth[]:int32 (var 0s)) (double 2s))))
0x000788:
    if !(== self.pop 1s) goto 0x00081C
0x00079C:
    push (var 690s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (- 2s:idealborder 5s) (/ (c_borderheight[]:int32 (var 0s)) (double 2s))) -5s (+ 0s:idealborder (/ (c_borderwidth[]:int32 (var 0s)) (double 2s))))
0x00081C:
    if !(== self.pop 1s) goto 0x000900
0x000830:
    push 0s
    stog.blue* = (int32 self.gen)
    if !(bool self.mycommand) goto 0x000870
0x000858:
    push 6s
    stog.turn* = (int32 self.gen)
0x000870:
    self.qq = (choose[]:int32 (var 1s) (var 0s))
    if !(== self.qq 0s) goto 0x0008D4
0x0008A4:
    push -6s
    stog.turn* = (int32 self.gen)
    push 1s
    stog.backwards* = (int32 self.gen)
0x0008D4:
    push (+ 60s (random[]:int32 (var 40s)))
    stog.direction* = (int32 self.gen)
0x000900:
    if !(== self.clean 1s) goto 0x000938
0x000914:
    push 1s
    stog.cleaner* = (int32 self.gen)
    self.clean = 0s
0x000938:
    if !(== self.clean 3s) goto 0x000970
0x00094C:
    push 1s
    stog.cleaner* = (int32 self.gen)
    self.clean = 2s
0x000970:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    goto 0x000B20
0x0009A0:
    global.firingrate = 4s
    push (var 666s)
    push -5s
    self.gen = (instance_create[]:int32 (+ (- 2s:idealborder 60s) (/ (c_borderheight[]:int32 (var 0s)) (double 2s))) -5s (+ 0s:idealborder (/ (c_borderwidth[]:int32 (var 0s)) (double 2s))))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    if !(> self.pop 1s) goto 0x000A84
0x000A6C:
    push 1s
    stog.offset* = (int32 self.gen)
0x000A84:
    self.qd = 0s
    if !(> self.dirtyjoke 0s) goto 0x000AC4
0x000AA4:
    self.qd = (* self.dirtyjoke 0.5d)
0x000AC4:
    if !(> self.qd 1s) goto 0x000AE4
0x000AD8:
    self.qd = 1s
0x000AE4:
    push (- 4s self.qd)
    stog.speed* = (int32 self.gen)
    push 0s
    stog.bullettype* = (int32 self.gen)
0x000B20:
    push self.myself
    stog.myself* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x000B68
0x000B50:
    stog.msg[0s] = "* Woshua wonders if tears are&  sanitary."
0x000B68:
    if !(>= self.mycommand 25s) goto 0x000B94
0x000B7C:
    stog.msg[0s] = "* Woshua is friends with&  a little bird."
0x000B94:
    if !(>= self.mycommand 50s) goto 0x000BC0
0x000BA8:
    stog.msg[0s] = "* Woshua is rinsing off a&  pizza."
0x000BC0:
    if !(>= self.mycommand 75s) goto 0x000BEC
0x000BD4:
    stog.msg[0s] = "* Woshua is looking for some&  good clean fun."
0x000BEC:
    if !(>= self.mycommand 90s) goto 0x000C18
0x000C00:
    stog.msg[0s] = "* Smells like detergent."
0x000C18:
    push -5s
    if !(< (int32 self.myself):monsterhp 30s) goto 0x000C54
0x000C3C:
    stog.msg[0s] = "* Woshua is revolted at its own&  wounds."
0x000C54:
    self.attacked = 1s
0x000C60:
    if !(== global.myfight 2s) goto 0x001130
0x000C74:
    if !(!= self.whatiheard -1s) goto 0x001130
0x000C88:
    if !(== global.heard 0s) goto 0x001130
0x000C9C:
    if !(== self.whatiheard 0s) goto 0x000D44
0x000CB0:
    global.msc = 0s
    stog.msg[0s] = "* WOSHUA - ATK 18 DEF 5&* This humble germophobe seeks&  to cleanse the whole world./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000D34
0x000D28:
    self.halt = 0s
0x000D34:
    popenv 0x000D28
0x000D38:
    self.whatiheard = 9s
0x000D44:
    if !(== self.whatiheard 1s) goto 0x000E44
0x000D58:
    global.msc = 0s
    stog.msg[0s] = "* You reach out^1.&* Woshua recoils from your&  touch./^"
    if !(== self.slime 1s) goto 0x000DB4
0x000D90:
    stog.msg[0s] = "* Woshua is terrified of&  your slimy body!&* It runs away./^"
    self.mercymod = 333s
0x000DB4:
    if !(== self.clean 2s) goto 0x000DE0
0x000DC8:
    stog.msg[0s] = "* You give Woshua a friendly&  pat./^"
0x000DE0:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000E40
0x000E34:
    self.halt = 0s
0x000E40:
    popenv 0x000E34
0x000E44:
    if !(== self.whatiheard 3s) goto 0x000F4C
0x000E58:
    global.msc = 0s
    stog.msg[0s] = "* You ask Woshua to clean you^1.&* It hops around excitedly./^"
    if !(== self.clean 2s) goto 0x000EA8
0x000E90:
    stog.msg[0s] = "* Woshua continues cleaning./^"
0x000EA8:
    if !(== self.clean 0s) goto 0x000EC8
0x000EBC:
    self.clean = 1s
0x000EC8:
    if !(== self.clean 2s) goto 0x000EE8
0x000EDC:
    self.clean = 3s
0x000EE8:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000F48
0x000F3C:
    self.halt = 0s
0x000F48:
    popenv 0x000F3C
0x000F4C:
    if !(== self.whatiheard 4s) goto 0x001124
0x000F60:
    global.msc = 0s
    self.jj = (floor[]:int32 (random[]:int32 (var 3s)))
    if !(== self.jj 0s) goto 0x000FB8
0x000FA0:
    stog.msg[0s] = "* You tell a joke about two&  kids who played in a&  muddy flower garden./"
0x000FB8:
    if !(== self.jj 1s) goto 0x000FE4
0x000FCC:
    stog.msg[0s] = "* You tell a joke about a kid&  who ate a pie with&  their bare hands./"
0x000FE4:
    if !(== self.jj 2s) goto 0x001010
0x000FF8:
    stog.msg[0s] = "* You tell a joke about a kid&  who slept in the soil./"
0x001010:
    stog.msg[1s] = "* Woshua's powers neutralized!/^"
    self.dirtyjoke = (+ self.dirtyjoke 1s)
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0010A0
0x001094:
    self.halt = 0s
0x0010A0:
    popenv 0x001094
0x0010A4:
    if !(bool (instance_exists[]:int32 (var 289s))) goto 0x0010D4
0x0010BC:
    [obj_aaron].whatiheard = 12s
    [obj_aaron].mercymod = 450s
0x0010D4:
    push -5s
    if !(> (int32 self.myself):monsteratk 3s) goto 0x001124
0x0010F8:
    push -5s
    stog.monsteratk[(- (int32 self.myself):monsteratk 2s)] = (int32 self.myself)
0x001124:
    global.heard = 1s
0x001130:
    if !(== self.whatiheard 3s) goto 0x001170
0x001144:
    if !(== self.flex 3s) goto 0x001170
0x001158:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x001174
0x001170:
    push 0s
0x001174:
    if !pop goto 0x0011B0
0x001178:
    if !(== 782.stringno 1s) goto 0x0011B0
0x00118C:
    self.vspeed = -4s
    push -4s
    stog.vspeed* = (int32 self.mypart1)
0x0011B0:
    if !(== self.whatiheard 3s) goto 0x0011F4
0x0011C4:
    if !(== self.flex 3s) goto 0x0011F4
0x0011D8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0011F8
0x0011F4:
    push 0s
0x0011F8:
    if !pop goto 0x001230
0x0011FC:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001230
0x001224:
    call (instance_destroy[]:int32 )
0x001230:
    if !(== self.alphaup 1s) goto 0x001258
0x001244:
    push (< self.image_alpha 1s)
    goto 0x00125C
0x001258:
    push 0s
0x00125C:
    if !pop goto 0x001280
0x001260:
    self.image_alpha = (+ self.image_alpha 0.05d)
0x001280:
    if !(== global.myfight 4s) goto 0x0012DC
0x001294:
    if !(== global.mercyuse 0s) goto 0x0012DC
0x0012A8:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x0012DC
0x0012D0:
    call (instance_destroy[]:int32 )
0x0012DC:
    if !(== self.mercymod 333s) goto 0x00130C
0x0012F0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001310
0x00130C:
    push 0s
0x001310:
    if !pop goto 0x001348
0x001314:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001348
0x00133C:
    call (instance_destroy[]:int32 )
0x001348:
    exit
