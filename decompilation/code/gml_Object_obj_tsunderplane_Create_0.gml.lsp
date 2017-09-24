0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    self.part1 = 329s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    push self.id
    stog.parent* = (int32 self.mypart1)
    stog.alarm[9s] = 10s
    self.hurtanim = 0s
    self.hurtsound = 43s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = 5s
    self.sha = 0s
    self.shb = 0s
    self.flex = 0s
    self.graze = 0s
    self.ht = 200s
    self.wd = 200s
0x000158:
    exit
