0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    pushenv 185s 0x000054
0x000048:
    call (instance_destroy[]:int32 )
0x000054:
    popenv 0x000048
0x000058:
    self.part1 = 274s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 43s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -9999s
    self.sha = 0s
    self.shb = 0s
    self.flex = 0s
    self.encourage = 0s
    self.criticize = 0s
    self.hug = 0s
    self.con = 0s
    self.blconx = (+ self.x 150s)
    self.blcony = (+ self.y 10s)
    global.faceemotion = 7s
    self.turnt = 0s
    self.ht = 150s
    self.wd = 150s
0x0001C0:
    exit
