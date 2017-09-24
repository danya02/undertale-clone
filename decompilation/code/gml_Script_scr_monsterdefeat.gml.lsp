0x000000:
    if !(== self.killed 1s) goto 0x000C2C
0x000014:
    push -5s
    push 3s
    stog.xpreward[3s:xpreward] = (+ -5s (int32 self.myself):xpreward)
    push -5s
    push 3s
    stog.goldreward[3s:goldreward] = (+ -5s (int32 self.myself):goldreward)
    global.vaporspeed = 0s
    global.monstersprite = self.sprite_index
    self.ddd = (instance_create[]:int32 (var 155s) self.y self.x)
    if !(== self.object_index 224s) goto 0x000104
0x0000DC:
    pushenv (int32 self.ddd) 0x000100
0x0000EC:
    call (scr_newvapordata[]:int32 (var 1s))
0x000100:
    popenv 0x0000EC
0x000104:
    if !(== self.object_index 235s) goto 0x000140
0x000118:
    pushenv (int32 self.ddd) 0x00013C
0x000128:
    call (scr_newvapordata[]:int32 (var 2s))
0x00013C:
    popenv 0x000128
0x000140:
    if !(== self.object_index 216s) goto 0x00017C
0x000154:
    pushenv (int32 self.ddd) 0x000178
0x000164:
    call (scr_newvapordata[]:int32 (var 3s))
0x000178:
    popenv 0x000164
0x00017C:
    if !(== self.object_index 217s) goto 0x0001B8
0x000190:
    pushenv (int32 self.ddd) 0x0001B4
0x0001A0:
    call (scr_newvapordata[]:int32 (var 4s))
0x0001B4:
    popenv 0x0001A0
0x0001B8:
    if !(== self.object_index 220s) goto 0x0001F4
0x0001CC:
    pushenv (int32 self.ddd) 0x0001F0
0x0001DC:
    call (scr_newvapordata[]:int32 (var 5s))
0x0001F0:
    popenv 0x0001DC
0x0001F4:
    if !(== self.object_index 245s) goto 0x000230
0x000208:
    pushenv (int32 self.ddd) 0x00022C
0x000218:
    call (scr_newvapordata[]:int32 (var 6s))
0x00022C:
    popenv 0x000218
0x000230:
    if !(== self.object_index 246s) goto 0x00026C
0x000244:
    pushenv (int32 self.ddd) 0x000268
0x000254:
    call (scr_newvapordata[]:int32 (var 7s))
0x000268:
    popenv 0x000254
0x00026C:
    if !(== self.object_index 247s) goto 0x0002A8
0x000280:
    pushenv (int32 self.ddd) 0x0002A4
0x000290:
    call (scr_newvapordata[]:int32 (var 8s))
0x0002A4:
    popenv 0x000290
0x0002A8:
    if !(== self.object_index 230s) goto 0x0002E4
0x0002BC:
    pushenv (int32 self.ddd) 0x0002E0
0x0002CC:
    call (scr_newvapordata[]:int32 (var 9s))
0x0002E0:
    popenv 0x0002CC
0x0002E4:
    if !(== self.object_index 229s) goto 0x000320
0x0002F8:
    pushenv (int32 self.ddd) 0x00031C
0x000308:
    call (scr_newvapordata[]:int32 (var 10s))
0x00031C:
    popenv 0x000308
0x000320:
    if !(== self.object_index 259s) goto 0x00035C
0x000334:
    pushenv (int32 self.ddd) 0x000358
0x000344:
    call (scr_newvapordata[]:int32 (var 11s))
0x000358:
    popenv 0x000344
0x00035C:
    if (== self.object_index 252s) goto 0x000384
0x000370:
    push (== self.object_index 253s)
    goto 0x000388
0x000384:
    push 1s
0x000388:
    if !pop goto 0x0003B4
0x00038C:
    pushenv (int32 self.ddd) 0x0003B0
0x00039C:
    call (scr_newvapordata[]:int32 (var 12s))
0x0003B0:
    popenv 0x00039C
0x0003B4:
    if !(== self.object_index 291s) goto 0x0003F0
0x0003C8:
    pushenv (int32 self.ddd) 0x0003EC
0x0003D8:
    call (scr_newvapordata[]:int32 (var 13s))
0x0003EC:
    popenv 0x0003D8
0x0003F0:
    if !(== self.object_index 273s) goto 0x00042C
0x000404:
    pushenv (int32 self.ddd) 0x000428
0x000414:
    call (scr_newvapordata[]:int32 (var 14s))
0x000428:
    popenv 0x000414
0x00042C:
    if !(== self.object_index 256s) goto 0x000468
0x000440:
    pushenv (int32 self.ddd) 0x000464
