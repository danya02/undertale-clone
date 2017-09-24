0x000000:
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    self.part1 = 400s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y (+ self.x 100s))
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 96s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = 10s
    self.sha = 0s
    self.shb = 0s
    self.defuse = 0s
    self.con = 0s
    self.gotimer = 2s
    self.remtype = 0s
    self.bombtype = 1s
    stog.flag[288s] = 0s
    self.ht = 100s
    self.wd = 100s
0x000154:
    exit
