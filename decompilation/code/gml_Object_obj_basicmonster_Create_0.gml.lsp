0x000000:
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    self.part1 = 336s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
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
    self.ht = 100s
    self.wd = 100s
0x0000FC:
    exit
