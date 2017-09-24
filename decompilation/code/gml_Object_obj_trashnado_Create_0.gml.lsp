0x000000:
    self.siner1 = 0s
    self.siner2 = 120s
    self.siner3 = 240s
    self.siner4 = 0s
    self.siner5 = 120s
    self.sinerx = 0s
    self.i = 0s
    if !(< self.i 3s) goto 0x000180
0x000068:
    stog.tspr1[(int32 self.i)] = (choose[]:int32 (var 1636s) (var 1635s))
    stog.trash1[(int32 self.i)] = (instance_create[]:int32 (var 1363s) self.y self.x)
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.i):trash1)) goto 0x000164
0x0000F8:
    push -1s
    push (int32 self.i):tspr1
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):trash1)
    push -1s
    pushenv (int32 (int32 self.i):trash1) 0x000160
0x000154:
    call (scr_depth[]:int32 )
0x000160:
    popenv 0x000154
0x000164:
    self.i = (+ self.i 1s)
    goto 0x000054
0x000180:
    self.i = 0s
    if !(< self.i 3s) goto 0x0002B8
0x0001A0:
    stog.tspr2[(int32 self.i)] = (choose[]:int32 (var 1636s) (var 1635s))
    stog.trash2[(int32 self.i)] = (instance_create[]:int32 (var 1363s) self.y self.x)
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.i):trash2)) goto 0x00029C
0x000230:
    push -1s
    push (int32 self.i):tspr2
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):trash2)
    push -1s
    pushenv (int32 (int32 self.i):trash2) 0x000298
0x00028C:
    call (scr_depth[]:int32 )
0x000298:
    popenv 0x00028C
0x00029C:
    self.i = (+ self.i 1s)
    goto 0x00018C
0x0002B8:
    self.i = 0s
    if !(< self.i 3s) goto 0x000400
0x0002D8:
    stog.tspr3[(int32 self.i)] = (choose[]:int32 (var 1286s) (var 1635s) (var 1636s) (var 1635s))
    stog.trash3[(int32 self.i)] = (instance_create[]:int32 (var 1363s) self.y self.x)
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.i):trash3)) goto 0x0003E4
0x000378:
    push -1s
    push (int32 self.i):tspr3
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):trash3)
    push -1s
    pushenv (int32 (int32 self.i):trash3) 0x0003E0
0x0003D4:
    call (scr_depth[]:int32 )
0x0003E0:
    popenv 0x0003D4
0x0003E4:
    self.i = (+ self.i 1s)
    goto 0x0002C4
0x000400:
    self.i = 0s
    if !(< self.i 3s) goto 0x000568
0x000420:
    stog.tspr4[0s] = (choose[]:int32 (var 1635s))
    stog.tspr4[1s] = (choose[]:int32 (var 1615s))
    stog.tspr4[2s] = (choose[]:int32 (var 1284s))
    stog.trash4[(int32 self.i)] = (instance_create[]:int32 (var 1363s) self.y self.x)
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.i):trash4)) goto 0x00054C
0x0004E0:
    push -1s
    push (int32 self.i):tspr4
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):trash4)
    push -1s
    pushenv (int32 (int32 self.i):trash4) 0x000548
0x00053C:
    call (scr_depth[]:int32 )
0x000548:
    popenv 0x00053C
0x00054C:
    self.i = (+ self.i 1s)
    goto 0x00040C
0x000568:
    self.i = 0s
    if !(< self.i 3s) goto 0x0007A0
0x000588:
    push -5s
    if !(< 497s:flag 2s) goto 0x000608
0x0005A4:
    stog.tspr5[0s] = (choose[]:int32 (var 1635s))
    stog.tspr5[1s] = (choose[]:int32 (var 1615s))
    stog.tspr5[2s] = (choose[]:int32 (var 1637s))
    goto 0x000680
0x000608:
    stog.tspr5[0s] = (choose[]:int32 (var 1635s))
    stog.tspr5[2s] = (choose[]:int32 (var 1637s))
    stog.tspr5[1s] = (choose[]:int32 (var 1518s) (var 1615s) (var 1635s) (var 1615s))
0x000680:
    stog.trash5[(int32 self.i)] = (instance_create[]:int32 (var 1363s) self.y self.x)
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.i):trash5)) goto 0x000784
0x0006E0:
    push -1s
    push (int32 self.i):tspr5
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):trash5)
    push -1s
    pushenv (int32 (int32 self.i):trash5) 0x000750
0x00073C:
    self.image_speed = 0.2d
0x000750:
    popenv 0x00073C
0x000754:
    push -1s
    pushenv (int32 (int32 self.i):trash1) 0x000780
0x000774:
    call (scr_depth[]:int32 )
0x000780:
    popenv 0x000774
0x000784:
    self.i = (+ self.i 1s)
    goto 0x000574
0x0007A0:
    [obj_npc_marker].visible = 1s
    pushenv 1363s 0x0007D4
0x0007B4:
    if !(< self.depth 100s) goto 0x0007D4
0x0007C8:
    self.depth = 100s
0x0007D4:
    popenv 0x0007B4
0x0007D8:
    exit
