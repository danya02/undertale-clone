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
    stog.alarm[5s] = 320s
    stog.alarm[6s] = 2s
    self.talked = 1s
    global.heard = 0s
0x000230:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x00025C
0x000248:
    push (== self.talkify 0s)
    goto 0x000260
0x00025C:
    push 0s
0x000260:
    if !pop goto 0x0002D8
0x000264:
    push -1s
    if !(> 5s:alarm 5s) goto 0x0002BC
0x000280:
    push 758.x
    if !(== -5s 0s:idealborder) goto 0x0002BC
0x0002A0:
    push -1s
    push (< 6s:alarm 0s)
    goto 0x0002C0
0x0002BC:
    push 0s
0x0002C0:
    if !pop goto 0x0002D8
0x0002C4:
    stog.alarm[5s] = 2s
0x0002D8:
    if !(== self.talkify 1s) goto 0x000308
0x0002EC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00030C
0x000308:
    push 0s
0x00030C:
    if !pop goto 0x000394
0x000310:
    stog.alarm[5s] = -2s
    pushenv (int32 self.blconwd) 0x000340
0x000334:
    call (instance_destroy[]:int32 )
0x000340:
    popenv 0x000334
0x000344:
    pushenv (int32 self.blcon) 0x000360
0x000354:
    call (instance_destroy[]:int32 )
0x000360:
    popenv 0x000354
0x000364:
    self.talkify = 0s
    self.talked = 0s
    self.whatiheard = -1s
    global.mnfight = 2s
0x000394:
    push -5s
    if !(== (int32 self.myself):hurtanim 1s) goto 0x0003F8
0x0003B8:
    self.shudder = 16s
    stog.alarm[3s] = global.damagetimer
    stog.hurtanim[(int32 self.myself)] = 3s
0x0003F8:
    push -5s
    if !(== (int32 self.myself):hurtanim 2s) goto 0x00053C
0x00041C:
    push -5s
    stog.monsterhp[(- (int32 self.myself):monsterhp self.takedamage)] = (int32 self.myself)
    pushenv (int32 self.dmgwriter) 0x000470
0x00045C:
    stog.alarm[2s] = 15s
0x000470:
    popenv 0x00045C
0x000474:
    push -5s
    if !(>= (int32 self.myself):monsterhp 1s) goto 0x000504
0x000498:
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    stog.hurtanim[(int32 self.myself)] = 0s
    self.image_index = 0s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x00053C
0x000504:
    global.myfight = 0s
    global.mnfight = 99s
    self.killed = 1s
    call (event_user[]:int32 (var 3s))
0x00053C:
    push -5s
    if !(== (int32 self.myself):hurtanim 5s) goto 0x00060C
0x000560:
    global.damage = 0s
    call (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    pushenv 189s 0x0005D4
0x0005C0:
    stog.alarm[2s] = 30s
0x0005D4:
    popenv 0x0005C0
0x0005D8:
    global.myfight = 0s
    global.mnfight = 1s
    stog.hurtanim[(int32 self.myself)] = 0s
0x00060C:
    if !(== global.mnfight 2s) goto 0x007890
0x000620:
    if !(== self.attacked 0s) goto 0x0077C4
0x000634:
    global.turntimer = 4s
    global.firingrate = 15s
    if !(== self.truefight 0s) goto 0x000674
0x000660:
    push (>= self.mycommand 0s)
    goto 0x000678
0x000674:
    push 0s
0x000678:
    if !pop goto 0x000870
0x00067C:
    global.turntimer = 140s
    if !(== self.murder 1s) goto 0x0006A8
0x00069C:
    global.turntimer = 2s
0x0006A8:
    global.border = 5s
    self.bz = (round[]:int32 (random[]:int32 (var 20s)))
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder (+ 20s self.bz)) -5s (+ 1s:idealborder 10s))
    pushenv (int32 self.gen) 0x000744
0x000738:
    self.hspeed = -3s
0x000744:
    popenv 0x000738
0x000748:
    self.bz = (round[]:int32 (random[]:int32 (var 20s)))
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder (+ 20s self.bz)) -5s (+ 1s:idealborder 90s))
    pushenv (int32 self.gen) 0x0007D8
0x0007CC:
    self.hspeed = -3s
0x0007D8:
    popenv 0x0007CC
0x0007DC:
    self.bz = (round[]:int32 (random[]:int32 (var 20s)))
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder (+ 20s self.bz)) -5s (+ 1s:idealborder 170s))
    pushenv (int32 self.gen) 0x00086C
0x000860:
    self.hspeed = -3s
0x00086C:
    popenv 0x000860
0x000870:
    if !(== self.truefight 1s) goto 0x000890
0x000884:
    [obj_heart].sprite_index = 40s
0x000890:
    if !(== self.truefight 1s) goto 0x0008B8
0x0008A4:
    push (== self.fighto 15s)
    goto 0x0008BC
0x0008B8:
    push 0s
0x0008BC:
    if !pop goto 0x001B5C
