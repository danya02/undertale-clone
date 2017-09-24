0x000000:
    global.inbattle = 1s
    self.type = global.cast_type
    if !(== self.type 0s) goto 0x0001FC
0x000030:
    self.froggit = (instance_create[]:int32 (var 603s) (var 600s) (var 160s))
    push 1s
    stog.type* = (int32 self.froggit)
    self.whimsun = (instance_create[]:int32 (var 603s) (var 600s) (var 380s))
    push 2s
    stog.type* = (int32 self.whimsun)
    self.moldsmal = (instance_create[]:int32 (var 603s) (var 940s) (var 160s))
    push 3s
    stog.type* = (int32 self.moldsmal)
    self.loox = (instance_create[]:int32 (var 603s) (var 940s) (var 380s))
    push 6s
    stog.type* = (int32 self.loox)
    self.vegetoid = (instance_create[]:int32 (var 603s) (var 1280s) (var 160s))
    push 7s
    stog.type* = (int32 self.vegetoid)
    self.migosp = (instance_create[]:int32 (var 603s) (var 1280s) (var 380s))
    push 5s
    stog.type* = (int32 self.migosp)
    self.napstablook = (instance_create[]:int32 (var 603s) (var 1620s) (var 280s))
    push 4s
    stog.type* = (int32 self.napstablook)
    self.active = 2s
0x0001FC:
    if !(== self.type 1s) goto 0x0004CC
0x000210:
    self.snowdrake = (instance_create[]:int32 (var 603s) (var 600s) (var 110s))
    push 11s
    stog.type* = (int32 self.snowdrake)
    self.icecap = (instance_create[]:int32 (var 603s) (var 600s) (var 380s))
    push 10s
    stog.type* = (int32 self.icecap)
    push 2s
    stog.image_yscale* = (int32 self.icecap)
    self.gyftrot = (instance_create[]:int32 (var 603s) (var 1040s) (var 110s))
    push 12s
    stog.type* = (int32 self.gyftrot)
    push 2s
    stog.image_xscale* = (int32 self.gyftrot)
    push 2s
    stog.image_yscale* = (int32 self.gyftrot)
    self.doggo = (instance_create[]:int32 (var 603s) (var 1040s) (var 380s))
    push 13s
    stog.type* = (int32 self.doggo)
    push 2s
    stog.image_yscale* = (int32 self.doggo)
    self.dogamy = (instance_create[]:int32 (var 603s) (var 1480s) (var 208s))
    push 14s
    stog.type* = (int32 self.dogamy)
    push 2s
    stog.image_xscale* = (int32 self.dogamy)
    push 2s
    stog.image_yscale* = (int32 self.dogamy)
    self.lesserdog = (instance_create[]:int32 (var 603s) (var 1920s) (var 140s))
    push 8s
    stog.type* = (int32 self.lesserdog)
    push 1s
    stog.image_xscale* = (int32 self.lesserdog)
    push 2s
    stog.image_yscale* = (int32 self.lesserdog)
    self.greaterdog = (instance_create[]:int32 (var 603s) (var 1920s) (var 340s))
    push 9s
    stog.type* = (int32 self.greaterdog)
    push 2s
    stog.image_xscale* = (int32 self.greaterdog)
    push 2s
    stog.image_yscale* = (int32 self.greaterdog)
    self.active = 1s
0x0004CC:
    if !(== self.type 2s) goto 0x00072C
0x0004E0:
    self.aaron = (instance_create[]:int32 (var 603s) (var 600s) (var 160s))
    push 16s
    stog.type* = (int32 self.aaron)
    push 2s
    stog.image_xscale* = (int32 self.aaron)
    push 2s
    stog.image_yscale* = (int32 self.aaron)
    self.moldbygg = (instance_create[]:int32 (var 603s) (var 600s) (var 380s))
    push 19s
    stog.type* = (int32 self.moldbygg)
    push 2s
    stog.image_yscale* = (int32 self.moldbygg)
    self.woshua = (instance_create[]:int32 (var 603s) (var 1040s) (var 160s))
    push 15s
    stog.type* = (int32 self.woshua)
    self.temmie = (instance_create[]:int32 (var 603s) (var 1040s) (var 380s))
    push 18s
    stog.type* = (int32 self.temmie)
    push 1s
    stog.image_yscale* = (int32 self.temmie)
    self.maddummy = (instance_create[]:int32 (var 603s) (var 1380s) (var 160s))
    push 20s
    stog.type* = (int32 self.maddummy)
    push 1s
    stog.image_xscale* = (int32 self.maddummy)
    push 2s
    stog.image_yscale* = (int32 self.maddummy)
    self.shyren = (instance_create[]:int32 (var 603s) (var 1380s) (var 380s))
    push 17s
    stog.type* = (int32 self.shyren)
    push 1s
    stog.image_xscale* = (int32 self.shyren)
    push 2s
    stog.image_yscale* = (int32 self.shyren)
    self.active = 1s
