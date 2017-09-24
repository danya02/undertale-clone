0x000000:
    pushenv 185s 0x000014
0x000008:
    call (instance_destroy[]:int32 )
0x000014:
    popenv 0x000008
0x000018:
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    self.part1 = 551s
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
    self.mercymod = -900s
    self.sha = 0s
    self.shb = 0s
    self.pitch = 0.5d
    stog.alarm[0s] = 160s
    self.siner = 0s
    self.sinepitcher = 1s
    self.xlaugh = 0s
    self.xheckle = 0s
    self.joke = 0s
    self.ht = 200s
    self.wd = 200s
0x000178:
    exit
