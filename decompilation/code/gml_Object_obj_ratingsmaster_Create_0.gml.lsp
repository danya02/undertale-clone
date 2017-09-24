0x000000:
    global.ratings = 4000s
    self.i = 0s
    if !(< self.i 6s) goto 0x0000A0
0x00002C:
    stog.rq[(int32 self.i)] = ""
    stog.rq_v[(int32 self.i)] = 0s
    stog.rq_s[(int32 self.i)] = 900s
    self.i = (+ self.i 1s)
    goto 0x000018
0x0000A0:
    self.curtype = 0s
    self.thisi = (floor[]:int32 (random[]:int32 (var 8s)))
    self.i = 0s
    if !(< self.i 10s) goto 0x000170
0x0000EC:
    stog.rp[(int32 self.i)] = (- 4000s (random[]:int32 (var 500s)))
    if !(== self.i self.thisi) goto 0x000154
0x000134:
    stog.rp[(int32 self.i)] = global.ratings
0x000154:
    self.i = (+ self.i 1s)
    goto 0x0000D8
0x000170:
    stog.alarm[5s] = 6s
    self.accu = 0s
    self.i = 0s
    if !(< self.i 15s) goto 0x0001E8
0x0001B0:
    stog.typeuse[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    goto 0x00019C
0x0001E8:
    self.boastmode = 0s
    self.siner = 0s
    self.heel = 0s
    self.checkhp = global.hp
    self.thisarmor = global.armor
    self.i = 0s
    if !(< self.i 9s) goto 0x000284
0x00024C:
    stog.armor_worn[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    goto 0x000238
0x000284:
    call (event_user[]:int32 (var 1s))
    self.novel_armor = 0s
    self.timeloss = 0s
    self.o_o = 0s
    self.o_ob = 0s
    self.essay = 0s
    self.active = 1s
0x0002E0:
    exit
