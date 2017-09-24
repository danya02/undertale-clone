0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.hurtanim = 0s
    self.mercymod = 0s
    call (instance_create[]:int32 (var 221s) self.y self.x)
    call (instance_create[]:int32 (var 222s) self.y self.x)
    self.hurtsound = 51s
    self.hurtsprite = 200s
    self.normalsprite = self.sprite_index
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.outside = 0s
    self.image_speed = 0.1d
    self.ht = 200s
    self.wd = 100s
0x00013C:
    exit
