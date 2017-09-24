0x000000:
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    self.part1 = 596s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y (+ self.x 20s))
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 43s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -40s
    self.sha = 0s
    self.shb = 0s
    self.ht = 100s
    self.wd = 100s
    self.pop = (scr_monstersum[]:int32 )
    if !(== self.pop 1s) goto 0x000164
0x000128:
    self.mercymod = 200s
    if !(bool (instance_exists[]:int32 self.mypart1)) goto 0x000164
0x00014C:
    push 1s
    stog.sad* = (int32 self.mypart1)
0x000164:
    self.sad = 0s
0x000170:
    exit