0x0008C0:
    self.dontcancel = 4s
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
    global.turntimer = 1300s
    global.border = 5s
    push -5s
    self.k = (+ 1s:idealborder 1900s)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 10s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 60s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 160s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 210s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (- 0s:idealborder 360s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 360s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 540s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push -4s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 60s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 540s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -4s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 60s
    stog.oscmax* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (- 0s:idealborder 640s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push -4s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 60s
    stog.oscmax* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (+ 1s:idealborder 640s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -4s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 60s
    stog.oscmax* = (int32 self.gen)
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 740s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push -2s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 40s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 740s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -2s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 40s
    stog.oscmax* = (int32 self.gen)
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 890s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push -2s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 40s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 890s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -2s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 40s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 1090s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -1s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 30s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 1120s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -1s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 30s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 1150s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -1s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 30s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 1340s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push -1s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 30s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 1370s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push -1s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 30s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 1400s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push -1s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 30s
    stog.oscmax* = (int32 self.gen)
    push (var 636s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (+ 1s:idealborder 2000s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push (var 636s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 2240s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 72s
    stog.sprite_index* = (int32 self.gen)
    push (var 636s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 2280s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 73s
    stog.sprite_index* = (int32 self.gen)
    push (var 636s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 2500s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 74s
    stog.sprite_index* = (int32 self.gen)
    push (var 636s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 2540s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 75s
    stog.sprite_index* = (int32 self.gen)
    push (var 636s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 2220s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push 76s
    stog.sprite_index* = (int32 self.gen)
    push (var 637s)
    self.gen = (instance_create[]:int32 -5s (- 3s:idealborder 60s) (+ self.k 10s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 637s)
    self.gen = (instance_create[]:int32 -5s (- 3s:idealborder 60s) (+ self.k 70s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 637s)
    self.gen = (instance_create[]:int32 -5s (- 3s:idealborder 60s) (+ self.k 130s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 637s)
    self.gen = (instance_create[]:int32 -5s (- 3s:idealborder 60s) (+ self.k 190s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 637s)
    self.gen = (instance_create[]:int32 -5s (- 3s:idealborder 60s) (+ self.k 250s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 637s)
    self.gen = (instance_create[]:int32 -5s (- 3s:idealborder 60s) (+ self.k 310s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 637s)
    self.gen = (instance_create[]:int32 -5s (- 3s:idealborder 60s) (+ self.k 370s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 637s)
    self.gen = (instance_create[]:int32 -5s (- 3s:idealborder 60s) (+ self.k 430s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 637s)
    self.gen = (instance_create[]:int32 -5s (- 3s:idealborder 60s) (+ self.k 490s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 638s)
    self.gen = (instance_create[]:int32 -5s (- 3s:idealborder 240s) (+ self.k 550s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 970s))
    push -1s
    stog.hspeed* = (int32 self.gen)
    self.fighto = 16s
0x001B5C:
    if !(== self.truefight 1s) goto 0x001B98
0x001B70:
    if !(== self.fighto 14s) goto 0x001B98
0x001B84:
    push (> self.xfight 3s)
    goto 0x001B9C
0x001B98:
    push 0s
0x001B9C:
    if !pop goto 0x001C44
0x001BA0:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
    self.fighto = 15s
    self.xfight = 0s
    self.dontcancel = 1s
    global.border = 50s
    push (var 639s)
    push -5s
    call (instance_create[]:int32 (- 3s:idealborder 40s) -5s 1s:idealborder)
    stog.alarm[7s] = 80s
0x001C44:
    if !(== self.truefight 1s) goto 0x001C6C
0x001C58:
    push (== self.fighto 14s)
    goto 0x001C70
0x001C6C:
    push 0s
0x001C70:
    if !pop goto 0x00279C
0x001C74:
    if !(== self.truefight 1s) goto 0x001CAC
0x001C88:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
0x001CAC:
    self.xfight = (+ self.xfight 1s)
    if !(< self.mycommand 20s) goto 0x002268
0x001CD8:
    global.turntimer = 210s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 60s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (- 0s:idealborder 90s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (- 0s:idealborder 120s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (- 0s:idealborder 150s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (- 0s:idealborder 180s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (- 0s:idealborder 210s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 240s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 680s))
    push -6.4d
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (+ 1s:idealborder 720s))
    push -6.4d
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (+ 1s:idealborder 760s))
    push -6.4d
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 800s))
    push -6.4d
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (+ 1s:idealborder 840s))
    push -6.4d
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (+ 1s:idealborder 880s))
    push -6.4d
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 920s))
    push -6.4d
    stog.hspeed* = (int32 self.gen)
0x002268:
    if !(>= self.mycommand 20s) goto 0x002290
0x00227C:
    push (< self.mycommand 40s)
    goto 0x002294
0x002290:
    push 0s
0x002294:
    if !pop goto 0x002760
0x002298:
    global.turntimer = 200s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 10s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 90s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 0s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 170s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 250s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 0s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 330s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 410s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 0s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 490s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 570s))
    push -5s
    stog.hspeed* = (int32 self.gen)
    push 0s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 1150s))
    push -8s
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 1230s))
    push -8s
    stog.hspeed* = (int32 self.gen)
    push 0s
    stog.blue* = (int32 self.gen)
0x002760:
    if !(>= self.mycommand 40s) goto 0x00279C
0x002774:
    self.fighto = (+ (floor[]:int32 (random[]:int32 (var 11s))) 2s)
0x00279C:
    if !(== self.truefight 1s) goto 0x0027C4
0x0027B0:
    push (== self.fighto 13s)
    goto 0x0027C8
0x0027C4:
    push 0s
0x0027C8:
    if !pop goto 0x002E34
0x0027CC:
    self.fighto = (+ self.fighto 1s)
    if !(== self.truefight 1s) goto 0x00281C
0x0027F8:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
0x00281C:
    global.turntimer = 220s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 20s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -3s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 60s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 60s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -3s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 60s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 100s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -3s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 60s
    stog.oscmax* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 10s) -5s (+ 1s:idealborder 240s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -3s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 60s
    stog.oscmax* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 10s) -5s (+ 1s:idealborder 270s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -3s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 60s
    stog.oscmax* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 10s) -5s (+ 1s:idealborder 300s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -3s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 60s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 460s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (+ 1s:idealborder 460s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -3s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 40s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (+ 1s:idealborder 580s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 580s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -3s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 40s
    stog.oscmax* = (int32 self.gen)
0x002E34:
    if !(== self.truefight 1s) goto 0x002E5C
0x002E48:
    push (== self.fighto 12s)
    goto 0x002E60
0x002E5C:
    push 0s
0x002E60:
    if !pop goto 0x003444
0x002E64:
    self.fighto = (+ self.fighto 1s)
    if !(== self.truefight 1s) goto 0x002EB4
0x002E90:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
0x002EB4:
    global.turntimer = 200s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 60s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (- 0s:idealborder 87s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (- 0s:idealborder 114s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (- 0s:idealborder 141s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (- 0s:idealborder 168s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (- 0s:idealborder 195s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 222s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 600s))
    push -6.4d
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (+ 1s:idealborder 640s))
    push -6.4d
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (+ 1s:idealborder 680s))
    push -6.4d
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 720s))
    push -6.4d
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (+ 1s:idealborder 760s))
    push -6.4d
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (+ 1s:idealborder 800s))
    push -6.4d
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 840s))
    push -6.4d
    stog.hspeed* = (int32 self.gen)
0x003444:
    if !(== self.truefight 1s) goto 0x00346C
0x003458:
    push (== self.fighto 11s)
    goto 0x003470
0x00346C:
    push 0s
0x003470:
    if !pop goto 0x0039CC
0x003474:
    self.fighto = (+ self.fighto 1s)
    if !(== self.truefight 1s) goto 0x0034C4
0x0034A0:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
0x0034C4:
    global.turntimer = 250s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 60s))
    push -4.5d
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 140s))
    push -4.5d
    stog.hspeed* = (int32 self.gen)
    push 0s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 220s))
    push -4.5d
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 300s))
    push -4.5d
    stog.hspeed* = (int32 self.gen)
    push 0s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 380s))
    push -4.5d
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 460s))
    push -4.5d
    stog.hspeed* = (int32 self.gen)
    push 0s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 540s))
    push -4.5d
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 620s))
    push -4.5d
    stog.hspeed* = (int32 self.gen)
    push 0s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 1250s))
    push -7s
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 1330s))
    push -7s
    stog.hspeed* = (int32 self.gen)
    push 0s
    stog.blue* = (int32 self.gen)