0x000450:
    call (scr_newvapordata[]:int32 (var 15s))
0x000464:
    popenv 0x000450
0x000468:
    if (== self.object_index 213s) goto 0x000490
0x00047C:
    push (== self.object_index 203s)
    goto 0x000494
0x000490:
    push 1s
0x000494:
    if !pop goto 0x0004C0
0x000498:
    pushenv (int32 self.ddd) 0x0004BC
0x0004A8:
    call (scr_newvapordata[]:int32 (var 16s))
0x0004BC:
    popenv 0x0004A8
0x0004C0:
    if !(== self.object_index 206s) goto 0x0004FC
0x0004D4:
    pushenv (int32 self.ddd) 0x0004F8
0x0004E4:
    call (scr_newvapordata[]:int32 (var 17s))
0x0004F8:
    popenv 0x0004E4
0x0004FC:
    if !(== self.object_index 212s) goto 0x000538
0x000510:
    pushenv (int32 self.ddd) 0x000534
0x000520:
    call (scr_newvapordata[]:int32 (var 18s))
0x000534:
    popenv 0x000520
0x000538:
    if !(== self.object_index 207s) goto 0x000574
0x00054C:
    pushenv (int32 self.ddd) 0x000570
0x00055C:
    call (scr_newvapordata[]:int32 (var 19s))
0x000570:
    popenv 0x00055C
0x000574:
    if !(== self.object_index 209s) goto 0x0005B0
0x000588:
    pushenv (int32 self.ddd) 0x0005AC
0x000598:
    call (scr_newvapordata[]:int32 (var 20s))
0x0005AC:
    popenv 0x000598
0x0005B0:
    if !(== self.object_index 208s) goto 0x0005EC
0x0005C4:
    pushenv (int32 self.ddd) 0x0005E8
0x0005D4:
    call (scr_newvapordata[]:int32 (var 21s))
0x0005E8:
    popenv 0x0005D4
0x0005EC:
    if !(== self.object_index 211s) goto 0x000628
0x000600:
    pushenv (int32 self.ddd) 0x000624
0x000610:
    call (scr_newvapordata[]:int32 (var 22s))
0x000624:
    popenv 0x000610
0x000628:
    if !(== self.object_index 199s) goto 0x000664
0x00063C:
    pushenv (int32 self.ddd) 0x000660
0x00064C:
    call (scr_newvapordata[]:int32 (var 23s))
0x000660:
    popenv 0x00064C
0x000664:
    if !(== self.object_index 293s) goto 0x0006A0
0x000678:
    pushenv (int32 self.ddd) 0x00069C
0x000688:
    call (scr_newvapordata[]:int32 (var 18s))
0x00069C:
    popenv 0x000688
0x0006A0:
    if !(== self.object_index 337s) goto 0x0006DC
0x0006B4:
    pushenv (int32 self.ddd) 0x0006D8
0x0006C4:
    call (scr_newvapordata[]:int32 (var 24s))
0x0006D8:
    popenv 0x0006C4
0x0006DC:
    if !(== self.object_index 343s) goto 0x000718
0x0006F0:
    pushenv (int32 self.ddd) 0x000714
0x000700:
    call (scr_newvapordata[]:int32 (var 25s))
0x000714:
    popenv 0x000700
0x000718:
    if !(== self.object_index 309s) goto 0x000754
0x00072C:
    pushenv (int32 self.ddd) 0x000750
0x00073C:
    call (scr_newvapordata[]:int32 (var 26s))
0x000750:
    popenv 0x00073C
0x000754:
    if !(== self.object_index 310s) goto 0x000790
0x000768:
    pushenv (int32 self.ddd) 0x00078C
0x000778:
    call (scr_newvapordata[]:int32 (var 27s))
0x00078C:
    popenv 0x000778
0x000790:
    if !(== self.object_index 369s) goto 0x0007CC
0x0007A4:
    pushenv (int32 self.ddd) 0x0007C8
0x0007B4:
    call (scr_newvapordata[]:int32 (var 28s))
0x0007C8:
    popenv 0x0007B4
0x0007CC:
    if !(== self.object_index 378s) goto 0x000808
0x0007E0:
    pushenv (int32 self.ddd) 0x000804
0x0007F0:
    call (scr_newvapordata[]:int32 (var 29s))
0x000804:
    popenv 0x0007F0
0x000808:
    if !(== self.object_index 385s) goto 0x000844
0x00081C:
    pushenv (int32 self.ddd) 0x000840
0x00082C:
    call (scr_newvapordata[]:int32 (var 30s))
0x000840:
    popenv 0x00082C
0x000844:
    if !(== self.object_index 394s) goto 0x000880
