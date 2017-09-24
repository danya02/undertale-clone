0x000000:
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    self.part1 = 274s
    stog.alarm[10s] = 2s
    global.faceemotion = 10s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    push 15s
    stog.depth* = (int32 self.mypart1)
    push 1s
    stog.noanim* = (int32 self.mypart1)
    push 0s
    stog.spearalpha* = (int32 self.mypart1)
    push 0s
    stog.goof* = (int32 self.mypart1)
    pushenv (int32 self.mypart1) 0x0000E8
0x0000DC:
    self.pause = 0s
0x0000E8:
    popenv 0x0000DC
0x0000EC:
    pushenv 185s 0x000100
0x0000F4:
    call (instance_destroy[]:int32 )
0x000100:
    popenv 0x0000F4
0x000104:
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 42s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -999999
    self.sha = 0s
    self.shb = 0s
    self.lesson = 15s
    if !(== 743.sprite_index 34s) goto 0x0001E4
0x0001C0:
    [obj_heart].sprite_index = 39s
    [obj_heart].movement = 3s
    self.green = 0s
0x0001E4:
    self.darkify = 0s
    self.greenlock = 0s
    self.rating = 12s
    self.hitno = 0s
    self.berserk = 0s
    self.turns = 0s
    self.mercyno = 0s
    self.talkt = 0s
    self.saved = 0s
    self.st = (instance_create[]:int32 (var 1662s) (- self.y 30s) (+ self.x 20s))
    pushenv (int32 self.st) 0x0002A4
0x000298:
    self.depth = 14s
0x0002A4:
    popenv 0x000298
0x0002A8:
    self.ht = 200s
    self.wd = 100s
0x0002C0:
    exit
