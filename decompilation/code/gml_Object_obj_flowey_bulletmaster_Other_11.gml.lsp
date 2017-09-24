0x000000:
    if !(== self.overtype 1s) goto 0x000074
0x000014:
    self.newattack = (choose[]:int32 (var 21s) (var 20s))
    push self.newattack
    if !(== -1s 1s:attackid) goto 0x000074
0x000054:
    self.newattack = (choose[]:int32 (var 21s) (var 20s))
0x000074:
    if !(== self.overtype 0s) goto 0x000220
0x000088:
    self.newattack = (choose[]:int32 (var 9s) (var 8s) (var 7s) (var 6s) (var 5s) (var 4s) (var 3s) (var 2s) (var 1s))
    push self.newattack
    if (== -1s 1s:attackid) goto 0x000120
0x000100:
    push self.newattack
    push (== -1s 2s:attackid)
    goto 0x000124
0x000120:
    push 1s
0x000124:
    if !pop goto 0x000180
0x000128:
    self.newattack = (choose[]:int32 (var 9s) (var 8s) (var 7s) (var 6s) (var 5s) (var 4s) (var 3s) (var 2s) (var 1s))
0x000180:
    push self.newattack
    if (== -1s 1s:attackid) goto 0x0001C0
0x0001A0:
    push self.newattack
    push (== -1s 2s:attackid)
    goto 0x0001C4
0x0001C0:
    push 1s
0x0001C4:
    if !pop goto 0x000220
0x0001C8:
    self.newattack = (choose[]:int32 (var 9s) (var 8s) (var 7s) (var 6s) (var 5s) (var 4s) (var 3s) (var 2s) (var 1s))
0x000220:
    if !(== global.battlephase 0s) goto 0x00036C
0x000234:
    self.newattack = (choose[]:int32 (var 9s) (var 4s) (var 3s) (var 2s) (var 1s))
    push self.newattack
    if (== -1s 1s:attackid) goto 0x0002AC
0x00028C:
    push self.newattack
    push (== -1s 2s:attackid)
    goto 0x0002B0
0x0002AC:
    push 1s
0x0002B0:
    if !pop goto 0x0002EC
0x0002B4:
    self.newattack = (choose[]:int32 (var 9s) (var 4s) (var 3s) (var 2s) (var 1s))
0x0002EC:
    push self.newattack
    if (== -1s 1s:attackid) goto 0x00032C
0x00030C:
    push self.newattack
    push (== -1s 2s:attackid)
    goto 0x000330
0x00032C:
    push 1s
0x000330:
    if !pop goto 0x00036C
0x000334:
    self.newattack = (choose[]:int32 (var 9s) (var 4s) (var 3s) (var 2s) (var 1s))
0x00036C:
    if !(== global.battlephase 1s) goto 0x0004B8
0x000380:
    self.newattack = (choose[]:int32 (var 8s) (var 7s) (var 6s) (var 5s) (var 3s))
    push self.newattack
    if (== -1s 1s:attackid) goto 0x0003F8
0x0003D8:
    push self.newattack
    push (== -1s 2s:attackid)
    goto 0x0003FC
0x0003F8:
    push 1s
0x0003FC:
    if !pop goto 0x000438
0x000400:
    self.newattack = (choose[]:int32 (var 8s) (var 7s) (var 6s) (var 5s) (var 3s))
0x000438:
    push self.newattack
    if (== -1s 1s:attackid) goto 0x000478
0x000458:
    push self.newattack
    push (== -1s 2s:attackid)
    goto 0x00047C
0x000478:
    push 1s
0x00047C:
    if !pop goto 0x0004B8
0x000480:
    self.newattack = (choose[]:int32 (var 8s) (var 7s) (var 6s) (var 5s) (var 3s))
0x0004B8:
    if !(== global.battlephase 6s) goto 0x0004E0
0x0004CC:
    push (== self.unhinged 0s)
    goto 0x0004E4
0x0004E0:
    push 0s
0x0004E4:
    if !pop goto 0x000508
0x0004E8:
    self.newattack = (choose[]:int32 (var 22s) (var 23s))
0x000508:
    self.ourattack = (instance_create[]:int32 (var 1583s) self.y self.x)
    push self.newattack
    stog.attack* = (int32 self.ourattack)
    push -1s
    stog.attackid[2s] = 1s:attackid
    push -1s
    stog.attackid[1s] = 0s:attackid
    stog.attackid[0s] = self.newattack
    self.active = 1s
    self.attacktimermax = 150s
    if !(== self.newattack 1s) goto 0x0005F8
0x0005D0:
    self.attacktimermax = (+ 90s (floor[]:int32 (random[]:int32 (var 30s))))
0x0005F8:
    if !(== self.newattack 2s) goto 0x000634
0x00060C:
    self.attacktimermax = (+ 80s (floor[]:int32 (random[]:int32 (var 25s))))
0x000634:
    if !(== self.newattack 3s) goto 0x000670
0x000648:
    self.attacktimermax = (+ 70s (floor[]:int32 (random[]:int32 (var 25s))))
0x000670:
    if !(== self.newattack 4s) goto 0x000690
0x000684:
    self.attacktimermax = 110s
0x000690:
    if !(== self.newattack 5s) goto 0x0006B0
0x0006A4:
    self.attacktimermax = 110s
0x0006B0:
    if !(== self.newattack 6s) goto 0x0006D0
0x0006C4:
    self.attacktimermax = 130s
0x0006D0:
    if !(== self.newattack 7s) goto 0x0006F0
0x0006E4:
    self.attacktimermax = 130s
0x0006F0:
    if !(== self.newattack 8s) goto 0x000710
0x000704:
    self.attacktimermax = 110s
0x000710:
    if !(== self.newattack 9s) goto 0x000730
0x000724:
    self.attacktimermax = 95s
0x000730:
    if !(== self.newattack 20s) goto 0x000750
0x000744:
    self.attacktimermax = 90s
0x000750:
    if !(== self.newattack 21s) goto 0x000770
0x000764:
    self.attacktimermax = 90s
0x000770:
    if !(== self.newattack 22s) goto 0x000790
0x000784:
    self.attacktimermax = 80s
0x000790:
    if !(== self.newattack 22s) goto 0x0007B0
0x0007A4:
    self.attacktimermax = 100s
0x0007B0:
    if !(== self.unhinged 1s) goto 0x0007FC
0x0007C4:
    self.attacktimermax = (- self.attacktimermax 10s)
    if !(== self.newattack 9s) goto 0x0007FC
0x0007F0:
    self.attacktimermax = 95s
0x0007FC:
    self.attacktimer = 0s
0x000808:
    exit
