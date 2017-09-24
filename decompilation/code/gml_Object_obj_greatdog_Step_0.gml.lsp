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
    stog.alarm[5s] = 15s
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
    self.shudder = 16s
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
    if !(== global.mnfight 2s) goto 0x0008D8
0x000540:
    if !(== self.attacked 0s) goto 0x0008D8
0x000554:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 120s
    global.firingrate = 15s
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
    if !pop goto 0x000664
0x000614:
    self.gen = (instance_create[]:int32 (var 686s) self.y self.x)
    global.border = 3s
    push 1s
    stog.bullettype* = (int32 self.gen)
    goto 0x0006BC
0x000664:
    global.turntimer = 90s
    global.border = 8s
    self.gen = (instance_create[]:int32 (var 641s) self.y self.x)
    push 0s
    stog.bullettype* = (int32 self.gen)
0x0006BC:
    push self.myself
    stog.myself* = (int32 self.gen)
    if !(>= self.mycommand 0s) goto 0x000704
0x0006EC:
    stog.msg[0s] = "* Greater Dog is watching you&  intently."
0x000704:
    if !(>= self.mycommand 45s) goto 0x000730
0x000718:
    stog.msg[0s] = "* Greater Dog is waiting for&  your command."
0x000730:
    if !(>= self.mycommand 90s) goto 0x00075C
0x000744:
    stog.msg[0s] = "* It smells like freshly-&  squeezed puppy juice."
0x00075C:
    if !(== self.close 1s) goto 0x000788
0x000770:
    stog.msg[0s] = "* Greater Dog is seeking&  affection."
0x000788:
    if !(> self.dogignore 0s) goto 0x0007B4
0x00079C:
    stog.msg[0s] = "* Greater Dog just wants&  affection."
0x0007B4:
    if !(> self.dogignore 2s) goto 0x0007E0
0x0007C8:
    stog.msg[0s] = "* Greater Dog is making&  puppy-dog eyes."
0x0007E0:
    if !(== self.pet 1s) goto 0x00080C
0x0007F4:
    stog.msg[0s] = "* Greater Dog is patting the&  ground with its front paws."
0x00080C:
    if !(== self.pet 2s) goto 0x000838
0x000820:
    stog.msg[0s] = "* Greater Dog wants some TLC."
0x000838:
    if !(== self.pet 3s) goto 0x000864
0x00084C:
    stog.msg[0s] = "* Pet capacity is 40-percent."
0x000864:
    if !(== self.pet 4s) goto 0x000890
0x000878:
    stog.msg[0s] = "* Greater Dog is contented."
0x000890:
    push -5s
    if !(< (int32 self.myself):monsterhp 30s) goto 0x0008CC
0x0008B4:
    stog.msg[0s] = "* Greater Dog is panting&  slowly."
0x0008CC:
    self.attacked = 1s
0x0008D8:
    if !(== global.myfight 2s) goto 0x001034
0x0008EC:
    if !(!= self.whatiheard -1s) goto 0x001034
0x000900:
    if !(== global.heard 0s) goto 0x001034
0x000914:
    if !(== self.whatiheard 0s) goto 0x0009B0
0x000928:
    global.msc = 0s
    stog.msg[0s] = "* GREATER DOG - ATK 15 DEF 8&* It's so excited that it&  thinks fighting is just play./^"
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0009AC
0x0009A0:
    self.halt = 0s
0x0009AC:
    popenv 0x0009A0
0x0009B0:
    if !(== self.whatiheard 1s) goto 0x000AB0
0x0009C4:
    global.msc = 0s
    if !(== self.close 1s) goto 0x0009FC
0x0009E4:
    stog.msg[0s] = "* The Greater Dog's ears&  perk up^1.&* Nothing else happens./^"
0x0009FC:
    if !(== self.close 0s) goto 0x000A4C
0x000A10:
    stog.msg[0s] = "* You call the Greater Dog./"
    stog.msg[1s] = "* It bounds towards you^1,&  flecking slobber into your&  face./^"
    self.close = 1s
0x000A4C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000AAC
0x000AA0:
    self.halt = 0s
0x000AAC:
    popenv 0x000AA0
0x000AB0:
    if !(== self.whatiheard 2s) goto 0x000BB0
0x000AC4:
    global.msc = 0s
    if !(< self.dogignore 4s) goto 0x000B20
0x000AE4:
    stog.msg[0s] = "* Greater Dog inches closer./^"
    self.dogignore = (+ self.dogignore 1s)
    self.close = 1s
