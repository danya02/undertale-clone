0x000000:
    if (== self.itemid 0s) goto 0x00041C
0x000018:
    if (== self.itemid 1s) goto 0x000440
0x000028:
    if (== self.itemid 2s) goto 0x000464
0x000038:
    if (== self.itemid 3s) goto 0x000488
0x000048:
    if (== self.itemid 4s) goto 0x0004AC
0x000058:
    if (== self.itemid 5s) goto 0x0004D0
0x000068:
    if (== self.itemid 6s) goto 0x0004F4
0x000078:
    if (== self.itemid 7s) goto 0x000518
0x000088:
    if (== self.itemid 8s) goto 0x00053C
0x000098:
    if (== self.itemid 9s) goto 0x000560
0x0000A8:
    if (== self.itemid 10s) goto 0x000584
0x0000B8:
    if (== self.itemid 11s) goto 0x0005A8
0x0000C8:
    if (== self.itemid 12s) goto 0x0005CC
0x0000D8:
    if (== self.itemid 13s) goto 0x0005F0
0x0000E8:
    if (== self.itemid 14s) goto 0x000614
0x0000F8:
    if (== self.itemid 15s) goto 0x000638
0x000108:
    if (== self.itemid 16s) goto 0x00065C
0x000118:
    if (== self.itemid 17s) goto 0x000680
0x000128:
    if (== self.itemid 18s) goto 0x0006A4
0x000138:
    if (== self.itemid 19s) goto 0x0006C8
0x000148:
    if (== self.itemid 20s) goto 0x0006EC
0x000158:
    if (== self.itemid 21s) goto 0x000710
0x000168:
    if (== self.itemid 22s) goto 0x000734
0x000178:
    if (== self.itemid 23s) goto 0x000758
0x000188:
    if (== self.itemid 24s) goto 0x00077C
0x000198:
    if (== self.itemid 25s) goto 0x0007A0
0x0001A8:
    if (== self.itemid 26s) goto 0x0007C4
0x0001B8:
    if (== self.itemid 27s) goto 0x0007E8
0x0001C8:
    if (== self.itemid 28s) goto 0x00080C
0x0001D8:
    if (== self.itemid 29s) goto 0x000830
0x0001E8:
    if (== self.itemid 30s) goto 0x000854
0x0001F8:
    if (== self.itemid 31s) goto 0x000878
0x000208:
    if (== self.itemid 32s) goto 0x00089C
0x000218:
    if (== self.itemid 33s) goto 0x0008C0
0x000228:
    if (== self.itemid 34s) goto 0x0008E4
0x000238:
    if (== self.itemid 35s) goto 0x000908
0x000248:
    if (== self.itemid 36s) goto 0x00092C
0x000258:
    if (== self.itemid 37s) goto 0x000950
0x000268:
    if (== self.itemid 38s) goto 0x000974
0x000278:
    if (== self.itemid 39s) goto 0x000998
0x000288:
    if (== self.itemid 40s) goto 0x0009BC
0x000298:
    if (== self.itemid 41s) goto 0x0009E0
0x0002A8:
    if (== self.itemid 42s) goto 0x000A04
0x0002B8:
    if (== self.itemid 43s) goto 0x000A28
0x0002C8:
    if (== self.itemid 44s) goto 0x000A4C
0x0002D8:
    if (== self.itemid 45s) goto 0x000A70
0x0002E8:
    if (== self.itemid 46s) goto 0x000A94
0x0002F8:
    if (== self.itemid 47s) goto 0x000AB8
0x000308:
    if (== self.itemid 48s) goto 0x000ADC
0x000318:
    if (== self.itemid 49s) goto 0x000B00
0x000328:
    if (== self.itemid 50s) goto 0x000B24
0x000338:
    if (== self.itemid 51s) goto 0x000B48
0x000348:
    if (== self.itemid 52s) goto 0x000B6C
0x000358:
    if (== self.itemid 53s) goto 0x000B90
0x000368:
    if (== self.itemid 54s) goto 0x000BB4
0x000378:
    if (== self.itemid 55s) goto 0x000BD8
