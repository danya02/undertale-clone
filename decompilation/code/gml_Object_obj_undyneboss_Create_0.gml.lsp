0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    self.part1 = 273s
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
    call (instance_create[]:int32 (var 267s) (var 0s) (var 0s))
    self.green = 0s
    self.darkify = 0s
    self.con = 0s
    self.greenlock = 0s
    self.songplayed = 0s
    self.revert = 0s
    self.lesson = 1s
    self.order = 1s
    self.rating = 16s
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
    push -5s
    stog.flag[(+ 99s:flag 1s)] = 99s
    push -5s
    if !(== 99s:flag 1s) goto 0x000308
0x0002C4:
    stog.flag[351s] = 1500s
    push -5s
    if !(== 98s:flag 2s) goto 0x000308
0x0002F4:
    stog.flag[351s] = 1400s
0x000308:
    push -5s
    if !(== 99s:flag 2s) goto 0x000330
0x000324:
    global.faceemotion = 1s
0x000330:
    push -5s
    if !(== 99s:flag 3s) goto 0x000358
0x00034C:
    global.faceemotion = 4s
0x000358:
    push -5s
    if !(> 99s:flag 3s) goto 0x000380
0x000374:
    global.faceemotion = 5s
0x000380:
    push -5s
    stog.monsterhp[(int32 self.myself)] = 351s:flag
    self.ht = 200s
    self.wd = 250s
0x0003C0:
    exit