0x0039CC:
    if !(== self.truefight 1s) goto 0x0039F4
0x0039E0:
    push (== self.fighto 10s)
    goto 0x0039F8
0x0039F4:
    push 0s
0x0039F8:
    if !pop goto 0x004164
0x0039FC:
    self.fighto = (+ self.fighto 1s)
    if !(== self.truefight 1s) goto 0x003A4C
0x003A28:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
0x003A4C:
    global.turntimer = 230s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 40s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (- 0s:idealborder 60s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 90s) -5s (- 0s:idealborder 60s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (- 0s:idealborder 80s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 100s) -5s (- 0s:idealborder 80s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (- 0s:idealborder 100s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 110s) -5s (- 0s:idealborder 100s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (- 0s:idealborder 280s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 100s) -5s (- 0s:idealborder 280s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (- 0s:idealborder 295s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 90s) -5s (- 0s:idealborder 295s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 310s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (- 0s:idealborder 310s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 600s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -3s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 60s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 620s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -3s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 60s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 640s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -3s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 60s
    stog.oscmax* = (int32 self.gen)
    [blt_topbone].speed = 4.2d
    [blt_sizebone].speed = 4.2d
0x004164:
    if !(== self.truefight 1s) goto 0x00418C
0x004178:
    push (== self.fighto 9s)
    goto 0x004190
0x00418C:
    push 0s
0x004190:
    if !pop goto 0x0048E4
0x004194:
    self.fighto = (+ self.fighto 1s)
    if !(== self.truefight 1s) goto 0x0041E4
0x0041C0:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
0x0041E4:
    global.turntimer = 355s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 60s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 220s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 100s) -5s (+ 1s:idealborder 220s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (+ 1s:idealborder 360s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 90s) -5s (+ 1s:idealborder 360s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (+ 1s:idealborder 500s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 500s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 640s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 70s) -5s (+ 1s:idealborder 640s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 10s) -5s (+ 1s:idealborder 780s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (+ 1s:idealborder 780s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 990s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -1s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 30s
    stog.oscmax* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 990s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -1s
    stog.osc* = (int32 self.gen)
    push -1s
    stog.oscmin* = (int32 self.gen)
    push 30s
    stog.oscmax* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (+ 1s:idealborder 1130s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -2s
    stog.osc* = (int32 self.gen)
    push -20s
    stog.oscmin* = (int32 self.gen)
    push 30s
    stog.oscmax* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 100s) -5s (+ 1s:idealborder 1130s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push -2s
    stog.osc* = (int32 self.gen)
    push -20s
    stog.oscmin* = (int32 self.gen)
    push 30s
    stog.oscmax* = (int32 self.gen)
    [blt_topbone].speed = 4.2d
    [blt_sizebone].speed = 4.2d
0x0048E4:
    if !(== self.truefight 1s) goto 0x00490C
0x0048F8:
    push (== self.fighto 8s)
    goto 0x004910
0x00490C:
    push 0s
0x004910:
    if !pop goto 0x004DC4
0x004914:
    self.fighto = (+ self.fighto 1s)
    if !(== self.truefight 1s) goto 0x004964
0x004940:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
0x004964:
    global.turntimer = 230s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 40s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 170s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 70s) -5s (+ 1s:idealborder 170s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 310s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 310s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (+ 1s:idealborder 460s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 90s) -5s (+ 1s:idealborder 460s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (+ 1s:idealborder 610s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 100s) -5s (+ 1s:idealborder 610s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 760s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 110s) -5s (+ 1s:idealborder 760s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    [blt_topbone].speed = 4.4d
    [blt_sizebone].speed = 4.4d
0x004DC4:
    if !(== self.truefight 1s) goto 0x004DEC
0x004DD8:
    push (== self.fighto 7s)
    goto 0x004DF0
0x004DEC:
    push 0s
0x004DF0:
    if !pop goto 0x0051A0
0x004DF4:
    self.fighto = (+ self.fighto 1s)
    if !(== self.truefight 1s) goto 0x004E44
0x004E20:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
0x004E44:
    global.turntimer = 150s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 10s))
    push 2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 110s))
    push 2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 210s))
    push 2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 310s))
    push 2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 10s))
    push -2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 110s))
    push -2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 210s))
    push -2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 310s))
    push -2s
    stog.hspeed* = (int32 self.gen)
    if !(> self.xfight 0s) goto 0x005188