0x00072C:
    if !(== self.type 3s) goto 0x000C94
0x000740:
    self.vulkin = (instance_create[]:int32 (var 603s) (var 700s) (var 160s))
    push 22s
    stog.type* = (int32 self.vulkin)
    self.tsunderplane = (instance_create[]:int32 (var 603s) (var 600s) (var 340s))
    push 2s
    stog.image_yscale* = (int32 self.tsunderplane)
    push 2s
    stog.image_xscale* = (int32 self.tsunderplane)
    push 23s
    stog.type* = (int32 self.tsunderplane)
    self.pyrope = (instance_create[]:int32 (var 603s) (var 1040s) (var 160s))
    push 2s
    stog.image_yscale* = (int32 self.pyrope)
    push 24s
    stog.type* = (int32 self.pyrope)
    self.muffet = (instance_create[]:int32 (var 603s) (var 1040s) (var 340s))
    push 2s
    stog.image_yscale* = (int32 self.muffet)
    push 2s
    stog.image_xscale* = (int32 self.muffet)
    push 25s
    stog.type* = (int32 self.muffet)
    self.knighta = (instance_create[]:int32 (var 603s) (var 1480s) (var 140s))
    push 2s
    stog.image_yscale* = (int32 self.knighta)
    push 2s
    stog.image_xscale* = (int32 self.knighta)
    push 21s
    stog.type* = (int32 self.knighta)
    self.finalfroggit = (instance_create[]:int32 (var 603s) (var 1940s) (var 160s))
    push 28s
    stog.type* = (int32 self.finalfroggit)
    self.whimsalot = (instance_create[]:int32 (var 603s) (var 1940s) (var 380s))
    push 29s
    stog.type* = (int32 self.whimsalot)
    self.astigmatism = (instance_create[]:int32 (var 603s) (var 2260s) (var 270s))
    push 30s
    stog.type* = (int32 self.astigmatism)
    self.madjick = (instance_create[]:int32 (var 603s) (var 2600s) (var 110s))
    push 26s
    stog.type* = (int32 self.madjick)
    push 2s
    stog.image_xscale* = (int32 self.madjick)
    push 2s
    stog.image_yscale* = (int32 self.madjick)
    self.knightknight = (instance_create[]:int32 (var 603s) (var 2600s) (var 380s))
    push 27s
    stog.type* = (int32 self.knightknight)
    push 2s
    stog.image_yscale* = (int32 self.knightknight)
    push 2s
    stog.image_xscale* = (int32 self.knightknight)
    self.amalgamate1 = (instance_create[]:int32 (var 603s) (var 3040s) (var 70s))
    push 32s
    stog.type* = (int32 self.amalgamate1)
    push 1s
    stog.image_xscale* = (int32 self.amalgamate1)
    push 3s
    stog.image_yscale* = (int32 self.amalgamate1)
    self.amalgamate2 = (instance_create[]:int32 (var 603s) (var 3140s) (var 180s))
    push 31s
    stog.type* = (int32 self.amalgamate2)
    push 1s
    stog.image_yscale* = (int32 self.amalgamate2)
    push 1s
    stog.image_xscale* = (int32 self.amalgamate2)
    self.amalgamate3 = (instance_create[]:int32 (var 603s) (var 3040s) (var 290s))
    push 33s
    stog.type* = (int32 self.amalgamate3)
    push 2s
    stog.image_yscale* = (int32 self.amalgamate3)
    push 2s
    stog.image_xscale* = (int32 self.amalgamate3)
    self.amalgamate4 = (instance_create[]:int32 (var 603s) (var 3140s) (var 500s))
    push 34s
    stog.type* = (int32 self.amalgamate4)
    push 1s
    stog.image_xscale* = (int32 self.amalgamate4)
    push 2s
    stog.image_yscale* = (int32 self.amalgamate4)
    self.active = 1s
0x000C94:
    exit
