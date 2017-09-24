0x000000:
    self.fade = 0s
    self.hit = 0s
    self.myscore = 0s
    self.check = 274s
    self.thensc = 0s
    self.fatalx = (+ 274s self.x)
    self.wherex = -50s
    self.type = 0s
    if !(== global.weapon 25s) goto 0x00008C
0x000080:
    self.type = 0s
0x00008C:
    if !(== global.weapon 47s) goto 0x0000AC
0x0000A0:
    self.type = 1s
0x0000AC:
    if !(== global.weapon 49s) goto 0x0000CC
0x0000C0:
    self.type = 2s
0x0000CC:
    if !(== global.weapon 45s) goto 0x0000EC
0x0000E0:
    self.type = 3s
0x0000EC:
    self.num = 3s
    if !(== self.type 0s) goto 0x0002A0
0x00010C:
    self.lr = (choose[]:int32 (var 0s))
    if !(== self.lr 0s) goto 0x00014C
0x000138:
    call (event_user[]:int32 (var 4s))
0x00014C:
    if !(== self.lr 1s) goto 0x000174
0x000160:
    call (event_user[]:int32 (var 5s))
0x000174:
    self.wherex = (choose[]:int32 (var 50s) (var 25s) (var 0s))
    self.lr = (choose[]:int32 (var 0s))
    if !(== self.lr 0s) goto 0x0001DC
0x0001C8:
    call (event_user[]:int32 (var 4s))
0x0001DC:
    if !(== self.lr 1s) goto 0x000204
0x0001F0:
    call (event_user[]:int32 (var 5s))
0x000204:
    self.wherex = (choose[]:int32 (var 150s) (var 125s) (var 100s))
    self.lr = (choose[]:int32 (var 0s))
    if !(== self.lr 0s) goto 0x00026C
0x000258:
    call (event_user[]:int32 (var 4s))
0x00026C:
    if !(== self.lr 1s) goto 0x000294
0x000280:
    call (event_user[]:int32 (var 5s))
0x000294:
    self.num = 3s
0x0002A0:
    if !(== self.type 1s) goto 0x0004BC
0x0002B4:
    self.lr = (choose[]:int32 (var 1s))
    if !(== self.lr 0s) goto 0x0002F4
0x0002E0:
    call (event_user[]:int32 (var 4s))
0x0002F4:
    if !(== self.lr 1s) goto 0x00031C
0x000308:
    call (event_user[]:int32 (var 5s))
0x00031C:
    self.wherex = (choose[]:int32 (var 50s) (var 25s) (var 0s))
    self.lr = (choose[]:int32 (var 1s))
    if !(== self.lr 0s) goto 0x000384
0x000370:
    call (event_user[]:int32 (var 4s))
0x000384:
    if !(== self.lr 1s) goto 0x0003AC
0x000398:
    call (event_user[]:int32 (var 5s))
0x0003AC:
    self.wherex = (choose[]:int32 (var 150s) (var 125s) (var 100s))
    self.lr = (choose[]:int32 (var 1s))
    if !(== self.lr 0s) goto 0x000414
0x000400:
    call (event_user[]:int32 (var 4s))
0x000414:
    if !(== self.lr 1s) goto 0x00043C
0x000428:
    call (event_user[]:int32 (var 5s))
0x00043C:
    self.wherex = 200s
    self.lr = (choose[]:int32 (var 1s))
    if !(== self.lr 0s) goto 0x000488
0x000474:
    call (event_user[]:int32 (var 4s))
0x000488:
    if !(== self.lr 1s) goto 0x0004B0
0x00049C:
    call (event_user[]:int32 (var 5s))
0x0004B0:
    self.num = 4s
0x0004BC:
    if !(== self.type 2s) goto 0x000700
0x0004D0:
    self.wherex = 120s
    self.lr = (choose[]:int32 (var 0s))
    if !(== self.lr 0s) goto 0x00051C
0x000508:
    call (event_user[]:int32 (var 4s))
0x00051C:
    if !(== self.lr 1s) goto 0x000544
0x000530:
    call (event_user[]:int32 (var 5s))
0x000544:
    self.wherex = (choose[]:int32 (var 240s) (var 210s) (var 180s))
    self.lr = (choose[]:int32 (var 0s))
    if !(== self.lr 0s) goto 0x0005AC
0x000598:
    call (event_user[]:int32 (var 4s))
0x0005AC:
    if !(== self.lr 1s) goto 0x0005D4
0x0005C0:
    call (event_user[]:int32 (var 5s))
0x0005D4:
    self.wherex = (choose[]:int32 (var 360s) (var 330s) (var 300s))
    self.lr = (choose[]:int32 (var 0s))
    if !(== self.lr 0s) goto 0x00063C
0x000628:
    call (event_user[]:int32 (var 4s))
0x00063C:
    if !(== self.lr 1s) goto 0x000664
0x000650:
    call (event_user[]:int32 (var 5s))
0x000664:
    self.wherex = (choose[]:int32 (var 460s) (var 430s) (var 400s))
    self.lr = (choose[]:int32 (var 0s))
    if !(== self.lr 0s) goto 0x0006CC
0x0006B8:
    call (event_user[]:int32 (var 4s))
0x0006CC:
    if !(== self.lr 1s) goto 0x0006F4
0x0006E0:
    call (event_user[]:int32 (var 5s))
0x0006F4:
    self.num = 4s
0x000700:
    if !(== self.type 3s) goto 0x000838
0x000714:
    self.lr = (choose[]:int32 (var 1s))
    self.wherex = (choose[]:int32 (var -25s) (var -50s))
    if !(== self.lr 0s) goto 0x000774
0x000760:
    call (event_user[]:int32 (var 4s))
0x000774:
    if !(== self.lr 1s) goto 0x00079C
0x000788:
    call (event_user[]:int32 (var 5s))
0x00079C:
    self.wherex = (choose[]:int32 (var 50s) (var 25s) (var 0s))
    self.lr = (choose[]:int32 (var 1s))
    if !(== self.lr 0s) goto 0x000804
0x0007F0:
    call (event_user[]:int32 (var 4s))
0x000804:
    if !(== self.lr 1s) goto 0x00082C
0x000818:
    call (event_user[]:int32 (var 5s))
0x00082C:
    self.num = 2s
0x000838:
    exit