0x005170:
    [blt_sizebone].speed = 4.4d
    goto 0x0051A0
0x005188:
    [blt_sizebone].speed = 4s
    global.turntimer = 150s
0x0051A0:
    if !(== self.truefight 1s) goto 0x0051C8
0x0051B4:
    push (== self.fighto 6s)
    goto 0x0051CC
0x0051C8:
    push 0s
0x0051CC:
    if !pop goto 0x005478
0x0051D0:
    self.fighto = (+ self.fighto 1s)
    if !(== self.truefight 1s) goto 0x005220
0x0051FC:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
0x005220:
    global.turntimer = 200s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 35s) -5s (- 0s:idealborder 10s))
    push 2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 35s) -5s (- 0s:idealborder 110s))
    push 2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 35s) -5s (- 0s:idealborder 210s))
    push 2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 35s) -5s (+ 1s:idealborder 10s))
    push -2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 35s) -5s (+ 1s:idealborder 110s))
    push -2s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 35s) -5s (+ 1s:idealborder 210s))
    push -2s
    stog.hspeed* = (int32 self.gen)
0x005478:
    if !(== self.truefight 1s) goto 0x0054A0
0x00548C:
    push (== self.fighto 5s)
    goto 0x0054A4
0x0054A0:
    push 0s
0x0054A4:
    if !pop goto 0x005C90
0x0054A8:
    self.fighto = (+ self.fighto 1s)
    if !(== self.truefight 1s) goto 0x0054F8
0x0054D4:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
0x0054F8:
    global.turntimer = 330s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 40s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 45s) -5s (+ 1s:idealborder 70s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 100s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 45s) -5s (+ 1s:idealborder 130s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 160s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 15s) -5s (+ 1s:idealborder 190s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 15s) -5s (+ 1s:idealborder 300s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 330s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 45s) -5s (+ 1s:idealborder 360s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 390s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 700s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 45s) -5s (+ 1s:idealborder 730s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 760s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 45s) -5s (+ 1s:idealborder 790s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 820s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 15s) -5s (+ 1s:idealborder 850s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 15s) -5s (+ 1s:idealborder 970s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 1000s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 45s) -5s (+ 1s:idealborder 1030s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 1060s))
    push -4s
    stog.hspeed* = (int32 self.gen)
