0x000000:
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    self.part1 = 1671s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    push 9s
    stog.face* = (int32 self.mypart1)
    push 0s
    stog.pause* = (int32 self.mypart1)
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 42s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -999999
    self.sha = 0s
    self.shb = 0s
    [obj_heart].sprite_index = 40s
    self.turns = 0s
    self.mercyno = 0s
    self.talkt = 0s
    self.saved = 0s
    self.totalmercy = 0s
    self.st = (instance_create[]:int32 (var 1662s) (+ self.y 8s) (+ self.x 54s))
    self.ht = 150s
    self.wd = 150s
0x0001B0:
    exit
