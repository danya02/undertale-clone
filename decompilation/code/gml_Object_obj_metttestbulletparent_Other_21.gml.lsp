0x000000:
    if !(<= global.invc 0s) goto 0x0004E0
0x000014:
    self.dmg = 9s
    if !(~ (bool (instance_exists[]:int32 (var 420s)))) goto 0x00018C
0x00003C:
    if !(== global.attacktype 37s) goto 0x000074
0x000050:
    push -5s
    stog.specialdam[(+ 0s:specialdam 1s)] = 0s
0x000074:
    if !(== global.attacktype 39s) goto 0x0000AC
0x000088:
    push -5s
    stog.specialdam[(+ 1s:specialdam 1s)] = 1s
0x0000AC:
    if !(== global.attacktype 43s) goto 0x0000E4
0x0000C0:
    push -5s
    stog.specialdam[(+ 2s:specialdam 1s)] = 2s
0x0000E4:
    if !(>= global.hp 30s) goto 0x000108
0x0000F8:
    self.dmg = 10s
    goto 0x00015C
0x000108:
    if !(>= global.hp 20s) goto 0x00012C
0x00011C:
    self.dmg = 9s
    goto 0x00015C
0x00012C:
    if !(>= global.hp 5s) goto 0x000150
0x000140:
    self.dmg = 8s
    goto 0x00015C
0x000150:
    self.dmg = 6s
0x00015C:
    call (scr_damagestandard_x[]:int32 )
    if !(<= global.hp 0s) goto 0x000188
0x00017C:
    global.hp = 0s
0x000188:
    goto 0x0004B4
0x00018C:
    self.taken = 0s
    if !(== (instance_exists[]:int32 (var 424s)) 0s) goto 0x000320
0x0001B4:
    if !(>= global.hp 24s) goto 0x0001DC
0x0001C8:
    push (== self.taken 0s)
    goto 0x0001E0
0x0001DC:
    push 0s
0x0001E0:
    if !pop goto 0x0001FC
0x0001E4:
    self.taken = 1s
    self.dmg = 9s
0x0001FC:
    if !(>= global.hp 16s) goto 0x000224
0x000210:
    push (== self.taken 0s)
    goto 0x000228
0x000224:
    push 0s
0x000228:
    if !pop goto 0x000244
0x00022C:
    self.taken = 1s
    self.dmg = 8s
0x000244:
    if !(>= global.hp 8s) goto 0x00026C
0x000258:
    push (== self.taken 0s)
    goto 0x000270
0x00026C:
    push 0s
0x000270:
    if !pop goto 0x00028C
0x000274:
    self.taken = 1s
    self.dmg = 7s
0x00028C:
    if !(>= global.hp 3s) goto 0x0002B4
0x0002A0:
    push (== self.taken 0s)
    goto 0x0002B8
0x0002B4:
    push 0s
0x0002B8:
    if !pop goto 0x0002D4
0x0002BC:
    self.taken = 1s
    self.dmg = 6s
0x0002D4:
    if !(>= global.hp 0s) goto 0x0002FC
0x0002E8:
    push (== self.taken 0s)
    goto 0x000300
0x0002FC:
    push 0s
0x000300:
    if !pop goto 0x00031C
0x000304:
    self.taken = 1s
    self.dmg = 5s
0x00031C:
    goto 0x000488
0x000320:
    if !(>= global.hp 30s) goto 0x000348
0x000334:
    push (== self.taken 0s)
    goto 0x00034C
0x000348:
    push 0s
0x00034C:
    if !pop goto 0x000368
0x000350:
    self.taken = 1s
    self.dmg = 9s
0x000368:
    if !(>= global.hp 20s) goto 0x000390
0x00037C:
    push (== self.taken 0s)
    goto 0x000394
0x000390:
    push 0s
0x000394:
    if !pop goto 0x0003B0
0x000398:
    self.taken = 1s
    self.dmg = 8s
0x0003B0:
    if !(>= global.hp 12s) goto 0x0003D8
0x0003C4:
    push (== self.taken 0s)
    goto 0x0003DC
0x0003D8:
    push 0s
0x0003DC:
    if !pop goto 0x0003F8
0x0003E0:
    self.taken = 1s
    self.dmg = 7s
0x0003F8:
    if !(>= global.hp 4s) goto 0x000420
0x00040C:
    push (== self.taken 0s)
    goto 0x000424
0x000420:
    push 0s
0x000424:
    if !pop goto 0x000440
0x000428:
    self.taken = 1s
    self.dmg = 6s
0x000440:
    if !(>= global.hp 0s) goto 0x000468
0x000454:
    push (== self.taken 0s)
    goto 0x00046C
0x000468:
    push 0s
0x00046C:
    if !pop goto 0x000488
0x000470:
    self.taken = 1s
    self.dmg = 5s
0x000488:
    call (scr_damagestandard_x[]:int32 )
    if !(<= global.hp 0s) goto 0x0004B4
0x0004A8:
    global.hp = 0s
0x0004B4:
    push -5s
    stog.failure[(+ (int32 global.attacktype):failure 1s)] = (int32 global.attacktype)
0x0004E0:
    exit
