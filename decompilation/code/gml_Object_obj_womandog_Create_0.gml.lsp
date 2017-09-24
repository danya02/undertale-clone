0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    self.part1 = 242s
    self.part2 = 244s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    self.mypart2 = (instance_create[]:int32 self.part2 self.y self.x)
    self.hurtanim = 0s
    self.hurtsound = 43s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -999s
    self.joketold = 0s
    self.smell = 0s
    self.ht = self.sprite_height
    self.wd = self.sprite_width
0x00014C:
    exit
