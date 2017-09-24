0x000000:
    self.i = 0s
    if !(< self.i 8s) goto 0x000C88
0x000020:
    push -5s
    self.itemid = (int32 self.i):item
    stog.value[(int32 self.i)] = 0s
    if (== self.itemid 1s) goto 0x000468
0x000074:
    if (== self.itemid 2s) goto 0x000488
0x000084:
    if (== self.itemid 3s) goto 0x0004A8
0x000094:
    if (== self.itemid 4s) goto 0x0004C8
0x0000A4:
    if (== self.itemid 5s) goto 0x0004E8
0x0000B4:
    if (== self.itemid 6s) goto 0x000508
0x0000C4:
    if (== self.itemid 7s) goto 0x000528
0x0000D4:
    if (== self.itemid 8s) goto 0x000548
0x0000E4:
    if (== self.itemid 9s) goto 0x000568
0x0000F4:
    if (== self.itemid 10s) goto 0x000588
0x000104:
    if (== self.itemid 11s) goto 0x0005A8
0x000114:
    if (== self.itemid 12s) goto 0x0005C8
0x000124:
    if (== self.itemid 13s) goto 0x0005E8
0x000134:
    if (== self.itemid 14s) goto 0x000608
0x000144:
    if (== self.itemid 15s) goto 0x000628
0x000154:
    if (== self.itemid 16s) goto 0x000648
0x000164:
    if (== self.itemid 17s) goto 0x000668
0x000174:
    if (== self.itemid 18s) goto 0x000688
0x000184:
    if (== self.itemid 19s) goto 0x0006A8
0x000194:
    if (== self.itemid 20s) goto 0x0006C8
0x0001A4:
    if (== self.itemid 21s) goto 0x0006E8
0x0001B4:
    if (== self.itemid 22s) goto 0x000708
0x0001C4:
    if (== self.itemid 23s) goto 0x000728
0x0001D4:
    if (== self.itemid 24s) goto 0x000748
0x0001E4:
    if (== self.itemid 25s) goto 0x000768
0x0001F4:
    if (== self.itemid 26s) goto 0x000788
0x000204:
    if (== self.itemid 27s) goto 0x0007A8
0x000214:
    if (== self.itemid 28s) goto 0x0007C8
0x000224:
    if (== self.itemid 29s) goto 0x0007E8
0x000234:
    if (== self.itemid 30s) goto 0x000808
0x000244:
    if (== self.itemid 31s) goto 0x000828
0x000254:
    if (== self.itemid 32s) goto 0x000848
0x000264:
    if (== self.itemid 33s) goto 0x000868
0x000274:
    if (== self.itemid 34s) goto 0x000888
0x000284:
    if (== self.itemid 35s) goto 0x0008A8
0x000294:
    if (== self.itemid 36s) goto 0x0008C8
0x0002A4:
    if (== self.itemid 37s) goto 0x0008E8
0x0002B4:
    if (== self.itemid 38s) goto 0x000908
0x0002C4:
    if (== self.itemid 39s) goto 0x000928
0x0002D4:
    if (== self.itemid 40s) goto 0x000948
0x0002E4:
    if (== self.itemid 41s) goto 0x000968
0x0002F4:
    if (== self.itemid 42s) goto 0x000988
0x000304:
    if (== self.itemid 43s) goto 0x0009A8
0x000314:
    if (== self.itemid 44s) goto 0x0009C8
0x000324:
    if (== self.itemid 45s) goto 0x0009E8
0x000334:
    if (== self.itemid 46s) goto 0x000A08
0x000344:
    if (== self.itemid 47s) goto 0x000A28
0x000354:
    if (== self.itemid 48s) goto 0x000A48
0x000364:
    if (== self.itemid 49s) goto 0x000A68
0x000374:
    if (== self.itemid 50s) goto 0x000A88
0x000384:
    if (== self.itemid 51s) goto 0x000AA8
0x000394:
    if (== self.itemid 52s) goto 0x000AC8
0x0003A4:
    if (== self.itemid 53s) goto 0x000AE8
0x0003B4:
    if (== self.itemid 54s) goto 0x000B08
0x0003C4:
    if (== self.itemid 55s) goto 0x000B28
0x0003D4:
    if (== self.itemid 56s) goto 0x000B48
0x0003E4:
    if (== self.itemid 57s) goto 0x000B68
0x0003F4:
    if (== self.itemid 58s) goto 0x000B88
0x000404:
    if (== self.itemid 59s) goto 0x000BA8
0x000414:
    if (== self.itemid 60s) goto 0x000BC8
0x000424:
    if (== self.itemid 61s) goto 0x000BE8
0x000434:
    if (== self.itemid 62s) goto 0x000C08
0x000444:
    if (== self.itemid 63s) goto 0x000C28
0x000454:
    if (== self.itemid 64s) goto 0x000C48
0x000464:
    push self.itemid
    goto 0x000C68
0x000468:
    stog.value[(int32 self.i)] = 25s
    goto 0x000C68
0x000488:
    stog.value[(int32 self.i)] = 10s
    goto 0x000C68
0x0004A8:
    stog.value[(int32 self.i)] = 150s
    goto 0x000C68
0x0004C8:
    stog.value[(int32 self.i)] = 150s
    goto 0x000C68
0x0004E8:
    stog.value[(int32 self.i)] = 3s
    goto 0x000C68
0x000508:
    stog.value[(int32 self.i)] = 3s
    goto 0x000C68