0x005C90:
    if !(== self.truefight 1s) goto 0x005CB8
0x005CA4:
    push (== self.fighto 4s)
    goto 0x005CBC
0x005CB8:
    push 0s
0x005CBC:
    if !pop goto 0x006280
0x005CC0:
    self.fighto = (+ self.fighto 1s)
    if !(== self.truefight 1s) goto 0x005D10
0x005CEC:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
0x005D10:
    global.turntimer = 240s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 40s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (- 0s:idealborder 40s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 60s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (- 0s:idealborder 60s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (- 0s:idealborder 170s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 110s) -5s (- 0s:idealborder 170s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (- 0s:idealborder 190s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 110s) -5s (- 0s:idealborder 190s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 90s) -5s (- 0s:idealborder 320s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 480s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 700s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (+ 1s:idealborder 700s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 700s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (- 0s:idealborder 700s))
    push 4s
    stog.hspeed* = (int32 self.gen)
0x006280:
    if !(== self.truefight 1s) goto 0x0062A8
0x006294:
    push (== self.fighto 3s)
    goto 0x0062AC
0x0062A8:
    push 0s
0x0062AC:
    if !pop goto 0x00676C
0x0062B0:
    self.fighto = (+ self.fighto 1s)
    if !(== self.truefight 1s) goto 0x006300
0x0062DC:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
0x006300:
    global.turntimer = 150s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (- 0s:idealborder 40s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 90s) -5s (- 0s:idealborder 40s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (+ 1s:idealborder 140s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 260s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 280s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (- 0s:idealborder 300s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (- 0s:idealborder 320s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (- 0s:idealborder 340s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (- 0s:idealborder 360s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (- 0s:idealborder 380s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 400s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    if !(> self.xfight 0s) goto 0x00676C
0x00674C:
    pushenv 651s 0x006768
0x006754:
    self.speed = 4.5d
0x006768:
    popenv 0x006754
0x00676C:
    if !(== self.truefight 1s) goto 0x006794
0x006780:
    push (== self.fighto 2s)
    goto 0x006798
0x006794:
    push 0s
0x006798:
    if !pop goto 0x006A3C
0x00679C:
    self.fighto = (+ self.fighto 1s)
    if !(== self.truefight 1s) goto 0x0067EC
0x0067C8:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
0x0067EC:
    global.turntimer = 240s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (- 0s:idealborder 30s))
    push 3.5d
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (- 0s:idealborder 160s))
    push 3.5d
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (- 0s:idealborder 290s))
    push 3.5d
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 80s) -5s (- 0s:idealborder 390s))
    push 3.5d
    stog.hspeed* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    if !(> self.xfight 0s) goto 0x0069DC
0x0069D0:
    [blt_sizebone].speed = 4s
0x0069DC:
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 30s) -5s (+ 1s:idealborder 1120s))
    push -6s
    stog.hspeed* = (int32 self.gen)
0x006A3C:
    if !(== self.truefight 1s) goto 0x006A64
0x006A50:
    push (== self.fighto 1s)
    goto 0x006A68
0x006A64:
    push 0s
0x006A68:
    if !pop goto 0x006D9C
0x006A6C:
    self.fighto = (+ self.fighto 1s)
    if !(== self.truefight 1s) goto 0x006ABC
0x006A98:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
0x006ABC:
    global.turntimer = 220s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (- 0s:idealborder 10s))
    push 3s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (- 0s:idealborder 80s))
    push 3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 230s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 310s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 390s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 50s) -5s (- 0s:idealborder 490s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    push (var 652s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (- 0s:idealborder 580s))
    push 4s
    stog.hspeed* = (int32 self.gen)
    if !(> self.xfight 0s) goto 0x006D9C
0x006D88:
    [blt_sizebone].speed = 4.5d
0x006D9C:
    if !(== self.truefight 1s) goto 0x006DC4
0x006DB0:
    push (== self.fighto 0s)
    goto 0x006DC8
0x006DC4:
    push 0s
0x006DC8:
    if !pop goto 0x0070D4
0x006DCC:
    self.fighto = (+ self.fighto 1s)
    if !(== self.truefight 1s) goto 0x006E1C
0x006DF8:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
0x006E1C:
    global.turntimer = 300s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 20s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (+ 1s:idealborder 150s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (+ 1s:idealborder 280s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (+ 1s:idealborder 410s))
    push -4s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 390s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 510s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 60s) -5s (+ 1s:idealborder 630s))
    push -3s
    stog.hspeed* = (int32 self.gen)
0x0070D4:
    if !(== self.truefight 1s) goto 0x0070FC
0x0070E8:
    push (== self.fighto -1s)
    goto 0x007100
0x0070FC:
    push 0s
0x007100:
    if !pop goto 0x007298
0x007104:
    self.fighto = (+ self.fighto 1s)
    if !(== self.truefight 1s) goto 0x007160
0x007130:
    [obj_heart].movement = 2s
    [obj_heart].vspeed = -1s
    [obj_heart].jumpstage = 2s
    [obj_heart].sprite_index = 40s
0x007160:
    global.turntimer = 200s
    global.border = 5s
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 30s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 200s))
    push -3s
    stog.hspeed* = (int32 self.gen)
    push (var 651s)
    push -5s
    self.gen = (instance_create[]:int32 (- 3s:idealborder 40s) -5s (+ 1s:idealborder 370s))
    push -3s
    stog.hspeed* = (int32 self.gen)
