0x000000:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "BossMet") (var "Mettaton"))
    call (ini_close[]:int32 )
    self.ratings = (instance_create[]:int32 (var 402s) (var 10s) (var 20s))
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    if !(bool (instance_exists[]:int32 (var 408s))) goto 0x0000C4
0x0000A8:
    self.part1 = 408s
    self.mypart1 = 408s
    goto 0x0000F8
0x0000C4:
    self.part1 = 408s
    self.mypart1 = (instance_create[]:int32 self.part1 (var 116s) (var 240s))
0x0000F8:
    push 10s
    stog.depth* = (int32 self.mypart1)
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 115s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -100000
    self.sha = 0s
    self.shb = 0s
    [obj_heart].shot = 1s
    [obj_heart].sprite_index = 2094s
    self.con = 0s
    self.i = 0s
    if (<= 99s 0) goto 0x000240
0x0001F4:
    push 99s
    stog.failure[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0001F4
0x000240:
    push (- pop 1)
    pop
    global.attacktype = 26s
    stog.specialdam[0s] = 0s
    stog.specialdam[1s] = 0s
    stog.specialdam[2s] = 0s
    self.turns = 0s
    self.qualify = 0s
    self.ht = 200s
    self.wd = 200s
    pushenv 185s 0x0002D0
0x0002C4:
    call (instance_destroy[]:int32 )
0x0002D0:
    popenv 0x0002C4
0x0002D4:
    exit
