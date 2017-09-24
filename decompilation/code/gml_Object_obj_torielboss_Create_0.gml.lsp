0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.tt = 0s
    self.hurtanim = 0s
    self.hurtsound = 51s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    self.iwilltalk = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.outside = 0s
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.mercymod = -20000s
    self.image_speed = 0s
    global.seriousbattle = 1s
    [obj_battlebg].image_index = 1s
    push -5s
    self.hplastturn = (int32 self.myself):monsterhp
    self.conversation = 0s
    self.destroyed = 0s
    self.ht = self.sprite_height
    self.wd = self.sprite_width
    if !(>= (scr_murderlv[]:int32 ) 1s) goto 0x000188
0x00016C:
    stog.monsterdef[(int32 self.myself)] = -9999s
0x000188:
    exit