0x007298:
    if !(== self.mycommand -1s) goto 0x0072EC
0x0072AC:
    global.border = 5s
    global.turntimer = 300s
    self.gen = (instance_create[]:int32 (var 685s) self.y self.x)
0x0072EC:
    if !(bool (instance_exists[]:int32 self.gen)) goto 0x007320
0x007304:
    push self.myself
    stog.myself* = (int32 self.gen)
0x007320:
    self.hearthp = global.hp
    if !(>= self.mycommand 0s) goto 0x00735C
0x007344:
    stog.msg[0s] = "* Papyrus is preparing a bone&  attack."
0x00735C:
    if !(> self.mycommand 15s) goto 0x007388
0x007370:
    stog.msg[0s] = "* Papyrus prepares a non-bone&  attack then spends a minute&  fixing his mistake."
0x007388:
    if !(>= self.mycommand 20s) goto 0x0073B4
0x00739C:
    stog.msg[0s] = "* Papyrus is cackling."
0x0073B4:
    if !(>= self.mycommand 30s) goto 0x0073E0
0x0073C8:
    stog.msg[0s] = "* Papyrus whispers \"Nyeh heh&  heh!\""
0x0073E0:
    if !(>= self.mycommand 40s) goto 0x00740C
0x0073F4:
    stog.msg[0s] = "* Papyrus is rattling his bones."
0x00740C:
    if !(>= self.mycommand 60s) goto 0x007438
0x007420:
    stog.msg[0s] = "* Papyrus is trying hard to play&  it cool."
0x007438:
    if !(>= self.mycommand 80s) goto 0x007464
0x00744C:
    stog.msg[0s] = "* Papyrus is considering his&  options."
0x007464:
    if !(>= self.mycommand 90s) goto 0x007490
0x007478:
    stog.msg[0s] = "* Smells like bones."
0x007490:
    if !(>= self.mycommand 97s) goto 0x0074BC
0x0074A4:
    stog.msg[0s] = "* Papyrus remembered a bad joke&  Sans told and is frowning."
0x0074BC:
    push -5s
    if !(== 66s:flag 1s) goto 0x0074F0
0x0074D8:
    self.flirt2 = (+ self.flirt2 1s)
0x0074F0:
    if !(> self.flirt2 0s) goto 0x007518
0x007504:
    push (< self.flirt2 11s)
    goto 0x00751C
0x007518:
    push 0s
0x00751C:
    if !pop goto 0x007704
0x007520:
    if !(== self.flirt2 1s) goto 0x00754C
0x007534:
    stog.msg[0s] = "* Papyrus is thinking about&  what to wear for his date."
0x00754C:
    if !(== self.flirt2 2s) goto 0x007578
0x007560:
    stog.msg[0s] = "* Papyrus is thinking about&  what to cook for his date."
0x007578:
    if !(== self.flirt2 3s) goto 0x0075A4
0x00758C:
    stog.msg[0s] = "* Papyrus dabs some Bone&  Cologne behind his ear."
0x0075A4:
    if !(== self.flirt2 4s) goto 0x0075D0
0x0075B8:
    stog.msg[0s] = "* Papyrus dabs marinara sauce&  behind his ear."
0x0075D0:
    if !(== self.flirt2 5s) goto 0x0075FC
0x0075E4:
    stog.msg[0s] = "* Papyrus dabs MTT-Brand Bishie&  Cream behind his ear."
0x0075FC:
    if !(== self.flirt2 6s) goto 0x007628
0x007610:
    stog.msg[0s] = "* Papyrus dabs MTT-Brand Anime&  Powder behind his ear."
0x007628:
    if !(== self.flirt2 7s) goto 0x007654
0x00763C:
    stog.msg[0s] = "* Papyrus dabs MTT-Brand Cute&  Juice behind his ear."
0x007654:
    if !(== self.flirt2 8s) goto 0x007680
0x007668:
    stog.msg[0s] = "* Papyrus dabs MTT-Brand&  Attraction Slime behind his&  ear."
0x007680:
    if !(== self.flirt2 9s) goto 0x0076AC
0x007694:
    stog.msg[0s] = "* Papyrus dabs MTT-Brand&  Beauty Yogurt behind his&  ear."
0x0076AC:
    if !(== self.flirt2 10s) goto 0x0076D8
0x0076C0:
    stog.msg[0s] = "* Papyrus realizes he doesn't&  have ears."
0x0076D8:
    if !(== self.flirt2 11s) goto 0x007704
