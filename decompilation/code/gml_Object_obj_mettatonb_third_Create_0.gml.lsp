0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    self.part1 = 302s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    self.hurtanim = 0s
    self.hurtsound = 43s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -99999
    self.sha = 0s
    self.shb = 0s
    self.flex = 0s
    self.alphaup = 0s
    self.hurtlast = 0s
    self.skip = 0s
    self.right = 0s
    if !(bool (instance_exists[]:int32 (var 185s))) goto 0x000168
0x000150:
    pushenv 185s 0x000164
0x000158:
    call (instance_destroy[]:int32 )
0x000164:
    popenv 0x000158
0x000168:
    self.x = (- self.x 100s)
    self.y = (- self.y 100s)
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.hurta = 0s
    self.turns = 0s
    self.con = 0s
    [obj_heart].shot = 1s
    [obj_heart].sprite_index = 2094s
    self.writer = 9s
    self.i = 0s
    if (<= 99s 0) goto 0x000268
0x00021C:
    push 99s
    stog.failure[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x00021C
0x000268:
    push (- pop 1)
    pop
    global.attacktype = 26s
    stog.specialdam[0s] = 0s
    stog.specialdam[1s] = 0s
    stog.specialdam[2s] = 0s
    self.con_2 = 0s
    self.ht = 200s
    self.wd = 200s
0x0002D8:
    exit
