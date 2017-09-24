0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    self.part1 = 379s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y (+ self.x 60s))
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 39s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = 25s
    self.sha = 0s
    self.shb = 0s
    self.flex = 0s
    self.encourage = 0s
    self.criticize = 0s
    self.hug = 0s
    self.sleepy = 0s
    self.asleep = 0s
    self.talk = 0s
    self.ht = self.sprite_height
    self.wd = self.sprite_width
0x000188:
    exit
