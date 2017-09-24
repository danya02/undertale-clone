0x000000:
    call (scr_monstersetup[]:int32 )
    pushenv 185s 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    popenv 0x000014
0x000024:
    self.x = (- self.x 40s)
    self.image_speed = 0s
    self.part1 = 488s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y (+ self.x 40s))
    self.part2 = 489s
    self.mypart2 = (instance_create[]:int32 self.part2 (+ self.y 100s) (+ (+ self.x 76s) 40s))
    stog.tempvalue[10s] = 1s
    global.mercy = 2s
    [obj_sparebt].visible = 0s
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
    self.myself = 0s
    self.turns = 0s
    self.turnoff = 0s
    self.dont = 0s
    self.ttttt = 0s
    self.talk_x = 0s
    self.ht = 240s
    self.wd = 300s
0x0001F4:
    exit
