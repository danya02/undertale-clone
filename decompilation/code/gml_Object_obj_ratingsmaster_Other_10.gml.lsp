0x000000:
    if !(>= self.curtype 1s) goto 0x000028
0x000014:
    push (<= self.curtype 13s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000C88
0x000030:
    self.i = 5s
    if !(> self.i 0s) goto 0x000114
0x000050:
    push -1s
    stog.rq_v[(int32 self.i)] = (int32 (- self.i 1s)):rq_v
    push -1s
    stog.rq_s[(int32 self.i)] = (int32 (- self.i 1s)):rq_s
    push -1s
    stog.rq[(int32 self.i)] = (int32 (- self.i 1s)):rq
    self.i = (- self.i 1s)
    goto 0x00003C
0x000114:
    if !(== self.curtype 1s) goto 0x000254
0x000128:
    stog.rq[0s] = "Violence"
    push -1s
    if !(== 1s:typeuse 0s) goto 0x000170
0x00015C:
    stog.rq_v[0s] = 50s
0x000170:
    push -1s
    if !(== 1s:typeuse 1s) goto 0x0001A0
0x00018C:
    stog.rq_v[0s] = 25s
0x0001A0:
    push -1s
    if !(== 1s:typeuse 2s) goto 0x0001D0
0x0001BC:
    stog.rq_v[0s] = 20s
0x0001D0:
    push -1s
    if !(== 1s:typeuse 3s) goto 0x000200
0x0001EC:
    stog.rq_v[0s] = 15s
0x000200:
    push -1s
    if !(>= 1s:typeuse 4s) goto 0x000230
0x00021C:
    stog.rq_v[0s] = 10s
0x000230:
    push -1s
    stog.typeuse[(+ 1s:typeuse 1s)] = 1s
0x000254:
    if !(== self.curtype 2s) goto 0x000324
0x000268:
    stog.rq[0s] = "Disappoint"
    stog.rq_v[0s] = -100s
    push -1s
    if !(>= 2s:typeuse 5s) goto 0x0002C4
0x0002B0:
    stog.rq_v[0s] = -50s
0x0002C4:
    push -1s
    if !(>= 2s:typeuse 20s) goto 0x0002F4
0x0002E0:
    stog.rq_v[0s] = -1s
0x0002F4:
    self.boastmode = 0s
    push -1s
    stog.typeuse[(+ 2s:typeuse 1s)] = 2s
0x000324:
    if !(== self.curtype 3s) goto 0x000388
0x000338:
    stog.rq[0s] = "Justice"
    stog.rq_v[0s] = 100s
    push -1s
    stog.typeuse[(+ 3s:typeuse 1s)] = 3s
0x000388:
    if !(== self.curtype 4s) goto 0x0004DC
0x00039C:
    stog.rq[0s] = "Action"
    stog.rq_v[0s] = 300s
    push -1s
    if !(== 4s:typeuse 0s) goto 0x0003F8
0x0003E4:
    stog.rq_v[0s] = 300s
0x0003F8:
    push -1s
    if !(== 4s:typeuse 1s) goto 0x000428
0x000414:
    stog.rq_v[0s] = 200s
0x000428:
    push -1s
    if !(== 4s:typeuse 2s) goto 0x000458
0x000444:
    stog.rq_v[0s] = 150s
0x000458:
    push -1s
    if !(== 4s:typeuse 3s) goto 0x000488
0x000474:
    stog.rq_v[0s] = 100s
0x000488:
    push -1s
    if !(>= 4s:typeuse 4s) goto 0x0004B8
0x0004A4:
    stog.rq_v[0s] = 50s
0x0004B8:
    push -1s
    stog.typeuse[(+ 4s:typeuse 1s)] = 4s
0x0004DC:
    if !(== self.curtype 5s) goto 0x000630
0x0004F0:
    stog.rq[0s] = "HyperAction"
    stog.rq_v[0s] = 400s
    push -1s
    if !(== 5s:typeuse 0s) goto 0x00054C
0x000538:
    stog.rq_v[0s] = 400s
0x00054C:
    push -1s
    if !(== 5s:typeuse 1s) goto 0x00057C
0x000568:
    stog.rq_v[0s] = 300s
0x00057C:
    push -1s
    if !(== 5s:typeuse 2s) goto 0x0005AC
0x000598:
    stog.rq_v[0s] = 200s
0x0005AC:
    push -1s
    if !(== 5s:typeuse 3s) goto 0x0005DC
0x0005C8:
    stog.rq_v[0s] = 200s
0x0005DC:
    push -1s
    if !(>= 5s:typeuse 4s) goto 0x00060C
0x0005F8:
    stog.rq_v[0s] = 100s
0x00060C:
    push -1s
    stog.typeuse[(+ 5s:typeuse 1s)] = 5s
0x000630:
    if !(== self.curtype 6s) goto 0x000694
0x000644:
    stog.rq[0s] = "Fashion"
    stog.rq_v[0s] = 1500s
    push -1s
    stog.typeuse[(+ 6s:typeuse 1s)] = 6s
0x000694:
    if !(== self.curtype 7s) goto 0x000758
0x0006A8:
    stog.rq[0s] = "Fetching"
    stog.rq_v[0s] = 600s
    push -1s
    if !(== 7s:typeuse 0s) goto 0x000704
0x0006F0:
    stog.rq_v[0s] = 700s
0x000704:
    push -1s
    if !(>= 7s:typeuse 1s) goto 0x000734
0x000720:
    stog.rq_v[0s] = 1s
0x000734:
    push -1s
    stog.typeuse[(+ 7s:typeuse 1s)] = 7s
0x000758:
    if !(== self.curtype 8s) goto 0x0007BC
0x00076C:
    stog.rq[0s] = "EatingGarbage?"
    stog.rq_v[0s] = -50s
    push -1s
    stog.typeuse[(+ 8s:typeuse 1s)] = 8s
0x0007BC:
    if !(== self.curtype 9s) goto 0x0008B0
0x0007D0:
    stog.rq[0s] = "OnBrandFood"
    stog.rq_v[0s] = 200s
    push -1s
    if !(== 9s:typeuse 0s) goto 0x00082C
0x000818:
    stog.rq_v[0s] = 300s
0x00082C:
    push -1s
    if !(== 9s:typeuse 1s) goto 0x00085C
0x000848:
    stog.rq_v[0s] = 200s
0x00085C:
    push -1s
    if !(>= 9s:typeuse 2s) goto 0x00088C
0x000878:
    stog.rq_v[0s] = 200s
0x00088C:
    push -1s
    stog.typeuse[(+ 9s:typeuse 1s)] = 9s
0x0008B0:
    if !(== self.curtype 10s) goto 0x0009A4
0x0008C4:
    stog.rq[0s] = "OnBrandFood"
    stog.rq_v[0s] = 400s
    push -1s
    if !(== 10s:typeuse 0s) goto 0x000920
0x00090C:
    stog.rq_v[0s] = 500s
0x000920:
    push -1s
    if !(== 10s:typeuse 1s) goto 0x000950
0x00093C:
    stog.rq_v[0s] = 300s
0x000950:
    push -1s
    if !(>= 10s:typeuse 2s) goto 0x000980
0x00096C:
    stog.rq_v[0s] = 300s
0x000980:
    push -1s
    stog.typeuse[(+ 10s:typeuse 1s)] = 10s
0x0009A4:
    if !(== self.curtype 11s) goto 0x000B04
0x0009B8:
    stog.rq[0s] = "Dramatic"
    stog.rq_v[0s] = 100s
    if !(< global.hp (/ global.maxhp 1.5d)) goto 0x000A20
0x000A0C:
    stog.rq_v[0s] = 150s
0x000A20:
    if !(< global.hp (/ global.maxhp (double 2s))) goto 0x000A58
0x000A44:
    stog.rq_v[0s] = 250s
0x000A58:
    if !(< global.hp (/ global.maxhp (double 4s))) goto 0x000A90
0x000A7C:
    stog.rq_v[0s] = 400s
0x000A90:
    if !(< global.hp 4s) goto 0x000AB8
0x000AA4:
    stog.rq_v[0s] = 500s
0x000AB8:
    if !(== global.hp 1s) goto 0x000AE0
0x000ACC:
    stog.rq_v[0s] = 600s
0x000AE0:
    push -1s
    stog.typeuse[(+ 11s:typeuse 1s)] = 11s
0x000B04:
    if !(== self.curtype 12s) goto 0x000B80
0x000B18:
    stog.rq[0s] = "Writing"
    stog.rq_v[0s] = 50s
    stog.rq_v[0s] = self.essay
    push -1s
    stog.typeuse[(+ 12s:typeuse 1s)] = 12s
0x000B80:
    if !(== self.curtype 13s) goto 0x000BE4
0x000B94:
    stog.rq[0s] = "OnBrandFood"
    stog.rq_v[0s] = 700s
    push -1s
    stog.typeuse[(+ 13s:typeuse 1s)] = 13s
0x000BE4:
    if !(bool (instance_exists[]:int32 (var 403s))) goto 0x000C50
0x000BFC:
    if !(>= 403.turns 20s) goto 0x000C50
0x000C10:
    push -1s
    if !(> 0s:rq_v 0s) goto 0x000C50
0x000C2C:
    push -1s
    stog.rq_v[(* 0s:rq_v 2s)] = 0s
0x000C50:
    push global.ratings
    global.ratings = (+ -1s 0s:rq_v)
    stog.rq_s[0s] = 0s
0x000C88:
    exit
