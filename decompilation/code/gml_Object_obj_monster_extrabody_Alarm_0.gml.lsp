0x000000:
    self.active = 1s
    if !(== self.type 1s) goto 0x000080
0x000020:
    self.mypart1 = (instance_create[]:int32 (var 215s) (- self.y 4s) self.x)
    self.mypart2 = (instance_create[]:int32 (var 214s) (- self.y 4s) self.x)
0x000080:
    if !(== self.type 8s) goto 0x000140
0x000094:
    self.sprite_index = 198s
    self.mercymod = 0s
    self.depth = 10s
    self.tail = (instance_create[]:int32 (var 221s) self.y self.x)
    push self.id
    stog.tailobj* = (int32 self.tail)
    self.head = (instance_create[]:int32 (var 222s) self.y self.x)
    push self.id
    stog.tailobj* = (int32 self.head)
0x000140:
    if !(== self.type 9s) goto 0x000154
0x000154:
    if !(== self.type 11s) goto 0x0001E0
0x000168:
    self.part1 = 254s
    self.part2 = 255s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y (+ self.x 18s))
    self.mypart2 = (instance_create[]:int32 self.part2 self.y (+ self.x 18s))
0x0001E0:
    if !(== self.type 12s) goto 0x000588
0x0001F4:
    self.part1 = 236s
    self.part2 = 237s
    self.part3 = 233s
    self.mypart1 = (instance_create[]:int32 self.part1 (- self.y 6s) self.x)
    self.mypart2 = (instance_create[]:int32 self.part2 (- self.y 6s) self.x)
    stog.gift[0s] = (floor[]:int32 (random[]:int32 (var 7s)))
    stog.gift[1s] = (floor[]:int32 (random[]:int32 (var 7s)))
    stog.gift[2s] = (floor[]:int32 (random[]:int32 (var 7s)))
    push -1s
    push 1s:gift
    if !(== -1s 0s:gift) goto 0x00033C
0x000318:
    push -1s
    stog.gift[(+ 1s:gift 1s)] = 1s
0x00033C:
    push -1s
    push 2s:gift
    if !(== -1s 0s:gift) goto 0x000388
0x000364:
    push -1s
    stog.gift[(+ 2s:gift 1s)] = 2s
0x000388:
    push -1s
    push 2s:gift
    if !(== -1s 1s:gift) goto 0x0003C4
0x0003B0:
    stog.gift[2s] = 0s
0x0003C4:
    push -1s
    push 2s:gift
    if !(== -1s 0s:gift) goto 0x000410
0x0003EC:
    push -1s
    stog.gift[(+ 2s:gift 1s)] = 2s
0x000410:
    self.mypart3 = (instance_create[]:int32 self.part3 (- self.y 6s) self.x)
    push -1s
    push 0s:gift
    stog.gift* = (int32 self.mypart3)
    self.mypart4 = (instance_create[]:int32 self.part3 (- self.y 6s) self.x)
    push -1s
    push 1s:gift
    stog.gift* = (int32 self.mypart4)
    self.mypart8 = (instance_create[]:int32 self.part3 (- self.y 6s) self.x)
    push -1s
    push 2s:gift
    stog.gift* = (int32 self.mypart8)
    push -5s
    if !(== 138s:flag 1s) goto 0x000588
0x000528:
    pushenv (int32 self.mypart3) 0x000544
0x000538:
    self.visible = 0s
0x000544:
    popenv 0x000538
0x000548:
    pushenv (int32 self.mypart4) 0x000564
0x000558:
    self.visible = 0s
0x000564:
    popenv 0x000558
0x000568:
    pushenv (int32 self.mypart8) 0x000584
0x000578:
    self.visible = 0s
0x000584:
    popenv 0x000578
0x000588:
    if !(== self.type 13s) goto 0x0006F0
0x00059C:
    self.part2 = 251s
    self.part3 = 250s
    self.part4 = 249s
    self.part1 = (scr_marker[]:int32 (var 219s) (- self.y 12s) (- self.x 6s))
    push 2s
    stog.image_xscale* = (int32 self.part1)
    push 2s
    stog.image_yscale* = (int32 self.part1)
    push 0.25d
    stog.image_speed* = (int32 self.part1)
    self.mypart2 = (instance_create[]:int32 self.part2 (- self.y 12s) (- self.x 6s))
    self.mypart3 = (instance_create[]:int32 self.part3 (- self.y 12s) (- self.x 6s))
    self.mypart4 = (instance_create[]:int32 self.part4 (- self.y 12s) (- self.x 6s))
0x0006F0:
    if !(== self.type 14s) goto 0x0007D4
0x000704:
    self.part1 = 241s
    self.part2 = 243s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    self.mypart2 = (instance_create[]:int32 self.part2 self.y self.x)
    self.part1 = 242s
    self.part2 = 244s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    self.mypart2 = (instance_create[]:int32 self.part2 self.y self.x)
0x0007D4:
    if !(== self.type 15s) goto 0x00080C
