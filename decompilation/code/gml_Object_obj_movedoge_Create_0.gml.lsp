0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    self.part1 = 248s
    self.part2 = 251s
    self.part3 = 250s
    self.part4 = 249s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    self.mypart2 = (instance_create[]:int32 self.part2 self.y self.x)
    self.mypart3 = (instance_create[]:int32 self.part3 self.y self.x)
    self.mypart4 = (instance_create[]:int32 self.part4 self.y self.x)
    self.hurtanim = 0s
    self.hurtsound = 43s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -15s
    self.excited = -1s
    self.pets = 0s
    self.ht = 150s
    self.wd = 100s
0x0001AC:
    exit
