0x000000:
    stog.flag[282s] = 1s
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    self.part1 = 227s
    self.mypart1 = (instance_create[]:int32 self.part1 (+ self.y 24s) (+ self.x 72s))
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 38s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -50s
    self.sha = 0s
    self.shb = 0s
    self.ht = 200s
    self.wd = 240s
    self.applaud = 0s
    self.nothing = 0s
    self.boo = 0s
0x000144:
    exit
