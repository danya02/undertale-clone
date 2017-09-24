0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.hurtanim = 0s
    self.mercymod = 0s
    call (instance_create[]:int32 (var 223s) self.y self.x)
    self.hurtsound = 51s
    self.hurtsprite = 195s
    self.normalsprite = self.sprite_index
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.outside = 0s
    self.image_speed = 0.1d
0x000100:
    exit
