0x000000:
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    call (instance_create[]:int32 (var 570s) (var 0s) (var 0s))
    self.part1 = 569s
    self.mypart1 = (instance_create[]:int32 (var 569s) self.y self.x)
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 42s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -99999999999999L
    self.sha = 0s
    self.shb = 0s
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.turns = 0s
    stog.flag[500s] = 1s
    global.seriousbattle = 1s
    global.hope = 0s
    self.hoped = 0s
    self.dreamed = 0s
    self.say = 0s
    stog.flag[20s] = 0s
    push -5s
    self.turns = (- 504s:flag 3s)
    if !(< self.turns 0s) goto 0x0001D8
0x0001CC:
    self.turns = 0s
0x0001D8:
    self.trcon = 0s
    self.ht = 200s
    self.wd = 100s
0x0001FC:
    exit