0x0076EC:
    stog.msg[0s] = "* Papyrus has lumps of weird-&  smelling ointment on his&  head."
0x007704:
    push -5s
    if !(< (int32 self.myself):monsterhp 100s) goto 0x007740
0x007728:
    stog.msg[0s] = "* Papyrus is at the edge of&  defeat."
0x007740:
    if !(>= self.mercymod 8000s) goto 0x00776C
0x007754:
    stog.msg[0s] = "* Papyrus is sparing you."
0x00776C:
    if !(== self.murder 1s) goto 0x007798
0x007780:
    stog.msg[0s] = "* Papyrus is sparing you."
0x007798:
    self.attacked = 1s
    if !(> self.xfight 0s) goto 0x0077C4
0x0077B8:
    self.fighto = 14s
0x0077C4:
    if !(< global.turntimer 3s) goto 0x0077EC
0x0077D8:
    push (== self.dontcancel 0s)
    goto 0x0077F0
0x0077EC:
    push 0s
0x0077F0:
    if !pop goto 0x007840
0x0077F4:
    self.hearthp2 = global.hp
    [obj_heart].vspeed = 0s
    [obj_heart].jumpstage = 0s
    global.turntimer = -1s
    global.mnfight = 3s
    [obj_heart].movement = 0s
0x007840:
    if !(< global.turntimer 3s) goto 0x007868
0x007854:
    push (== self.dontcancel 4s)
    goto 0x00786C
0x007868:
    push 0s
0x00786C:
    if !pop goto 0x007890
0x007870:
    stog.alarm[8s] = 2s
    self.dontcancel = 5s
0x007890:
    if !(== global.myfight 2s) goto 0x0080E4
0x0078A4:
    if !(!= self.whatiheard -1s) goto 0x0080E4
0x0078B8:
    if !(== global.heard 0s) goto 0x0080E4
0x0078CC:
    if !(== self.whatiheard 0s) goto 0x007994
0x0078E0:
    global.msc = 0s
    stog.msg[0s] = "* PAPYRUS - ATK 20 DEF 20&* He likes to say:&  \"Nyeh heh heh!\"/^"
    if !(== self.murder 1s) goto 0x007930
0x007918:
    stog.msg[0s] = "* PAPYRUS - ATK 3 DEF 3&* Forgettable./^"
0x007930:
    [OBJ_WRITER].halt = 3s
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x007990
0x007984:
    self.halt = 0s
0x007990:
    popenv 0x007984
0x007994:
    if !(== self.whatiheard 1s) goto 0x007C14
0x0079A8:
    global.msc = 0s
    pushenv 782s 0x0079C8
0x0079BC:
    call (instance_destroy[]:int32 )
0x0079C8:
    popenv 0x0079BC
0x0079CC:
    if !(<= self.insult 2s) goto 0x0079F4
0x0079E0:
    push (== self.truefight 0s)
    goto 0x0079F8
0x0079F4:
    push 0s
0x0079F8:
    if !pop goto 0x007B54
0x0079FC:
    stog.msg[0s] = " HOW SELFLESS.../"
    stog.msg[1s] = " YOU WANT ME TO& FEEL BETTER& ABOUT FIGHTING& YOU.../%%"
    if !(== self.insult 1s) goto 0x007A58
0x007A40:
    stog.msg[0s] = " THERE'S NO NEED& TO LIE TO& YOURSELF!!!/%%"
0x007A58:
    if !(> self.insult 1s) goto 0x007A84
0x007A6C:
    stog.msg[0s] = " DON'T...!/%%"
0x007A84:
    if !(<= self.insult 2s) goto 0x007B50
0x007A98:
    self.insult = (+ self.insult 1s)
    self.flirto = 2s
    global.typer = 22s
    self.sblcon = (instance_create[]:int32 (var 187s) (+ self.y 52s) (+ self.x 145s))
    self.sblconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.sblcon):y 10s) (+ (int32 self.sblcon):x 15s))
0x007B50:
    goto 0x007C14
0x007B54:
    global.msc = 0s
    stog.msg[0s] = "* You INSULT^1, but to no avail^1.&* Seems ACTing won't escalate&  this battle.../^"
    if !(> self.truefight 0s) goto 0x007BA4
0x007B8C:
    stog.msg[0s] = "* Papyrus is too busy FIGHTing&  to accept your insult./^"
0x007BA4:
    pushenv 782s 0x007BB8
0x007BAC:
    self.halt = 3s
0x007BB8:
    popenv 0x007BAC
0x007BBC:
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x007C10
0x007C04:
    self.halt = 0s
0x007C10:
    popenv 0x007C04
0x007C14:
    if !(== self.whatiheard 3s) goto 0x007EC8
0x007C28:
    self.hotcha = (+ self.hotcha 1s)
    pushenv 782s 0x007C54
0x007C48:
    self.halt = 3s
0x007C54:
    popenv 0x007C48
0x007C58:
    if !(<= self.hotcha 2s) goto 0x007C80
0x007C6C:
    push (== self.truefight 0s)
    goto 0x007C84