0x000528:
    stog.value[(int32 self.i)] = 30s
    goto 0x000C68
0x000548:
    stog.value[(int32 self.i)] = 10s
    goto 0x000C68
0x000568:
    stog.value[(int32 self.i)] = 10s
    goto 0x000C68
0x000588:
    stog.value[(int32 self.i)] = 60s
    goto 0x000C68
0x0005A8:
    stog.value[(int32 self.i)] = 180s
    goto 0x000C68
0x0005C8:
    stog.value[(int32 self.i)] = 100s
    goto 0x000C68
0x0005E8:
    stog.value[(int32 self.i)] = 100s
    goto 0x000C68
0x000608:
    stog.value[(int32 self.i)] = 50s
    goto 0x000C68
0x000628:
    stog.value[(int32 self.i)] = 50s
    goto 0x000C68
0x000648:
    stog.value[(int32 self.i)] = 40s
    goto 0x000C68
0x000668:
    stog.value[(int32 self.i)] = 2s
    goto 0x000C68
0x000688:
    stog.value[(int32 self.i)] = 2s
    goto 0x000C68
0x0006A8:
    stog.value[(int32 self.i)] = 5s
    goto 0x000C68
0x0006C8:
    stog.value[(int32 self.i)] = 2s
    goto 0x000C68
0x0006E8:
    stog.value[(int32 self.i)] = 8s
    goto 0x000C68
0x000708:
    stog.value[(int32 self.i)] = 2s
    goto 0x000C68
0x000728:
    stog.value[(int32 self.i)] = 76s
    goto 0x000C68
0x000748:
    stog.value[(int32 self.i)] = 80s
    goto 0x000C68
0x000768:
    stog.value[(int32 self.i)] = 80s
    goto 0x000C68
0x000788:
    stog.value[(int32 self.i)] = 15s
    goto 0x000C68
0x0007A8:
    stog.value[(int32 self.i)] = 999s
    goto 0x000C68
0x0007C8:
    stog.value[(int32 self.i)] = 8s
    goto 0x000C68
0x0007E8:
    stog.value[(int32 self.i)] = 3s
    goto 0x000C68
0x000808:
    stog.value[(int32 self.i)] = 2s
    goto 0x000C68
0x000828:
    stog.value[(int32 self.i)] = 4s
    goto 0x000C68
0x000848:
    stog.value[(int32 self.i)] = 1s
    goto 0x000C68
0x000868:
    stog.value[(int32 self.i)] = 4s
    goto 0x000C68
0x000888:
    stog.value[(int32 self.i)] = 3s
    goto 0x000C68
0x0008A8:
    stog.value[(int32 self.i)] = 25s
    goto 0x000C68
0x0008C8:
    stog.value[(int32 self.i)] = 50s
    goto 0x000C68
0x0008E8:
    stog.value[(int32 self.i)] = 5s
    goto 0x000C68
0x000908:
    stog.value[(int32 self.i)] = 10s
    goto 0x000C68
0x000928:
    stog.value[(int32 self.i)] = 11s
    goto 0x000C68
0x000948:
    stog.value[(int32 self.i)] = 15s
    goto 0x000C68
0x000968:
    stog.value[(int32 self.i)] = 5s
    goto 0x000C68
0x000988:
    stog.value[(int32 self.i)] = 10s
    goto 0x000C68
0x0009A8:
    stog.value[(int32 self.i)] = 40s
    goto 0x000C68
0x0009C8:
    stog.value[(int32 self.i)] = 50s
    goto 0x000C68
0x0009E8:
    stog.value[(int32 self.i)] = 50s
    goto 0x000C68
0x000A08:
    stog.value[(int32 self.i)] = 100s
    goto 0x000C68
0x000A28:
    stog.value[(int32 self.i)] = 100s
    goto 0x000C68
0x000A48:
    stog.value[(int32 self.i)] = 100s
    goto 0x000C68
0x000A68:
    stog.value[(int32 self.i)] = 100s
    goto 0x000C68
0x000A88:
    stog.value[(int32 self.i)] = 250s
    goto 0x000C68
0x000AA8:
    stog.value[(int32 self.i)] = 250s
    goto 0x000C68
0x000AC8:
    stog.value[(int32 self.i)] = 500s
    goto 0x000C68
0x000AE8:
    stog.value[(int32 self.i)] = 500s
    goto 0x000C68
0x000B08:
    stog.value[(int32 self.i)] = 300s
    goto 0x000C68
0x000B28:
    stog.value[(int32 self.i)] = 250s
    goto 0x000C68
0x000B48:
    stog.value[(int32 self.i)] = -1s
    goto 0x000C68
0x000B68:
    stog.value[(int32 self.i)] = -1s
    goto 0x000C68
0x000B88:
    stog.value[(int32 self.i)] = 35s
    goto 0x000C68
0x000BA8:
    stog.value[(int32 self.i)] = 1s
    goto 0x000C68
0x000BC8:
    stog.value[(int32 self.i)] = -1s
    goto 0x000C68
0x000BE8:
    stog.value[(int32 self.i)] = 14s
    goto 0x000C68
0x000C08:
    stog.value[(int32 self.i)] = 150s
    goto 0x000C68
0x000C28:
    stog.value[(int32 self.i)] = 350s
    goto 0x000C68
0x000C48:
    stog.value[(int32 self.i)] = 500s
    goto 0x000C68
0x000C68:
    pop
    self.i = (+ self.i 1s)
    goto 0x00000C
0x000C88:
    exit