0x000388:
    if (== self.itemid 56s) goto 0x000BFC
0x000398:
    if (== self.itemid 57s) goto 0x000C20
0x0003A8:
    if (== self.itemid 58s) goto 0x000C44
0x0003B8:
    if (== self.itemid 59s) goto 0x000C68
0x0003C8:
    if (== self.itemid 60s) goto 0x000C8C
0x0003D8:
    if (== self.itemid 61s) goto 0x000CB0
0x0003E8:
    if (== self.itemid 62s) goto 0x000CD4
0x0003F8:
    if (== self.itemid 63s) goto 0x000CF8
0x000408:
    if (== self.itemid 64s) goto 0x000D1C
0x000418:
    push self.itemid
    goto 0x000D40
0x00041C:
    stog.itemname[(int32 self.i)] = " "
    goto 0x000D40
0x000440:
    stog.itemname[(int32 self.i)] = "Monster Candy"
    goto 0x000D40
0x000464:
    stog.itemname[(int32 self.i)] = "Croquet Roll"
    goto 0x000D40
0x000488:
    stog.itemname[(int32 self.i)] = "Stick"
    goto 0x000D40
0x0004AC:
    stog.itemname[(int32 self.i)] = "Bandage"
    goto 0x000D40
0x0004D0:
    stog.itemname[(int32 self.i)] = "Rock Candy"
    goto 0x000D40
0x0004F4:
    stog.itemname[(int32 self.i)] = "Pumpkin Rings"
    goto 0x000D40
0x000518:
    stog.itemname[(int32 self.i)] = "Spider Donut"
    goto 0x000D40
0x00053C:
    stog.itemname[(int32 self.i)] = "Stoic Onion"
    goto 0x000D40
0x000560:
    stog.itemname[(int32 self.i)] = "Ghost Fruit"
    goto 0x000D40
0x000584:
    stog.itemname[(int32 self.i)] = "Spider Cider"
    goto 0x000D40
0x0005A8:
    stog.itemname[(int32 self.i)] = "Butterscotch Pie"
    goto 0x000D40
0x0005CC:
    stog.itemname[(int32 self.i)] = "Faded Ribbon"
    goto 0x000D40
0x0005F0:
    stog.itemname[(int32 self.i)] = "Toy Knife"
    goto 0x000D40
0x000614:
    stog.itemname[(int32 self.i)] = "Tough Glove"
    goto 0x000D40
0x000638:
    stog.itemname[(int32 self.i)] = "Manly Bandanna"
    goto 0x000D40
0x00065C:
    stog.itemname[(int32 self.i)] = "Snowman Piece"
    goto 0x000D40
0x000680:
    stog.itemname[(int32 self.i)] = "Nice Cream"
    goto 0x000D40
0x0006A4:
    stog.itemname[(int32 self.i)] = "Puppydough Icecream"
    goto 0x000D40
0x0006C8:
    stog.itemname[(int32 self.i)] = "Bisicle"
    goto 0x000D40
0x0006EC:
    stog.itemname[(int32 self.i)] = "Unisicle"
    goto 0x000D40
0x000710:
    stog.itemname[(int32 self.i)] = "Cinnamon Bun"
    goto 0x000D40
0x000734:
    stog.itemname[(int32 self.i)] = "Temmie Flakes"
    goto 0x000D40
0x000758:
    stog.itemname[(int32 self.i)] = "Abandoned Quiche"
    goto 0x000D40
0x00077C:
    stog.itemname[(int32 self.i)] = "Old Tutu"
    goto 0x000D40
0x0007A0:
    stog.itemname[(int32 self.i)] = "Ballet Shoes"
    goto 0x000D40
0x0007C4:
    stog.itemname[(int32 self.i)] = "Punch Card"
    goto 0x000D40
0x0007E8:
    stog.itemname[(int32 self.i)] = "Annoying Dog"
    goto 0x000D40
0x00080C:
    stog.itemname[(int32 self.i)] = "Dog Salad"
    goto 0x000D40
