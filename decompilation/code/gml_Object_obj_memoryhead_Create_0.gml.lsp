0x000000:
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    self.part1 = 553s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 53s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -999s
    self.sha = 0s
    self.shb = 0s
    self.turns = 0s
    self.coherent = 0s
    stog.ds[0s] = (caster_load[]:int32 (var "music/dialup/dialup_0.ogg"))
    stog.ds[1s] = (caster_load[]:int32 (var "music/dialup/dialup_1.ogg"))
    stog.ds[2s] = (caster_load[]:int32 (var "music/dialup/dialup_2.ogg"))
    stog.ds[3s] = (caster_load[]:int32 (var "music/dialup/dialup_3.ogg"))
    stog.ds[4s] = (caster_load[]:int32 (var "music/dialup/dialup_4.ogg"))
    stog.ds[5s] = (caster_load[]:int32 (var "music/dialup/dialup_5.ogg"))
    self.ht = 100s
    self.wd = 100s
0x0001EC:
    exit
