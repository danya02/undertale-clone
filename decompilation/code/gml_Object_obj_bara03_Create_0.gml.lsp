0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    self.part1 = 318s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    push self.object_index
    stog.parent* = (int32 self.mypart1)
    push 367s
    stog.headpic* = (int32 self.mypart1)
    self.hurtanim = 0s
    self.hurtsound = 43s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -999s
    self.sha = 0s
    self.shb = 0s
    self.flex = 0s
    self.alphaup = 0s
    self.freshdeath = 0s
    self.turn0 = 0s
    self.armor = 255s
    self.con = 0s
    self.shirtless = 0s
    self.blconx = 165s
    self.blcony = 55s
    self.fuckyou = 0s
    self.ht = 200s
    self.wd = 200s
0x0001BC:
    exit
