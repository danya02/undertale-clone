0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    self.part1 = 239s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    self.hurtanim = 0s
    self.hurtsound = 43s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -25s
    self.dogignore = 0s
    self.close = 0s
    self.pet = 0s
    global.sp = 4s
    self.ht = 200s
    self.wd = 200s
0x000128:
    exit