0x007C80:
    push 0s
0x007C84:
    if !pop goto 0x007E08
0x007C88:
    stog.msg[0s] = " WHAT!^1?& FL-FLIRTING!?/"
    stog.msg[1s] = "\\X SO YOU FINALLY& REVEAL YOUR\\R & ULTIMATE FEELINGS\\X!/"
    stog.msg[2s] = " W-WELL^1!& I'M A SKELETON& WITH VERY HIGH& STANDARDS!!!/%%"
    self.flirto = 1s
    if !(== self.hotcha 2s) goto 0x007D14
0x007CF0:
    stog.msg[0s] = " OH NO!!!/%%"
    self.flirto = 2s
0x007D14:
    if !(> self.hotcha 2s) goto 0x007D5C
0x007D28:
    self.flirto = 0s
    self.whatiheard = 3s
    global.myfight = 0s
    global.mnfight = 1s
    goto 0x007E04
0x007D5C:
    stog.flag[66s] = 1s
    global.typer = 22s
    self.sblcon = (instance_create[]:int32 (var 187s) (+ self.y 52s) (+ self.x 145s))
    self.sblconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.sblcon):y 10s) (+ (int32 self.sblcon):x 15s))
0x007E04:
    goto 0x007EC8
0x007E08:
    global.msc = 0s
    stog.msg[0s] = "* You FLIRT^1, but to no avail^1.&* Seems ACTing won't escalate&  this battle.../^"
    if !(> self.truefight 0s) goto 0x007E58
0x007E40:
    stog.msg[0s] = "* Papyrus is too busy FIGHTing&  to flirt back./^"
0x007E58:
    pushenv 782s 0x007E6C
0x007E60:
    self.halt = 3s
0x007E6C:
    popenv 0x007E60
0x007E70:
    push (var 782s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x007EC4
0x007EB8:
    self.halt = 0s
0x007EC4:
    popenv 0x007EB8
0x007EC8:
    if !(== self.whatiheard 6s) goto 0x007FC4
0x007EDC:
    pushenv 782s 0x007EF0
0x007EE4:
    call (instance_destroy[]:int32 )
0x007EF0:
    popenv 0x007EE4
0x007EF4:
    stog.msg[0s] = " OH NO!!^1! YOU'RE& MEETING ALL MY& STANDARDS!!!/"
    stog.msg[1s] = " I GUESS THIS MEANS& I HAVE TO GO ON A& DATE WITH YOU...?/%%"
    self.flirto = 2s
    global.typer = 22s
    self.sblcon = (instance_create[]:int32 (var 187s) (+ self.y 52s) (+ self.x 145s))
    self.sblconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.sblcon):y 10s) (+ (int32 self.sblcon):x 15s))
0x007FC4:
    global.heard = 1s
    if !(== self.whatiheard 7s) goto 0x0080E4
0x007FE4:
    pushenv 782s 0x007FF8
0x007FEC:
    call (instance_destroy[]:int32 )
0x007FF8:
    popenv 0x007FEC
0x007FFC:
    stog.msg[0s] = " OH NO!!^1!& THAT HUMILITY..^1.& IT REMINDS ME OF,/"
    stog.msg[1s] = " MYSELF!!!/"
    stog.msg[2s] = " YOU'RE MEETING ALL&  MY STANDARDS!!!/%%"
    self.flirto = 2s
    global.typer = 22s
    self.sblcon = (instance_create[]:int32 (var 187s) (+ self.y 52s) (+ self.x 145s))
    self.sblconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.sblcon):y 10s) (+ (int32 self.sblcon):x 15s))
0x0080E4:
    if !(== global.myfight 4s) goto 0x008148
0x0080F8:
    if !(== global.mercyuse 0s) goto 0x008148
0x00810C:
    call (script_execute[]:int32 (var 163s))
    if !(< self.mercy 0s) goto 0x008148
0x008134:
    call (event_user[]:int32 (var 2s))
0x008148:
    if !(> self.flirto 0s) goto 0x0082A8
0x00815C:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0082A8
0x008178:
    if !(== self.flirto 1s) goto 0x008264
0x00818C:
    global.msc = 0s
    global.typer = 1s
    global.myfight = 3s
    global.bmenuno = 6s
    stog.msg[0s] = "   I can           I have zero&   make            redeeming&   spaghetti       qualities\\C"
    pushenv 782s 0x0081E8
0x0081DC:
    self.halt = 3s
0x0081E8:
    popenv 0x0081DC
0x0081EC:
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x008240
0x008234:
    self.halt = 0s
0x008240:
    popenv 0x008234
0x008244:
    pushenv (int32 self.sblcon) 0x008260
0x008254:
    call (instance_destroy[]:int32 )
0x008260:
    popenv 0x008254
0x008264:
    if !(== self.flirto 2s) goto 0x00829C
0x008278:
    global.myfight = 0s
    global.mnfight = 1s
    self.stalk = 1s
0x00829C:
    self.flirto = 0s
0x0082A8:
    exit
