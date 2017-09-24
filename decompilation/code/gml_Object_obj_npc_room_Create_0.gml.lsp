0x000000:
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 270s
    self.talkedto = 0s
    self.image_speed = 0s
    if !(== self.room 225s) goto 0x00005C
0x000050:
    self.sprite_index = 1889s
0x00005C:
    if !(== self.room 90s) goto 0x00007C
0x000070:
    self.sprite_index = 1469s
0x00007C:
    if !(== self.room 89s) goto 0x00009C
0x000090:
    self.sprite_index = 1606s
0x00009C:
    if !(== self.room 85s) goto 0x0000E4
0x0000B0:
    self.sprite_index = 1551s
    push -5s
    if !(== 105s:flag 1s) goto 0x0000E4
0x0000D8:
    call (instance_destroy[]:int32 )
0x0000E4:
    if !(== self.room 94s) goto 0x000104
0x0000F8:
    self.sprite_index = 1608s
0x000104:
    if !(== self.room 98s) goto 0x000158
0x000118:
    self.sprite_index = 1550s
    self.visible = 0s
    push -5s
    if !(== 106s:flag 1s) goto 0x000158
0x00014C:
    call (instance_destroy[]:int32 )
0x000158:
    if !(== self.room 76s) goto 0x000178
0x00016C:
    self.sprite_index = 1629s
0x000178:
    if !(== self.room 117s) goto 0x0001C0
0x00018C:
    self.sprite_index = 1180s
    push -5s
    if !(== 252s:flag 1s) goto 0x0001C0
0x0001B4:
    call (instance_destroy[]:int32 )
0x0001C0:
    if !(== self.room 122s) goto 0x000200
0x0001D4:
    self.sprite_index = 1567s
    if !(>= (scr_murderlv[]:int32 ) 9s) goto 0x000200
0x0001F4:
    call (instance_destroy[]:int32 )
0x000200:
    if !(== self.room 91s) goto 0x000228
0x000214:
    push (< global.plot 110s)
    goto 0x00022C
0x000228:
    push 0s
0x00022C:
    if !pop goto 0x00023C
0x000230:
    call (instance_destroy[]:int32 )
0x00023C:
    if !(== self.room 95s) goto 0x000294
0x000250:
    self.sprite_index = 1546s
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x00027C
0x000270:
    call (instance_destroy[]:int32 )
0x00027C:
    self.y = (+ self.y 10s)
0x000294:
    if !(== self.room 149s) goto 0x000308
0x0002A8:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0002C8
0x0002BC:
    call (instance_destroy[]:int32 )
0x0002C8:
    self.sprite_index = 1681s
    if !(== self.id (instance_find[]:int32 (var 1s) self.object_index)) goto 0x000308
0x0002FC:
    self.sprite_index = 1680s
0x000308:
    if !(== self.room 151s) goto 0x00037C
0x00031C:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x00033C
0x000330:
    call (instance_destroy[]:int32 )
0x00033C:
    self.sprite_index = 1679s
    if !(== self.id (instance_find[]:int32 (var 1s) self.object_index)) goto 0x00037C
0x000370:
    self.sprite_index = 1678s
0x00037C:
    if !(== self.room 146s) goto 0x0003C4
0x000390:
    self.sprite_index = 1845s
    push -5s
    if !(== 110s:flag 1s) goto 0x0003C4
0x0003B8:
    call (instance_destroy[]:int32 )
0x0003C4:
    if !(== self.room 161s) goto 0x00040C
0x0003D8:
    self.sprite_index = 1846s
    push -5s
    if !(== 111s:flag 1s) goto 0x00040C
0x000400:
    call (instance_destroy[]:int32 )
0x00040C:
    if !(== self.room 96s) goto 0x00045C
0x000420:
    self.sprite_index = 1267s
    self.x = (+ self.x 10s)
    self.y = (+ self.y 20s)
0x00045C:
    if (== self.room 206s) goto 0x000484
0x000470:
    push (== self.room 207s)
    goto 0x000488
0x000484:
    push 1s
0x000488:
    if !pop goto 0x000498
0x00048C:
    self.sprite_index = 1624s
0x000498:
    if !(== self.room 238s) goto 0x0005D0
0x0004AC:
    self.q = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.fcheck1 = (ini_read_real[]:int32 (var 0s) (var "K") (var "Flowey"))
    self.fcheck2 = (ini_read_real[]:int32 (var 0s) (var "E") (var "FFFFF"))
    call (ini_close[]:int32 )
    push -5s
    if !(== 475s:flag 1s) goto 0x000564
0x000558:
    self.q = 1s
