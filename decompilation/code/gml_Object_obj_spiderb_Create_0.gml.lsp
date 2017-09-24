0x000000:
    call (scr_monstersetup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.image_speed = 0s
    self.part1 = 362s
    self.mypart1 = (instance_create[]:int32 self.part1 (- self.y 2s) (+ self.x 62s))
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 35s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -960s
    self.sha = 0s
    self.shb = 0s
    self.flex = 0s
    self.encourage = 0s
    self.criticize = 0s
    self.hug = 0s
    self.con = 0s
    self.turnamt = 0s
    self.purpletime = 0s
    self.blconactive = 0s
    self.struggle = 0s
    stog.flag[382s] = 10s
    self.bribes = 0s
    self.atkdown = 0s
    self.type = 10s
    [obj_battlebg].visible = 0s
    self.blconwd = 3717328137821L
    self.talktime = 0s
    self.ht = self.sprite_height
    self.wd = self.sprite_width
    self.itemuse = 0s
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000270
0x000238:
    self.murder = 1s
    stog.monsterdef[(int32 self.myself)] = -800s
    self.mercymod = -90000
0x000270:
    exit
