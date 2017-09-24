0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000794
0x000018:
    if !(== self.movement 1s) goto 0x000228
0x00002C:
    if (!= 1570.x 1570.xprevious) goto 0x00005C
0x000044:
    push (!= 1570.y 1570.yprevious)
    goto 0x000060
0x00005C:
    push 1s
0x000060:
    if !pop goto 0x000228
0x000064:
    self.shouldir = -1s
    self.jim = (distance_to_object[]:int32 (var 1570s))
    if !(< self.jim 80s) goto 0x000228
0x00009C:
    self.movement = 0s
    stog.alarm[0s] = 15s
    if !(>= (abs[]:int32 (- self.x 1570.x)) (abs[]:int32 (- self.y 1570.y))) goto 0x000194
0x0000FC:
    self.vspeed = 0s
    if !(> self.x 1570.x) goto 0x000154
0x000120:
    self.hspeed = 4s
    self.x = (+ self.x 4s)
    self.shoulddir = 0s
    goto 0x000184
0x000154:
    self.hspeed = -4s
    self.x = (- self.x 4s)
    self.shoulddir = 2s
0x000184:
    self.hedge = 0s
    goto 0x000228
0x000194:
    self.hspeed = 0s
    if !(> self.y 1570.y) goto 0x0001EC
0x0001B8:
    self.vspeed = 4s
    self.y = (+ self.y 4s)
    self.shoulddir = 3s
    goto 0x00021C
0x0001EC:
    self.vspeed = -4s
    self.y = (- self.y 4s)
    self.shoulddir = 1s
0x00021C:
    self.vedge = 0s
0x000228:
    if !(< self.y self.u) goto 0x000254
0x000240:
    push (< self.vspeed 0s)
    goto 0x000258
0x000254:
    push 0s
0x000258:
    if !pop goto 0x000284
0x00025C:
    self.vspeed = 0s
    self.vedge = 1s
    self.y = self.u
0x000284:
    if !(> self.y self.d) goto 0x0002B0
0x00029C:
    push (> self.vspeed 0s)
    goto 0x0002B4
0x0002B0:
    push 0s
0x0002B4:
    if !pop goto 0x0002E0
0x0002B8:
    self.vspeed = 0s
    self.vedge = 2s
    self.y = self.d
0x0002E0:
    if !(> self.x self.r) goto 0x00030C
0x0002F8:
    push (> self.hspeed 0s)
    goto 0x000310
0x00030C:
    push 0s
0x000310:
    if !pop goto 0x00033C
0x000314:
    self.hspeed = 0s
    self.hedge = 2s
    self.x = self.r
0x00033C:
    if !(< self.x self.l) goto 0x000368
0x000354:
    push (< self.hspeed 0s)
    goto 0x00036C
0x000368:
    push 0s
0x00036C:
    if !pop goto 0x000398
0x000370:
    self.hspeed = 0s
    self.hedge = 1s
    self.x = self.l
0x000398:
    if (> self.vedge 0s) goto 0x0003C0
0x0003AC:
    push (> self.hedge 0s)
    goto 0x0003C4
0x0003C0:
    push 1s
0x0003C4:
    if !pop goto 0x000730
0x0003C8:
    if !(== self.xmovement 1s) goto 0x000730
0x0003DC:
    if (!= 1570.x 1570.xprevious) goto 0x00040C
0x0003F4:
    push (!= 1570.y 1570.yprevious)
    goto 0x000410
0x00040C:
    push 1s
0x000410:
    if !pop goto 0x000730
0x000414:
    self.vspeed = 0s
    self.hspeed = 0s
    if !(== self.vedge 1s) goto 0x000454
0x000440:
    push (== self.hedge 1s)
    goto 0x000458
0x000454:
    push 0s
0x000458:
    if !pop goto 0x0004B4
0x00045C:
    if !(== self.shoulddir 2s) goto 0x00047C
0x000470:
    self.vspeed = 4s
0x00047C:
    if !(== self.shoulddir 1s) goto 0x00049C
0x000490:
    self.hspeed = 4s
0x00049C:
    self.hedge = 0s
    self.vedge = 0s
0x0004B4:
    if !(== self.vedge 2s) goto 0x0004DC
0x0004C8:
    push (== self.hedge 2s)
    goto 0x0004E0
0x0004DC:
    push 0s
0x0004E0:
    if !pop goto 0x00053C
0x0004E4:
    if !(== self.shoulddir 3s) goto 0x000504
0x0004F8:
    self.hspeed = -4s
0x000504:
    if !(== self.shoulddir 0s) goto 0x000524
0x000518:
    self.vspeed = -4s
0x000524:
    self.hedge = 0s
    self.vedge = 0s
0x00053C:
    if !(== self.vedge 2s) goto 0x000564
0x000550:
    push (== self.hedge 1s)
    goto 0x000568
0x000564:
    push 0s
0x000568:
    if !pop goto 0x0005C4
0x00056C:
    if !(== self.shoulddir 2s) goto 0x00058C
0x000580:
    self.vspeed = -4s
0x00058C:
    if !(== self.shoulddir 3s) goto 0x0005AC
0x0005A0:
    self.hspeed = 4s
0x0005AC:
    self.hedge = 0s
    self.vedge = 0s
0x0005C4:
    if !(== self.vedge 1s) goto 0x0005EC
0x0005D8:
    push (== self.hedge 2s)
    goto 0x0005F0
0x0005EC:
    push 0s
0x0005F0:
    if !pop goto 0x00064C
0x0005F4:
    if !(== self.shoulddir 1s) goto 0x000614
0x000608:
    self.hspeed = -4s
0x000614:
    if !(== self.shoulddir 0s) goto 0x000634
0x000628:
    self.vspeed = 4s
0x000634:
    self.hedge = 0s
    self.vedge = 0s
0x00064C:
    if (== self.hedge 1s) goto 0x000674
0x000660:
    push (== self.hedge 2s)
    goto 0x000678
0x000674:
    push 1s
0x000678:
    if !pop goto 0x0006A8
0x00067C:
    self.vspeed = (choose[]:int32 (var -4s) (var 4s))
    self.hedge = 0s
0x0006A8:
    if (== self.vedge 1s) goto 0x0006D0
0x0006BC:
    push (== self.vedge 2s)
    goto 0x0006D4
0x0006D0:
    push 1s
0x0006D4:
    if !pop goto 0x000704
0x0006D8:
    self.hspeed = (choose[]:int32 (var -4s) (var 4s))
    self.vedge = 0s
0x000704:
    self.movement = 0s
    self.xmovement = 0s
    stog.alarm[0s] = 12s
0x000730:
    push self.x
    stog.x* = (int32 self.mykid)
    push self.y
    stog.y* = (int32 self.mykid)
    if !(== (int32 self.mykid):using 1s) goto 0x000794
0x000788:
    call (instance_destroy[]:int32 )
0x000794:
    exit
