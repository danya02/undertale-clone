0x000000:
    self.siner_o = 0s
    self.selected = 65s
    self.charname = ""
    self.naming = 3s
    self.selected2 = 0s
    self.selected3 = 0s
    self.q = 0s
    self.name = ""
    self.iniread = (ini_open[]:int32 (var "undertale.ini"))
    if !(bool (ini_section_exists[]:int32 (var "General"))) goto 0x000194
0x0000A0:
    self.name = (ini_read_string[]:int32 (var "") (var "Name") (var "General"))
    self.love = (ini_read_real[]:int32 (var 0s) (var "Love") (var "General"))
    self.time = (ini_read_real[]:int32 (var 0s) (var "Time") (var "General"))
    self.kills = (ini_read_real[]:int32 (var 0s) (var "Kills") (var "General"))
    self.roome = (ini_read_real[]:int32 (var 0s) (var "Room") (var "General"))
0x000194:
    self.hasname = 0s
    if !(!= self.name "") goto 0x0001C4
0x0001B8:
    self.hasname = 1s
0x0001C4:
    if !(== self.hasname 1s) goto 0x0001E8
0x0001D8:
    global.charname = self.name
0x0001E8:
    call (ini_close[]:int32 )
    call (ini_open[]:int32 (var "undertale.ini"))
    self.m2 = (file_exists[]:int32 (var "file0"))
    self.m3 = (ini_read_real[]:int32 (var 0s) (var "TK") (var "Toriel"))
    self.m4 = (ini_read_real[]:int32 (var 0s) (var "TS") (var "Toriel"))
    self.pd = (ini_read_real[]:int32 (var 0s) (var "PD") (var "Papyrus"))
    self.ud = (ini_read_real[]:int32 (var 0s) (var "UD") (var "Undyne"))
    self.ad = (ini_read_real[]:int32 (var 0s) (var "AD") (var "Alphys"))
    self.fd = (ini_read_real[]:int32 (var 0s) (var "F7") (var "F7"))
    self.fk = (ini_read_real[]:int32 (var 0s) (var "K") (var "Flowey"))
    self.truereset = (ini_read_real[]:int32 (var 0s) (var "EndF") (var "EndF"))
    call (ini_close[]:int32 )
    self.mlevel = 0s
    if !(> self.m2 0s) goto 0x000504
0x0003D4:
    if !(> self.m2 0s) goto 0x0003F4
0x0003E8:
    self.mlevel = 1s
0x0003F4:
    if !(> self.m4 0s) goto 0x000414
0x000408:
    self.mlevel = 2s
0x000414:
    if !(> self.pd 0s) goto 0x00043C
0x000428:
    push (== self.mlevel 2s)
    goto 0x000440
0x00043C:
    push 0s
0x000440:
    if !pop goto 0x000450
0x000444:
    self.mlevel = 3s
0x000450:
    if !(> self.ud 0s) goto 0x000478
0x000464:
    push (== self.mlevel 3s)
    goto 0x00047C
0x000478:
    push 0s
0x00047C:
    if !pop goto 0x00048C
0x000480:
    self.mlevel = 4s
0x00048C:
    if !(> self.ad 0s) goto 0x0004B4
0x0004A0:
    push (== self.mlevel 4s)
    goto 0x0004B8
0x0004B4:
    push 0s
0x0004B8:
    if !pop goto 0x0004C8
0x0004BC:
    self.mlevel = 5s
0x0004C8:
    if !(> self.fd 0s) goto 0x0004F0
0x0004DC:
    push (== self.mlevel 5s)
    goto 0x0004F4
0x0004F0:
    push 0s
0x0004F4:
    if !pop goto 0x000504
0x0004F8:
    self.mlevel = 6s
0x000504:
    if !(> self.truereset 0s) goto 0x000524
0x000518:
    self.mlevel = 7s
0x000524:
    if !(== self.mlevel 0s) goto 0x000544
0x000538:
    self.menusong = 219s
0x000544:
    if !(== self.mlevel 1s) goto 0x000564
0x000558:
    self.menusong = 220s
0x000564:
    if !(== self.mlevel 2s) goto 0x000584
0x000578:
    self.menusong = 221s
0x000584:
    if !(== self.mlevel 3s) goto 0x0005A4
0x000598:
    self.menusong = 222s
0x0005A4:
    if !(== self.mlevel 4s) goto 0x0005C4
0x0005B8:
    self.menusong = 223s
0x0005C4:
    if !(== self.mlevel 5s) goto 0x0005E4
0x0005D8:
    self.menusong = 224s
0x0005E4:
    if !(== self.mlevel 6s) goto 0x000604
0x0005F8:
    self.menusong = 225s
0x000604:
    if !(== self.mlevel 7s) goto 0x000624
0x000618:
    self.menusong = 219s
0x000624:
    if !(>= self.mlevel 0s) goto 0x00064C
0x000638:
    push (<= self.mlevel 6s)
    goto 0x000650
0x00064C:
    push 0s
0x000650:
    if !pop goto 0x000680
0x000654:
    call (caster_loop[]:int32 (var 1s) (var 0.6d) self.menusong)
0x000680:
    if !(== self.mlevel 7s) goto 0x0006C8
0x000694:
    call (caster_loop[]:int32 (var 0.1d) (var 0.1d) self.menusong)
0x0006C8:
    exit
