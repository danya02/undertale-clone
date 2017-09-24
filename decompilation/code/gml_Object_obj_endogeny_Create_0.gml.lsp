0x000000:
    pushenv 185s 0x000014
0x000008:
    call (instance_destroy[]:int32 )
0x000014:
    popenv 0x000008
0x000018:
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    self.part1 = 556s
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
    self.mercymod = -25s
    self.dogignore = 0s
    self.close = 0s
    self.pet = 0s
    self.sha = 0s
    self.shb = 0s
    self.mycommand = 90s
    self.turns = 0s
    self.dogsong = (caster_load[]:int32 (var "music/dogsong.ogg"))
    self.ht = 150s
    self.wd = 300s
0x00016C:
    exit
