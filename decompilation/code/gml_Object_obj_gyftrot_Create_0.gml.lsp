0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    pushenv 185s 0x000054
0x000048:
    call (instance_destroy[]:int32 )
0x000054:
    popenv 0x000048
0x000058:
    self.part1 = 236s
    self.part2 = 237s
    self.part3 = 233s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    self.mypart2 = (instance_create[]:int32 self.part2 self.y self.x)
    self.hurtanim = 0s
    self.hurtsound = 43s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -5s
    self.itemgone = 0s
    stog.gift[0s] = (floor[]:int32 (random[]:int32 (var 7s)))
    stog.gift[1s] = (floor[]:int32 (random[]:int32 (var 7s)))
    stog.gift[2s] = (floor[]:int32 (random[]:int32 (var 7s)))
    push -1s
    push 1s:gift
    if !(== -1s 0s:gift) goto 0x000208
0x0001E4:
    push -1s
    stog.gift[(+ 1s:gift 1s)] = 1s
0x000208:
    push -1s
    push 2s:gift
    if !(== -1s 0s:gift) goto 0x000254
0x000230:
    push -1s
    stog.gift[(+ 2s:gift 1s)] = 2s
0x000254:
    push -1s
    push 2s:gift
    if !(== -1s 1s:gift) goto 0x000290
0x00027C:
    stog.gift[2s] = 0s
0x000290:
    push -1s
    push 2s:gift
    if !(== -1s 0s:gift) goto 0x0002DC
0x0002B8:
    push -1s
    stog.gift[(+ 2s:gift 1s)] = 2s
0x0002DC:
    self.mypart3 = (instance_create[]:int32 self.part3 self.y self.x)
    push -1s
    push 0s:gift
    stog.gift* = (int32 self.mypart3)
    self.mypart4 = (instance_create[]:int32 self.part3 self.y self.x)
    push -1s
    push 1s:gift
    stog.gift* = (int32 self.mypart4)
    self.mypart8 = (instance_create[]:int32 self.part3 self.y self.x)
    push -1s
    push 2s:gift
    stog.gift* = (int32 self.mypart8)
    self.googly = 0s
    self.giftgiven = 0s
    self.betray = 0s
    self.ung = 0s
    self.ht = 200s
    self.wd = 200s
0x000408:
    exit