0x000858:
    pushenv (int32 self.ddd) 0x00087C
0x000868:
    call (scr_newvapordata[]:int32 (var 31s))
0x00087C:
    popenv 0x000868
0x000880:
    if !(== self.object_index 387s) goto 0x0008BC
0x000894:
    pushenv (int32 self.ddd) 0x0008B8
0x0008A4:
    call (scr_newvapordata[]:int32 (var 32s))
0x0008B8:
    popenv 0x0008A4
0x0008BC:
    if !(== self.object_index 360s) goto 0x0008F8
0x0008D0:
    pushenv (int32 self.ddd) 0x0008F4
0x0008E0:
    call (scr_newvapordata[]:int32 (var 33s))
0x0008F4:
    popenv 0x0008E0
0x0008F8:
    if !(== self.object_index 595s) goto 0x000934
0x00090C:
    pushenv (int32 self.ddd) 0x000930
0x00091C:
    call (scr_newvapordata[]:int32 (var 36s))
0x000930:
    popenv 0x00091C
0x000934:
    if !(== self.object_index 597s) goto 0x000970
0x000948:
    pushenv (int32 self.ddd) 0x00096C
0x000958:
    call (scr_newvapordata[]:int32 (var 37s))
0x00096C:
    popenv 0x000958
0x000970:
    if !(== self.object_index 600s) goto 0x0009AC
0x000984:
    pushenv (int32 self.ddd) 0x0009A8
0x000994:
    call (scr_newvapordata[]:int32 (var 38s))
0x0009A8:
    popenv 0x000994
0x0009AC:
    if !(== self.object_index 228s) goto 0x0009E8
0x0009C0:
    pushenv (int32 self.ddd) 0x0009E4
0x0009D0:
    call (scr_newvapordata[]:int32 (var 39s))
0x0009E4:
    popenv 0x0009D0
0x0009E8:
    if !(== self.object_index 458s) goto 0x000A24
0x0009FC:
    pushenv (int32 self.ddd) 0x000A20
0x000A0C:
    call (scr_newvapordata[]:int32 (var 40s))
0x000A20:
    popenv 0x000A0C
0x000A24:
    if !(== self.object_index 218s) goto 0x000A60
0x000A38:
    pushenv (int32 self.ddd) 0x000A5C
0x000A48:
    call (scr_newvapordata[]:int32 (var 41s))
0x000A5C:
    popenv 0x000A48
0x000A60:
    push self.sprite_index
    stog.sprite_index* = (int32 self.ddd)
    push self.ht
    stog.ht* = (int32 self.ddd)
    push self.wd
    stog.wd* = (int32 self.ddd)
    if !(== self.object_index 252s) goto 0x000AE0
0x000AC8:
    push 210s
    stog.wd* = (int32 self.ddd)
0x000AE0:
    if !(== self.object_index 253s) goto 0x000B0C
0x000AF4:
    push 210s
    stog.wd* = (int32 self.ddd)
0x000B0C:
    if !(== self.object_index 199s) goto 0x000B38
0x000B20:
    push 106s
    stog.ht* = (int32 self.ddd)
0x000B38:
    if !(== self.object_index 212s) goto 0x000B64
0x000B4C:
    push 84s
    stog.ht* = (int32 self.ddd)
0x000B64:
    push 0s
    stog.image_speed* = (int32 self.ddd)
    push 1s
    stog.image_index* = (int32 self.ddd)
    global.kills = (+ global.kills 1s)
    push -5s
    stog.areapop[(- (int32 global.area):areapop 1s)] = (int32 global.area)
    push -5s
    if !(< (int32 global.area):areapop 0s) goto 0x000C18
0x000BFC:
    stog.areapop[(int32 global.area)] = 0s
0x000C18:
    stog.flag[12s] = 1s
0x000C2C:
    if !(== self.killed 0s) goto 0x000D74
0x000C40:
    push -5s
    push 3s
    push -5s
    push 3s:goldreward
    push -5s
    stog.goldreward[(+ (int32 self.myself):monstermaxhp (floor[]:int32 (* (- -5s (int32 self.myself):monsterhp) (/ -5s (int32 self.myself):monstermaxhp))))] = (int32 self.myself):goldreward
    global.monstersprite = self.sprite_index
    self.ddd = (instance_create[]:int32 (var 159s) self.y self.x)
    push 0s
    stog.image_speed* = (int32 self.ddd)
    push 1s
    stog.image_index* = (int32 self.ddd)
    stog.flag[10s] = 1s
    push -5s
    stog.flag[(+ 23s:flag 1s)] = 23s
0x000D74:
    stog.monster[(int32 self.myself)] = 0s
0x000D90:
    exit
