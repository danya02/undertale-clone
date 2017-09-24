0x000000:
    call (scr_monstersetup[]:int32 )
    push -5s
    self.dmg = (int32 self.myself):monsteratk
    self.image_speed = 0s
    self.part1 = 457s
    self.mypart1 = (instance_create[]:int32 self.part1 (+ self.y 40s) (+ self.x 100s))
    push self.dmg
    stog.dmg* = (int32 self.part1)
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 96s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -9999s
    self.sha = 0s
    self.shb = 0s
    self.ht = 100s
    self.wd = 200s
    self.myplot = 0s
    self.hitplot = 0s
    push -5s
    self.prevhp = (int32 self.myself):monsterhp
    self.goodot = 0s
    self.d_con = 0s
    self.p_con = 0s
    self.p_mode = 0s
    self.n_con = 0s
0x0001BC:
    exit
