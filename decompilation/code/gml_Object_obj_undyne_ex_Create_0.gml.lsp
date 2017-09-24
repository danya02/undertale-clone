0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    self.part1 = 281s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    self.hurtanim = 0s
    self.hurtsound = 43s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.image_speed = 0s
    self.mercymod = -9999999999L
    self.joketold = 0s
    self.sha = 0s
    self.siner = 0s
    pushenv 185s 0x00012C
0x000120:
    call (instance_destroy[]:int32 )
0x00012C:
    popenv 0x000120
0x000130:
    self.green = 0s
    self.darkify = 0s
    self.con = 0s
    self.greenlock = 0s
    self.songplayed = 0s
    self.revert = 0s
    self.lesson = -5s
    self.order = 1s
    self.rating = 9s
    self.prevhp = global.hp
    self.hitno = 0s
    self.damagecause = 0s
    self.borderspec = 0s
    self.ratingb = 0s
    self.defadjust = 0s
    self.died = 0s
    self.blconx = (+ self.x 180s)
    self.blcony = (+ self.y 10s)
    self.shakify = 0s
    self.uncancel = 0s
    self.hitfirst = 0s
    self.berserk = 0s
    self.mercied = 0s
    self.ht = 200s
    self.wd = 200s
    [obj_heart].sprite_index = 39s
    [obj_heart].movement = 3s
    self.orderb = 0s
    stog.tempvalue[13s] = 1s
0x0002B0:
    exit
