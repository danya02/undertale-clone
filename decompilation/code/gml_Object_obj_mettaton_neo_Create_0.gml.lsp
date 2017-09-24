0x000000:
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    self.part1 = 451s
    self.mypart1 = (instance_create[]:int32 self.part1 (+ self.y 50s) (+ self.x 104s))
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 96s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -999999
    self.sha = 0s
    self.shb = 0s
    self.ht = 240s
    self.wd = 200s
    pushenv 185s 0x000124
0x000118:
    call (instance_destroy[]:int32 )
0x000124:
    popenv 0x000118
0x000128:
    self.con = 0s
0x000134:
    exit