0x000564:
    if !(== self.fcheck1 1s) goto 0x00058C
0x000578:
    push (== self.fcheck2 2s)
    goto 0x000590
0x00058C:
    push 0s
0x000590:
    if !pop goto 0x0005A0
0x000594:
    self.q = 1s
0x0005A0:
    if !(== self.q 1s) goto 0x0005C4
0x0005B4:
    self.sprite_index = 1096s
    goto 0x0005D0
0x0005C4:
    call (instance_destroy[]:int32 )
0x0005D0:
    if !(== self.room 139s) goto 0x000644
0x0005E4:
    if !(< self.y 70s) goto 0x000644
0x0005F8:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000618
0x00060C:
    call (instance_destroy[]:int32 )
0x000618:
    self.sprite_index = 1840s
    if !(>= global.plot 136s) goto 0x000644
0x000638:
    call (instance_destroy[]:int32 )
0x000644:
    if !(== self.room 223s) goto 0x000664
0x000658:
    self.sprite_index = 1890s
0x000664:
    if !(== self.room 224s) goto 0x000684
0x000678:
    self.sprite_index = 1899s
0x000684:
    if !(== self.room 251s) goto 0x0006B4
0x000698:
    self.image_blend = 8421504
    self.sprite_index = 1245s
0x0006B4:
    if !(== self.room 164s) goto 0x0006D4
0x0006C8:
    self.sprite_index = 1285s
0x0006D4:
    if !(== self.room 170s) goto 0x000714
0x0006E8:
    self.sprite_index = 1674s
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000714
0x000708:
    call (instance_destroy[]:int32 )
0x000714:
    if !(== self.room 78s) goto 0x00079C
0x000728:
    self.sprite_index = 1623s
    self.tread = (scr_marker[]:int32 (var 1623s) self.y self.x)
    pushenv (int32 self.tread) 0x00078C
0x00076C:
    call (scr_depth[]:int32 )
    self.image_speed = 0.2d
0x00078C:
    popenv 0x00076C
0x000790:
    self.visible = 0s
0x00079C:
    if !(== self.room 83s) goto 0x0007DC
0x0007B0:
    self.sprite_index = 1543s
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x0007DC
0x0007D0:
    call (instance_destroy[]:int32 )
0x0007DC:
    if !(== self.room 48s) goto 0x0007FC
0x0007F0:
    self.sprite_index = 2148s
0x0007FC:
    if !(== self.room 119s) goto 0x00081C
0x000810:
    self.sprite_index = 1665s
0x00081C:
    if !(== self.room 266s) goto 0x00083C
0x000830:
    self.sprite_index = 1770s
0x00083C:
    if !(== self.room 184s) goto 0x0008D0
0x000850:
    if !(> self.x 500s) goto 0x000870
0x000864:
    self.sprite_index = 1966s
0x000870:
    if !(> self.x 600s) goto 0x000890
0x000884:
    self.sprite_index = 1965s
0x000890:
    if !(> self.x 780s) goto 0x0008B0
0x0008A4:
    self.sprite_index = 1971s
0x0008B0:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0008D0
0x0008C4:
    call (instance_destroy[]:int32 )
0x0008D0:
    if !(== self.room 178s) goto 0x000958
0x0008E4:
    self.sprite_index = 1960s
    push -5s
    if !(== 7s:flag 1s) goto 0x000918
0x00090C:
    self.sprite_index = 1961s
0x000918:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000938
0x00092C:
    call (instance_destroy[]:int32 )
0x000938:
    if !(< global.plot 167s) goto 0x000958
0x00094C:
    call (instance_destroy[]:int32 )
0x000958:
    if !(== self.room 183s) goto 0x000998
0x00096C:
    self.sprite_index = 1970s
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000998
0x00098C:
    call (instance_destroy[]:int32 )
0x000998:
    if !(== self.room 158s) goto 0x000A20
0x0009AC:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0009CC
0x0009C0:
    call (instance_destroy[]:int32 )
0x0009CC:
    push -5s
    if !(== 67s:flag 1s) goto 0x0009F4
0x0009E8:
    call (instance_destroy[]:int32 )
0x0009F4:
    self.sprite_index = 1963s
    if !(> self.x 160s) goto 0x000A20
0x000A14:
    self.sprite_index = 1962s
0x000A20:
    if !(== self.room 128s) goto 0x000A60
0x000A34:
    self.sprite_index = 1947s
    if !(>= (scr_murderlv[]:int32 ) 10s) goto 0x000A60
0x000A54:
    call (instance_destroy[]:int32 )
0x000A60:
    exit
