0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    pushenv 185s 0x000054
0x000048:
    call (instance_destroy[]:int32 )
0x000054:
    popenv 0x000048
0x000058:
    self.gen = 4s
    self.part1 = 231s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    self.hurtanim = 0s
    self.hurtsound = 43s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = 0s
    self.insult = 0s
    self.close = 0s
    self.dogignore = 0s
    self.pet = 0s
    global.vaporspeed = 0s
    self.hotcha = 0s
    self.flirto = 0s
    self.flirt2 = 0s
    self.stalk = 0s
    self.conversation = 0s
    push -5s
    self.prevhp = (int32 self.myself):monsterhp
    self.talkify = 0s
    global.batmusic2 = (caster_load[]:int32 (var "music/papyrusboss.ogg"))
    self.truefight = 0s
    self.fighto = -1s
    self.xfight = 0s
    self.dontcancel = 0s
    self.bonetalk = 0s
    self.bonetalk2 = 0s
    self.bonetalk3 = 0s
    self.bonetalk4 = 0s
    self.hearthp = global.hp
    self.hearthp2 = global.hp
    self.xxtalk = 0s
    push -5s
    if !(< 67s:flag 0s) goto 0x000284
0x00026C:
    self.truefight = 1s
    self.conversation = 1s
0x000284:
    push -5s
    if !(== 67s:flag -2s) goto 0x0002B4
0x0002A0:
    stog.flag[67s] = -3s
0x0002B4:
    push -5s
    if !(== 67s:flag -1s) goto 0x0002E4
0x0002D0:
    stog.flag[67s] = -2s
0x0002E4:
    push -5s
    if !(== 67s:flag 0s) goto 0x000314
0x000300:
    stog.flag[67s] = -1s
0x000314:
    stog.flag[68s] = 1s
    self.ht = self.sprite_height
    self.wd = self.sprite_width
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x0003DC
0x000368:
    self.murder = 1s
    stog.flag[290s] = 1s
    stog.monsterdef[(int32 self.myself)] = -20000s
    self.dontcancel = 0s
    stog.alarm[8s] = -2s
    self.bonetalk3 = 2s
    self.mercymod = 8000s
0x0003DC:
    self.blcon = 8589458454L
    self.blconwd = 584589485934L
0x000404:
    exit
