0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    self.mypart1 = (instance_create[]:int32 (var 215s) self.y self.x)
    self.mypart2 = (instance_create[]:int32 (var 214s) self.y self.x)
    self.hurtanim = 0s
    self.hurtsound = 43s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = 3s
    stog.flag[30s] = 1s
    self.ht = 100s
    self.wd = 100s
0x000128:
    exit
