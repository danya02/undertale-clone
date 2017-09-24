0x000000:
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    self.part1 = 283s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
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
    self.ht = 100s
    self.wd = 100s
    self.mercymod = 999999
    self.con = 0s
    stog.flag[20s] = 0s
    pushenv 185s 0x000140
0x000134:
    call (instance_destroy[]:int32 )
0x000140:
    popenv 0x000134
0x000144:
    exit
