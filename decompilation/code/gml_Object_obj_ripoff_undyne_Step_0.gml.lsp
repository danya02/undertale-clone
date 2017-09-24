0x000000:
    if !(== global.mnfight 4s) goto 0x000028
0x000014:
    push (== self.attacked 1s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000214
0x000030:
    if !(> self.hitno 0s) goto 0x0000CC
0x000044:
    if !(== self.hitno 1s) goto 0x000070
0x000058:
    self.rating = (+ self.rating 1s)
0x000070:
    if !(> self.hitno 1s) goto 0x00009C
0x000084:
    self.rating = (+ self.rating 2s)
0x00009C:
    if !(== self.berserk 1s) goto 0x0000C8
0x0000B0:
    self.rating = (- self.rating 1s)
0x0000C8:
    goto 0x000184
0x0000CC:
    if !(>= self.rating 10s) goto 0x0000F4
0x0000E0:
    push (> self.lesson 5s)
    goto 0x0000F8
0x0000F4:
    push 0s
0x0000F8:
    if !pop goto 0x000118
0x0000FC:
    self.rating = (- self.rating 2s)
    goto 0x000144
0x000118:
    if !(> self.rating 8s) goto 0x000144
0x00012C:
    self.rating = (- self.rating 1s)
0x000144:
    if !(== self.berserk 1s) goto 0x000184
0x000158:
    if !(> self.rating 6s) goto 0x000184
0x00016C:
    self.rating = (- self.rating 1s)
0x000184:
    self.attacked = 0s
    global.mnfight = 5s
    if !(== global.border 12s) goto 0x0001BC
0x0001B0:
    global.border = 13s
0x0001BC:
    call (SCR_BORDERSETUP[]:int32 )
    stog.alarm[7s] = 10s
    if !(bool (instance_exists[]:int32 (var 262s))) goto 0x000214
0x0001F4:
    pushenv 262s 0x000210
0x0001FC:
    call (event_user[]:int32 (var 1s))
0x000210:
    popenv 0x0001FC
0x000214:
    if !(== global.mnfight 3s) goto 0x000234
0x000228:
    self.attacked = 0s
0x000234:
    push -1s
    if !(> 5s:alarm 0s) goto 0x0003DC
0x000250:
    push -5s
    if !(== 0s:monster 1s) goto 0x0002D4
0x00026C:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0002D4
0x0002A4:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0002D4:
    push -5s
    if !(== 1s:monster 1s) goto 0x000358
0x0002F0:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x000358
0x000328:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x000358:
    push -5s
    if !(== 2s:monster 1s) goto 0x0003DC
0x000374:
    push 5s:alarm[Altar.Decomp.Expression[]]
    if !(> -1s 5s:alarm) goto 0x0003DC
0x0003AC:
    stog.alarm[5s] = 5s:alarm[Altar.Decomp.Expression[]]
0x0003DC:
    if !(== global.mnfight 1s) goto 0x000444
0x0003F0:
    if !(== self.talked 0s) goto 0x000444
0x000404:
    stog.alarm[5s] = 110s
    stog.alarm[6s] = 1s
    self.talked = 1s
    global.heard = 0s
0x000444:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0004D0
0x00045C:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0004B4
0x000478:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0004B4
0x000498:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0004B8
0x0004B4:
    push 0s
0x0004B8:
    if !pop goto 0x0004D0
0x0004BC:
    stog.alarm[5s] = 2s
0x0004D0:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x000534
0x0004F4:
    self.shudder = 8s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x000534:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00060C
0x000558:
    pushenv (int32 self.dmgwriter) 0x00057C
0x000568:
    stog.alarm[2s] = 15s
0x00057C:
    popenv 0x000568
0x000580:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x0005DC
0x0005A4:
    stog.hurtanim[(int32 self.myself)] = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00060C
0x0005DC:
    global.myfight = 0s
    global.mnfight = 1s
    self.killed = 1s
    call (instance_destroy[]:int32 )
0x00060C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x0006DC
0x000630:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0006A4
0x000690:
    stog.alarm[2s] = 30s
0x0006A4:
    popenv 0x000690
0x0006A8:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x0006DC:
    if !(== global.mnfight 2s) goto 0x000960
0x0006F0:
    if !(== self.attacked 0s) goto 0x000924
0x000704:
    self.pop = (scr_monstersum[]:int32 )
    global.turntimer = 180s
    global.firingrate = 10s
    if !(== self.pop 3s) goto 0x000760
0x000740:
    global.firingrate = (* global.firingrate 2.5d)
0x000760:
    if !(== self.pop 2s) goto 0x000794
0x000774:
    global.firingrate = (* global.firingrate 1.8d)
0x000794:
    self.hitno = 0s
    self.xx = (/ self.room_width (double 2s))
    self.yy = (/ self.room_height (double 2s))
    if !(== 743.sprite_index 39s) goto 0x0008E0
0x0007EC:
    self.gen = (instance_create[]:int32 (var 263s) self.yy self.xx)
    if !(== self.turns 0s) goto 0x000834
0x000828:
    self.lesson = -50s
0x000834:
    if !(== self.turns 1s) goto 0x000854
0x000848:
    self.lesson = -51s
0x000854:
    push self.lesson
    stog.lesson* = (int32 self.gen)
    push self.rating
    stog.rating* = (int32 self.gen)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    pushenv (int32 self.gen) 0x0008DC
0x0008C8:
    call (event_user[]:int32 (var 1s))
0x0008DC:
    popenv 0x0008C8
0x0008E0:
    if !(== self.turns 0s) goto 0x000900
0x0008F4:
    self.turns = 1s
0x000900:
    stog.msg[0s] = "* The Lost Soul stands there."
    self.attacked = 1s
0x000924:
    if !(== self.mercymod 999999) goto 0x000954
0x00093C:
    global.turntimer = -1s
    global.mnfight = 3s
0x000954:
    self.whatiheard = -1s
0x000960:
    if !(== global.myfight 2s) goto 0x000DF4
0x000974:
    if !(!= self.whatiheard -1s) goto 0x000DF4
0x000988:
    if !(== global.heard 0s) goto 0x000DF4
0x00099C:
    if !(== self.whatiheard 0s) goto 0x000AB8
0x0009B0:
    global.msc = 0s
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You tapped the Lost Soul&  lightly./"
    stog.msg[1s] = "* Something about the way you&  fight is familiar to her.../^"
    if !(>= self.mercyno 3s) goto 0x000A48
0x000A18:
    stog.msg[1s] = "* Something about the way you&  fight..^1.&* It's all flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
0x000A48:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000AA8
0x000A9C:
    self.halt = 0s
0x000AA8:
    popenv 0x000A9C
0x000AAC:
    self.whatiheard = 9s
0x000AB8:
    if !(== self.whatiheard 3s) goto 0x000BC8
0x000ACC:
    global.msc = 0s
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You asked the Lost Soul to&  teach you how to cook./"
    stog.msg[1s] = "* She doesn't know why^1, but&  she kind of wants to&  teach you how.../^"
    if !(>= self.mercyno 3s) goto 0x000B64
0x000B34:
    stog.msg[1s] = "* Suddenly^1, the memories are&  flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
0x000B64:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000BC4
0x000BB8:
    self.halt = 0s
0x000BC4:
    popenv 0x000BB8
0x000BC8:
    if !(== self.whatiheard 1s) goto 0x000CD8
0x000BDC:
    global.msc = 0s
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You gave the Lost Soul a big&  smile^1, like you remember&  she likes to do./"
    stog.msg[1s] = "* For some reason^1, she sort&  of wants to smile back.../^"
    if !(>= self.mercyno 3s) goto 0x000C74
0x000C44:
    stog.msg[1s] = "* Suddenly^1, the memories are&  flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
0x000C74:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000CD4
0x000CC8:
    self.halt = 0s
0x000CD4:
    popenv 0x000CC8
0x000CD8:
    if !(== self.whatiheard 4s) goto 0x000DE8
0x000CEC:
    global.msc = 0s
    self.mercyno = (+ self.mercyno 1s)
    stog.msg[0s] = "* You clashed against the Lost&  Soul with all of your might./"
    stog.msg[1s] = "* She feels your fighting&  spirit..^1.&* It's familiar somehow./^"
    if !(>= self.mercyno 3s) goto 0x000D84
0x000D54:
    stog.msg[1s] = "* She recognizes your fighting&  spirit..^1. suddenly^1, memories&  are flooding back!/%%"
    self.saved = 1s
    global.mnfight = 5s
0x000D84:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000DE4
0x000DD8:
    self.halt = 0s
0x000DE4:
    popenv 0x000DD8
0x000DE8:
    global.heard = 1s
0x000DF4:
    if !(== self.greenlock 1s) goto 0x000E1C
0x000E08:
    push (> global.mnfight 0s)
    goto 0x000E20
0x000E1C:
    push 0s
0x000E20:
    if !pop goto 0x000E64
0x000E24:
    if !(== 743.sprite_index 39s) goto 0x000E54
0x000E38:
    [obj_heart].y = (+ 759.y 34s)
    goto 0x000E60
0x000E54:
    self.greenlock = 0s
0x000E60:
    goto 0x000E70
0x000E64:
    self.greenlock = 0s
0x000E70:
    if !(== self.darkify 1s) goto 0x000F10
0x000E84:
    if !(< (int32 self.pseudodarker):image_alpha 0.5d) goto 0x000EE0
0x000EAC:
    stog.image_alpha* = (+ (int32 self.pseudodarker):image_alpha 0.04d)
    goto 0x000EEC
0x000EE0:
    push (int32 self.pseudodarker)
    self.darkify = 2s
0x000EEC:
    [obj_borderparent].image_alpha = (- 1s (int32 self.pseudodarker):image_alpha)
0x000F10:
    if !(== self.darkify 3s) goto 0x000FE4
0x000F24:
    if !(> (int32 self.pseudodarker):image_alpha 0s) goto 0x000F74
0x000F44:
    stog.image_alpha* = (- (int32 self.pseudodarker):image_alpha 0.04d)
0x000F74:
    push (int32 self.pseudodarker)
    [obj_borderparent].image_alpha = (- 1s (int32 self.pseudodarker):image_alpha)
    if !(<= (int32 self.pseudodarker):image_alpha 0s) goto 0x000FE4
0x000FB8:
    self.darkify = 0s
    pushenv (int32 self.pseudodarker) 0x000FE0
0x000FD4:
    call (instance_destroy[]:int32 )
0x000FE0:
    popenv 0x000FD4
0x000FE4:
    if !(== global.mnfight 3s) goto 0x001020
0x000FF8:
    if !(> self.darkify 0s) goto 0x001020
0x00100C:
    push (!= self.darkify 3s)
    goto 0x001024
0x001020:
    push 0s
0x001024:
    if !pop goto 0x001034
0x001028:
    self.darkify = 3s
0x001034:
    if !(== 743.sprite_index 39s) goto 0x00105C
0x001048:
    push (== global.mnfight 2s)
    goto 0x001060
0x00105C:
    push 0s
0x001060:
    if !pop goto 0x001070
0x001064:
    [obj_heart].movement = 3s
0x001070:
    if !(== global.myfight 4s) goto 0x0010CC
0x001084:
    if !(== global.mercyuse 0s) goto 0x0010CC
0x001098:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x0010CC
0x0010C0:
    call (instance_destroy[]:int32 )
0x0010CC:
    if !(== self.mercymod 222s) goto 0x0010FC
0x0010E0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001100
0x0010FC:
    push 0s
0x001100:
    if !pop goto 0x001138
0x001104:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x001138
0x00112C:
    call (instance_destroy[]:int32 )
0x001138:
    if !(== global.mnfight 5s) goto 0x001168
0x00114C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00116C
0x001168:
    push 0s
0x00116C:
    if !pop goto 0x0013C0
0x001170:
    if !(== self.saved 1s) goto 0x001230
0x001184:
    if !(< global.hp global.maxhp) goto 0x0011C0
0x00119C:
    global.hp = global.maxhp
    call (snd_play[]:int32 (var 155s))
0x0011C0:
    pushenv 1662s 0x0011D4
0x0011C8:
    call (instance_destroy[]:int32 )
0x0011D4:
    popenv 0x0011C8
0x0011D8:
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    call (snd_play[]:int32 (var 30s))
    self.saved = 2s
    stog.alarm[11s] = 3s
0x001230:
    if !(== self.saved 3s) goto 0x0012E0
0x001244:
    global.faceemotion = 9s
    global.msc = 0s
    global.typer = 39s
    push 1s
    stog.noanim* = (int32 self.part1)
    push 0s
    stog.spearalpha* = (int32 self.part1)
    stog.msg[0s] = "Well^1, some humans&are OK^1, I guess!/%%"
    call (scr_blcon_x[]:int32 self.y (+ self.x 80s))
    self.saved = 4s
0x0012E0:
    if !(== self.saved 4s) goto 0x001310
0x0012F4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001314
0x001310:
    push 0s
0x001314:
    if !pop goto 0x001380
0x001318:
    call (instance_create[]:int32 (var 557s) (var -10s) (var -10s))
    self.saved = 5s
    call (instance_create[]:int32 (var 557s) (var 0s) (var 0s))
    stog.alarm[11s] = 34s
0x001380:
    if !(== self.saved 6s) goto 0x0013C0
0x001394:
    global.battlegroup = 256s
    stog.flag[505s] = 1s
    call (room_restart[]:int32 )
0x0013C0:
    exit
