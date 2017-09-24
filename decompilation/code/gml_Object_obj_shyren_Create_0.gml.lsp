0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    self.part1 = 260s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    self.agent = (instance_create[]:int32 (var 261s) (+ self.y 3s) self.x)
    self.hurtanim = 0s
    self.hurtsound = 43s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = 5s
    self.sha = 0s
    self.shb = 0s
    self.flex = 0s
    self.alphaup = 0s
    self.emotion = 0s
    self.encourage = 0s
    self.creep = 0s
    stog.badnote[0s] = (caster_load[]:int32 (var "music/shyren/badnote1.ogg"))
    stog.badnote[1s] = (caster_load[]:int32 (var "music/shyren/badnote2.ogg"))
    stog.badnote[2s] = (caster_load[]:int32 (var "music/shyren/badnote3.ogg"))
    stog.note[0s] = (caster_load[]:int32 (var "music/shyren/note1.ogg"))
    stog.note[1s] = (caster_load[]:int32 (var "music/shyren/note2.ogg"))
    stog.note[2s] = (caster_load[]:int32 (var "music/shyren/note3.ogg"))
    stog.note[3s] = (caster_load[]:int32 (var "music/shyren/note4.ogg"))
    stog.note[4s] = (caster_load[]:int32 (var "music/shyren/note5.ogg"))
    stog.note[5s] = (caster_load[]:int32 (var "music/shyren/note6.ogg"))
    stog.longnote[0s] = (caster_load[]:int32 (var "music/shyren/singF.ogg"))
    stog.longnote[1s] = (caster_load[]:int32 (var "music/shyren/singG.ogg"))
    self.ht = 100s
    self.wd = 100s
0x000308:
    exit
