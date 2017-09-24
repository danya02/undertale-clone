0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    self.part1 = 318s
    self.mypart1 = (instance_create[]:int32 self.part1 (+ self.y 32s) (+ self.x 28s))
    push self.object_index
    stog.parent* = (int32 self.mypart1)
    push 365s
    stog.headpic* = (int32 self.mypart1)
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
    self.alphaup = 0s
    self.freshdeath = 0s
    self.turn0 = 0s
    self.armor = 255s
    self.con = 0s
    self.shirtless = 0s
    self.blconx = 165s
    self.blcony = 55s
    self.ht = self.sprite_height
    self.wd = self.sprite_width
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0001F8
0x0001DC:
    stog.monsterdef[(int32 self.myself)] = -400s
0x0001F8:
    exit