0x000830:
    stog.itemname[(int32 self.i)] = "Dog Residue"
    goto 0x000D40
0x000854:
    stog.itemname[(int32 self.i)] = "Dog Residue"
    goto 0x000D40
0x000878:
    stog.itemname[(int32 self.i)] = "Dog Residue"
    goto 0x000D40
0x00089C:
    stog.itemname[(int32 self.i)] = "Dog Residue"
    goto 0x000D40
0x0008C0:
    stog.itemname[(int32 self.i)] = "Dog Residue"
    goto 0x000D40
0x0008E4:
    stog.itemname[(int32 self.i)] = "Dog Residue"
    goto 0x000D40
0x000908:
    stog.itemname[(int32 self.i)] = "Astronaut Food"
    goto 0x000D40
0x00092C:
    stog.itemname[(int32 self.i)] = "Instant Noodles"
    goto 0x000D40
0x000950:
    stog.itemname[(int32 self.i)] = "Crab Apple"
    goto 0x000D40
0x000974:
    stog.itemname[(int32 self.i)] = "Hot Dog...?"
    goto 0x000D40
0x000998:
    stog.itemname[(int32 self.i)] = "Hot Cat"
    goto 0x000D40
0x0009BC:
    stog.itemname[(int32 self.i)] = "Glamburger"
    goto 0x000D40
0x0009E0:
    stog.itemname[(int32 self.i)] = "Sea Tea"
    goto 0x000D40
0x000A04:
    stog.itemname[(int32 self.i)] = "Starfait"
    goto 0x000D40
0x000A28:
    stog.itemname[(int32 self.i)] = "Legendary Hero"
    goto 0x000D40
0x000A4C:
    stog.itemname[(int32 self.i)] = "Cloudy Glasses"
    goto 0x000D40
0x000A70:
    stog.itemname[(int32 self.i)] = "Torn Notebook"
    goto 0x000D40
0x000A94:
    stog.itemname[(int32 self.i)] = "Stained Apron"
    goto 0x000D40
0x000AB8:
    stog.itemname[(int32 self.i)] = "Burnt Pan"
    goto 0x000D40
0x000ADC:
    stog.itemname[(int32 self.i)] = "Cowboy Hat"
    goto 0x000D40
0x000B00:
    stog.itemname[(int32 self.i)] = "Empty Gun"
    goto 0x000D40
0x000B24:
    stog.itemname[(int32 self.i)] = "Heart Locket"
    goto 0x000D40
0x000B48:
    stog.itemname[(int32 self.i)] = "Worn Dagger"
    goto 0x000D40
0x000B6C:
    stog.itemname[(int32 self.i)] = "Real Knife"
    goto 0x000D40
0x000B90:
    stog.itemname[(int32 self.i)] = "The Locket"
    goto 0x000D40
0x000BB4:
    stog.itemname[(int32 self.i)] = "Bad Memory"
    goto 0x000D40
0x000BD8:
    stog.itemname[(int32 self.i)] = "Dream"
    goto 0x000D40
0x000BFC:
    stog.itemname[(int32 self.i)] = "Undyne's Letter"
    goto 0x000D40
0x000C20:
    stog.itemname[(int32 self.i)] = "Undyne Letter EX"
    goto 0x000D40
0x000C44:
    stog.itemname[(int32 self.i)] = "Popato Chisps"
    goto 0x000D40
0x000C68:
    stog.itemname[(int32 self.i)] = "Junk Food"
    goto 0x000D40
0x000C8C:
    stog.itemname[(int32 self.i)] = "Mystery Key"
    goto 0x000D40
0x000CB0:
    stog.itemname[(int32 self.i)] = "Face Steak"
    goto 0x000D40
0x000CD4:
    stog.itemname[(int32 self.i)] = "Hush Puppy"
    goto 0x000D40
0x000CF8:
    stog.itemname[(int32 self.i)] = "Snail Pie"
    goto 0x000D40
0x000D1C:
    stog.itemname[(int32 self.i)] = "temy armor"
    goto 0x000D40
0x000D40:
    pop
0x000D44:
    exit
