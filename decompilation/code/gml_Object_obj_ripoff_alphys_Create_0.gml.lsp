0x000000:
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    self.part1 = 176s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    push 0s
    stog.pause* = (int32 self.mypart1)
    pushenv (int32 self.mypart1) 0x000080
0x000074:
    self.depth = 9s
0x000080:
    popenv 0x000074
0x000084:
    global.faceemotion = 13s
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 42s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = 10s
    self.sha = 0s
    self.shb = 0s
    [obj_heart].shot = 1s
    [obj_heart].sprite_index = 2094s
    self.turns = 0s
    self.i = 0s
    if (<= 99s 0) goto 0x0001BC
0x000170:
    push 99s
    stog.failure[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000170
0x0001BC:
    push (- pop 1)
    pop
    stog.specialdam[0s] = 0s
    stog.specialdam[1s] = 0s
    stog.specialdam[2s] = 0s
    self.mercyno = 0s
    self.talkt = 0s
    self.saved = 0s
    self.st = (instance_create[]:int32 (var 1662s) (+ self.y 35s) (+ self.x 30s))
    pushenv (int32 self.st) 0x000274
0x000268:
    self.depth = 8s
0x000274:
    popenv 0x000268
0x000278:
    self.ht = 100s
    self.wd = 150s
0x000290:
    exit
