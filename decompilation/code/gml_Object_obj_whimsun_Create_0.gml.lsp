0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0.1d
    self.hurtanim = 0s
    self.hurtsound = 51s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.outside = 0s
    self.mercymod = 99s
    call (path_start[]:int32 (var 0s) (var 1s) (var 0.5d) (var 42s))
    self.ht = 100s
    self.wd = 100s
0x00010C:
    exit
