0x000000:
    if !(== self.fadeout 1s) goto 0x00026C
0x000014:
    self.curvol = (- self.curvol 0.02d)
    if !(== self.songplaying 2s) goto 0x000068
0x000048:
    self.curvol = (+ self.curvol 0.015d)
0x000068:
    if !(<= self.curvol 0s) goto 0x000088
0x00007C:
    self.curvol = 0s
0x000088:
    if !(== self.songplaying 1s) goto 0x0000B8
0x00009C:
    call (caster_set_volume[]:int32 self.curvol global.currentsong)
0x0000B8:
    if !(== self.songplaying 2s) goto 0x0000E8
0x0000CC:
    call (caster_set_volume[]:int32 self.curvol self.napstachords)
0x0000E8:
    if !(== self.songplaying 3s) goto 0x000118
0x0000FC:
    call (caster_set_volume[]:int32 self.curvol self.spoopy)
0x000118:
    if !(== self.songplaying 4s) goto 0x000148
0x00012C:
    call (caster_set_volume[]:int32 self.curvol self.spoopywave)
0x000148:
    if !(== self.songplaying 5s) goto 0x000178
0x00015C:
    call (caster_set_volume[]:int32 self.curvol self.spoopyholiday)
0x000178:
    if !(== self.curvol 0s) goto 0x00026C
0x00018C:
    if !(== self.songplaying 1s) goto 0x0001B4
0x0001A0:
    call (caster_stop[]:int32 global.currentsong)
0x0001B4:
    if !(== self.songplaying 2s) goto 0x0001DC
0x0001C8:
    call (caster_stop[]:int32 self.napstachords)
0x0001DC:
    if !(== self.songplaying 3s) goto 0x000204
0x0001F0:
    call (caster_stop[]:int32 self.spoopy)
0x000204:
    if !(== self.songplaying 4s) goto 0x00022C
0x000218:
    call (caster_stop[]:int32 self.spoopywave)
0x00022C:
    if !(== self.songplaying 5s) goto 0x000254
0x000240:
    call (caster_stop[]:int32 self.spoopyholiday)
0x000254:
    self.songplaying = 0s
    self.fadeout = 0s
0x00026C:
    if !(== self.fadeout 2s) goto 0x000404
0x000280:
    self.curvol = (+ self.curvol 0.02d)
    if !(== self.songplaying 2s) goto 0x0002D4
0x0002B4:
    self.curvol = (- self.curvol 0.015d)
0x0002D4:
    if !(>= self.curvol 1s) goto 0x0002F4
0x0002E8:
    self.curvol = 1s
0x0002F4:
    if !(== self.songplaying 1s) goto 0x000324
0x000308:
    call (caster_set_volume[]:int32 self.curvol global.currentsong)
0x000324:
    if !(== self.songplaying 2s) goto 0x000354
0x000338:
    call (caster_set_volume[]:int32 self.curvol self.napstachords)
0x000354:
    if !(== self.songplaying 3s) goto 0x000384
0x000368:
    call (caster_set_volume[]:int32 self.curvol self.spoopy)
0x000384:
    if !(== self.songplaying 4s) goto 0x0003B4
0x000398:
    call (caster_set_volume[]:int32 self.curvol self.spoopywave)
0x0003B4:
    if !(== self.songplaying 5s) goto 0x0003E4
0x0003C8:
    call (caster_set_volume[]:int32 self.curvol self.spoopyholiday)
0x0003E4:
    if !(== self.curvol 1s) goto 0x000404
0x0003F8:
    self.fadeout = 0s
0x000404:
    if !(== self.con 1s) goto 0x00053C
0x000418:
    stog.flag[94s] = 1s
    if !(== self.songplaying 1s) goto 0x000454
0x000440:
    call (caster_stop[]:int32 global.currentsong)
0x000454:
    if !(== self.songplaying 2s) goto 0x00047C
0x000468:
    call (caster_stop[]:int32 self.napstachords)
0x00047C:
    if !(== self.songplaying 3s) goto 0x0004A4
0x000490:
    call (caster_stop[]:int32 self.spoopy)
0x0004A4:
    if !(== self.songplaying 4s) goto 0x0004CC
0x0004B8:
    call (caster_stop[]:int32 self.spoopywave)
0x0004CC:
    if !(== self.songplaying 5s) goto 0x0004F4
0x0004E0:
    call (caster_stop[]:int32 self.spoopyholiday)
0x0004F4:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.spoopy)
    self.songplaying = 3s
    self.curvol = 1s
    self.con = 0s
0x00053C:
    if !(== self.con 2s) goto 0x000674
0x000550:
    stog.flag[94s] = 0s
    if !(== self.songplaying 1s) goto 0x00058C
0x000578:
    call (caster_stop[]:int32 global.currentsong)
0x00058C:
    if !(== self.songplaying 2s) goto 0x0005B4
0x0005A0:
    call (caster_stop[]:int32 self.napstachords)
0x0005B4:
    if !(== self.songplaying 3s) goto 0x0005DC
0x0005C8:
    call (caster_stop[]:int32 self.spoopy)
0x0005DC:
    if !(== self.songplaying 4s) goto 0x000604
0x0005F0:
    call (caster_stop[]:int32 self.spoopywave)
0x000604:
    if !(== self.songplaying 5s) goto 0x00062C
0x000618:
    call (caster_stop[]:int32 self.spoopyholiday)
0x00062C:
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    self.songplaying = 1s
    self.curvol = 1s
    self.con = 0s
0x000674:
    if !(== self.con 3s) goto 0x0007AC
0x000688:
    stog.flag[94s] = 2s
    if !(== self.songplaying 1s) goto 0x0006C4
0x0006B0:
    call (caster_stop[]:int32 global.currentsong)
0x0006C4:
    if !(== self.songplaying 2s) goto 0x0006EC
0x0006D8:
    call (caster_stop[]:int32 self.napstachords)
0x0006EC:
    if !(== self.songplaying 3s) goto 0x000714
0x000700:
    call (caster_stop[]:int32 self.spoopy)
0x000714:
    if !(== self.songplaying 4s) goto 0x00073C
0x000728:
    call (caster_stop[]:int32 self.spoopywave)
0x00073C:
    if !(== self.songplaying 5s) goto 0x000764
0x000750:
    call (caster_stop[]:int32 self.spoopyholiday)
0x000764:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.spoopywave)
    self.songplaying = 4s
    self.curvol = 1s
    self.con = 0s
0x0007AC:
    if !(== self.con 4s) goto 0x0008E4
0x0007C0:
    stog.flag[94s] = 3s
    if !(== self.songplaying 1s) goto 0x0007FC
0x0007E8:
    call (caster_stop[]:int32 global.currentsong)
0x0007FC:
    if !(== self.songplaying 2s) goto 0x000824
0x000810:
    call (caster_stop[]:int32 self.napstachords)
0x000824:
    if !(== self.songplaying 3s) goto 0x00084C
0x000838:
    call (caster_stop[]:int32 self.spoopy)
0x00084C:
    if !(== self.songplaying 4s) goto 0x000874
0x000860:
    call (caster_stop[]:int32 self.spoopywave)
0x000874:
    if !(== self.songplaying 5s) goto 0x00089C
0x000888:
    call (caster_stop[]:int32 self.spoopyholiday)
0x00089C:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.spoopyholiday)
    self.songplaying = 5s
    self.curvol = 1s
    self.con = 0s
0x0008E4:
    exit