0x000B20:
    if !(== self.dogignore 4s) goto 0x000B4C
0x000B34:
    stog.msg[0s] = "* Greater Dog decides you are&  too boring./^"
0x000B4C:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BAC
0x000BA0:
    self.halt = 0s
0x000BAC:
    popenv 0x000BA0
0x000BB0:
    if !(> self.pet 0s) goto 0x000BE0
0x000BC4:
    stog.monsterdef[(int32 self.myself)] = -20s
0x000BE0:
    if !(== self.whatiheard 3s) goto 0x000EA8
0x000BF4:
    global.msc = 0s
    stog.msg[0s] = "* You pet the dog./^"
    if !(== self.pet 4s) goto 0x000C44
0x000C2C:
    stog.msg[0s] = "* Tummy rubs are forbidden./^"
0x000C44:
    if !(== self.pet 3s) goto 0x000CC4
0x000C58:
    self.pet = 4s
    stog.msg[0s] = "* You pet decisively^1.&* Pet capacity reaches 100&  percent./"
    stog.msg[1s] = "* The dog flops over with&  its legs hanging in the air./^"
    global.sp = 154.tempspd
    self.mercymod = 9999s
    stog.flag[142s] = 1s
0x000CC4:
    if !(== self.pet 2s) goto 0x000D38
0x000CD8:
    stog.msg[0s] = "* As you pet the dog^1,&  it sinks its entire weight&  into you.../"
    stog.msg[1s] = "* Your movements slow./"
    stog.msg[2s] = "* But^1, you still haven't&  pet enough...!/^"
    global.sp = 3s
    self.pet = 3s
0x000D38:
    if !(== self.pet 1s) goto 0x000D64
0x000D4C:
    stog.msg[0s] = "* Greater Dog's excitement is&  creating a power field that&  prevents petting./^"
0x000D64:
    if !(== self.close 1s) goto 0x000D8C
0x000D78:
    push (== self.pet 0s)
    goto 0x000D90
0x000D8C:
    push 0s
0x000D90:
    if !pop goto 0x000E18
0x000D94:
    stog.msg[0s] = "* Greater Dog curls up in&  your lap as it is&  pet by you./"
    stog.msg[1s] = "* It gets so comfortable&  it falls asleep.../"
    stog.msg[2s] = "* Zzzzz.../"
    stog.msg[3s] = "* .../"
    stog.msg[4s] = "* Then it wakes up^1!&* It's so excited!/^"
    self.pet = 1s
0x000E18:
    if !(== self.close 0s) goto 0x000E44
0x000E2C:
    stog.msg[0s] = "* Greater Dog is too far&  away to pet^1.&* You just pet the air./^"
0x000E44:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000EA4
0x000E98:
    self.halt = 0s
0x000EA4:
    popenv 0x000E98
0x000EA8:
    if !(== self.whatiheard 4s) goto 0x001028
0x000EBC:
    global.msc = 0s
    stog.msg[0s] = "* You play with the dog./^"
    if !(> self.pet 1s) goto 0x000F0C
0x000EF4:
    stog.msg[0s] = "* Greater Dog is too tired&  to play./^"
0x000F0C:
    if !(== self.pet 1s) goto 0x000F8C
0x000F20:
    stog.msg[0s] = "* You make a snowball and&  throw it for the dog&  to fetch./"
    stog.msg[1s] = "* It splats on the ground./"
    stog.msg[2s] = "* Greater Dog picks up all&  the snow in the area&  and brings it to you./"
    stog.msg[3s] = "* Now dog is very tired..^1.&* It rests its head on you.../^"
    self.pet = 2s
0x000F8C:
    if !(== self.pet 0s) goto 0x000FB8
0x000FA0:
    stog.msg[0s] = "* Greater Dog is not excited&  enough to play with./^"
0x000FB8:
    global.msc = 0s
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x001024
0x001018:
    self.halt = 0s
0x001024:
    popenv 0x001018
0x001028:
    global.heard = 1s
0x001034:
    if !(== global.myfight 4s) goto 0x001090
0x001048:
    if !(== global.mercyuse 0s) goto 0x001090
0x00105C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001090
0x001084:
    call (instance_destroy[]:int32 )
0x001090:
    if !(> self.dogignore 3s) goto 0x0010C0
0x0010A4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0010C4
0x0010C0:
    push 0s
0x0010C4:
    if !pop goto 0x00111C
0x0010C8:
    self.mercymod = 6666s
    stog.flag[54s] = 3s
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x00111C
0x001110:
    call (instance_destroy[]:int32 )
0x00111C:
    exit