0x0007E8:
    call (instance_create[]:int32 (var 258s) self.y self.x)
0x00080C:
    if !(== self.type 16s) goto 0x00087C
0x000820:
    self.ab = (instance_create[]:int32 (var 290s) self.y self.x)
    push -5s
    if !(== 95s:flag 1s) goto 0x00087C
0x000864:
    push 249s
    stog.sprite_index* = (int32 self.ab)
0x00087C:
    if !(== self.type 17s) goto 0x000944
0x000890:
    self.emotion = 0s
    push -5s
    if !(== 81s:flag 2s) goto 0x0008C4
0x0008B8:
    self.emotion = 1s
0x0008C4:
    self.part1 = 260s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    push self.id
    stog.creator* = (int32 self.part1)
    self.agent = (instance_create[]:int32 (var 261s) (+ self.y 3s) self.x)
0x000944:
    if !(== self.type 18s) goto 0x00097C
0x000958:
    call (instance_create[]:int32 (var 294s) self.y self.x)
0x00097C:
    if !(== self.type 19s) goto 0x0009D8
0x000990:
    self.msx = (instance_create[]:int32 (var 295s) (+ self.y 120s) self.x)
    stog.idealborder[2s] = 99999
0x0009D8:
    if !(== self.type 20s) goto 0x000A24
0x0009EC:
    self.dummy = (instance_create[]:int32 (var 288s) (+ self.y 50s) (+ self.x 60s))
0x000A24:
    if !(== self.type 21s) goto 0x000ADC
0x000A38:
    self.bara1 = (instance_create[]:int32 (var 318s) (+ self.y 22s) self.x)
    push 364s
    stog.headpic* = (int32 self.bara1)
    self.bara2 = (instance_create[]:int32 (var 318s) (+ self.y 22s) (+ self.x 210s))
    push 365s
    stog.headpic* = (int32 self.bara2)
    self.bd = 0s
0x000ADC:
    if !(== self.type 22s) goto 0x000B20
0x000AF0:
    self.vulkin = (instance_create[]:int32 (var 336s) (- self.y 10s) self.x)
0x000B20:
    if !(== self.type 23s) goto 0x000B8C
0x000B34:
    self.graze = 0s
    self.plane = (instance_create[]:int32 (var 329s) (+ self.y 10s) self.x)
    push self.id
    stog.parent* = (int32 self.plane)
0x000B8C:
    if !(== self.type 24s) goto 0x000BEC
0x000BA0:
    self.pyrope = (instance_create[]:int32 (var 342s) (+ self.y 70s) self.x)
    push self.id
    stog.parent* = (int32 self.pyrope)
0x000BEC:
    if !(== self.type 25s) goto 0x000C4C
0x000C00:
    self.spider = (instance_create[]:int32 (var 362s) self.y (+ self.x 55s))
    push self.id
    stog.parent* = (int32 self.spider)
0x000C4C:
    if !(== self.type 26s) goto 0x000CCC
0x000C60:
    self.stare1 = 0s
    self.stare2 = 0s
    self.madjick = (instance_create[]:int32 (var 368s) (+ self.y 80s) (+ self.x 30s))
    push self.id
    stog.parent* = (int32 self.madjick)
0x000CCC:
    if !(== self.type 27s) goto 0x000D2C
0x000CE0:
    self.knight = (instance_create[]:int32 (var 379s) self.y (+ self.x 50s))
    push self.id
    stog.parent* = (int32 self.knight)
0x000D2C:
    if !(== self.type 28s) goto 0x000D8C
0x000D40:
    self.frog = (instance_create[]:int32 (var 386s) self.y (- self.x 10s))
    push self.id
    stog.parent* = (int32 self.frog)
0x000D8C:
    if !(== self.type 29s) goto 0x000DE4
0x000DA0:
    self.knight = (instance_create[]:int32 (var 396s) self.y self.x)
    push self.id
    stog.parent* = (int32 self.knight)
0x000DE4:
    if !(== self.type 30s) goto 0x000E3C
0x000DF8:
    self.eye = (instance_create[]:int32 (var 388s) self.y self.x)
    push self.id
    stog.parent* = (int32 self.eye)
0x000E3C:
    if !(== self.type 31s) goto 0x000E78
0x000E50:
    self.aa = (instance_create[]:int32 (var 553s) self.y self.x)
0x000E78:
    if !(== self.type 32s) goto 0x000EC4
0x000E8C:
    self.aa = (instance_create[]:int32 (var 549s) (- self.y 10s) (- self.x 10s))
0x000EC4:
    if !(== self.type 33s) goto 0x000F28
0x000ED8:
    self.aa = (instance_create[]:int32 (var 556s) (+ self.y 40s) (- self.x 20s))
    push 1s
    stog.spared* = (int32 self.aa)
0x000F28:
    if !(== self.type 34s) goto 0x000F6C
0x000F3C:
    self.aa = (instance_create[]:int32 (var 529s) (- self.y 10s) self.x)
0x000F6C:
    exit
