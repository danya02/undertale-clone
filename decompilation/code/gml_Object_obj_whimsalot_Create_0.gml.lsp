0x000000:
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    self.part1 = 396s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y (+ self.x 21s))
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
    self.greentime = 0s
    self.impress = 0s
    self.ht = self.sprite_height
    self.wd = self.sprite_width
0x000124:
    exit
