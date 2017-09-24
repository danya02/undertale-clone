0x000000:
    self.i = 0s
    if !(< self.i 8s) goto 0x0019B8
0x000020:
    push -5s
    self.itemid = (int32 self.i):item
    if (== self.itemid 1s) goto 0x00044C
0x000058:
    if (== self.itemid 2s) goto 0x000470
0x000068:
    if (== self.itemid 3s) goto 0x000494
0x000078:
    if (== self.itemid 4s) goto 0x000500
0x000088:
    if (== self.itemid 5s) goto 0x000524
0x000098:
    if (== self.itemid 6s) goto 0x000548
0x0000A8:
    if (== self.itemid 7s) goto 0x0005A0
0x0000B8:
    if (== self.itemid 8s) goto 0x0005F8
0x0000C8:
    if (== self.itemid 9s) goto 0x000650
0x0000D8:
    if (== self.itemid 10s) goto 0x0006A8
0x0000E8:
    if (== self.itemid 11s) goto 0x000700
0x0000F8:
    if (== self.itemid 12s) goto 0x000758
0x000108:
    if (== self.itemid 13s) goto 0x00077C
0x000118:
    if (== self.itemid 14s) goto 0x0007A0
0x000128:
    if (== self.itemid 15s) goto 0x0007F8
0x000138:
    if (== self.itemid 16s) goto 0x000850
0x000148:
    if (== self.itemid 17s) goto 0x0008A8
0x000158:
    if (== self.itemid 18s) goto 0x000900
0x000168:
    if (== self.itemid 19s) goto 0x000958
0x000178:
    if (== self.itemid 20s) goto 0x0009B0
0x000188:
    if (== self.itemid 21s) goto 0x000A08
0x000198:
    if (== self.itemid 22s) goto 0x000A60
0x0001A8:
    if (== self.itemid 23s) goto 0x000AB8
0x0001B8:
    if (== self.itemid 24s) goto 0x000B10
0x0001C8:
    if (== self.itemid 25s) goto 0x000B68
0x0001D8:
    if (== self.itemid 26s) goto 0x000BC0
0x0001E8:
    if (== self.itemid 27s) goto 0x000C18
0x0001F8:
    if (== self.itemid 28s) goto 0x000C70
0x000208:
    if (== self.itemid 29s) goto 0x000CC8
0x000218:
    if (== self.itemid 30s) goto 0x000D20
0x000228:
    if (== self.itemid 31s) goto 0x000D78
0x000238:
    if (== self.itemid 32s) goto 0x000DD0
0x000248:
    if (== self.itemid 33s) goto 0x000E28
0x000258:
    if (== self.itemid 34s) goto 0x000E80
0x000268:
    if (== self.itemid 35s) goto 0x000ED8
0x000278:
    if (== self.itemid 36s) goto 0x000F30
0x000288:
    if (== self.itemid 37s) goto 0x000F88
0x000298:
    if (== self.itemid 38s) goto 0x000FE0
0x0002A8:
    if (== self.itemid 39s) goto 0x001038
0x0002B8:
    if (== self.itemid 40s) goto 0x001090
0x0002C8:
    if (== self.itemid 41s) goto 0x0010E8
0x0002D8:
    if (== self.itemid 42s) goto 0x001140
0x0002E8:
    if (== self.itemid 43s) goto 0x001198
0x0002F8:
    if (== self.itemid 44s) goto 0x0011F0
0x000308:
    if (== self.itemid 45s) goto 0x001248
0x000318:
    if (== self.itemid 46s) goto 0x0012A0
0x000328:
    if (== self.itemid 47s) goto 0x0012F8
0x000338:
    if (== self.itemid 48s) goto 0x001350
0x000348:
    if (== self.itemid 49s) goto 0x0013A8
0x000358:
    if (== self.itemid 50s) goto 0x001400
0x000368:
    if (== self.itemid 51s) goto 0x001458
0x000378:
    if (== self.itemid 52s) goto 0x0014B0
0x000388:
    if (== self.itemid 53s) goto 0x001508
0x000398:
    if (== self.itemid 54s) goto 0x001560
0x0003A8:
    if (== self.itemid 55s) goto 0x0015B8
0x0003B8:
    if (== self.itemid 56s) goto 0x001610
0x0003C8:
    if (== self.itemid 57s) goto 0x001668
0x0003D8:
    if (== self.itemid 58s) goto 0x0016C0
0x0003E8:
    if (== self.itemid 59s) goto 0x001718
0x0003F8:
    if (== self.itemid 60s) goto 0x001770
0x000408:
    if (== self.itemid 61s) goto 0x0017C8
0x000418:
    if (== self.itemid 62s) goto 0x001890
0x000428:
    if (== self.itemid 63s) goto 0x0018E8
0x000438:
    if (== self.itemid 64s) goto 0x001940
0x000448:
    push self.itemid
    goto 0x001998
0x00044C:
    stog.itemnameb[(int32 self.i)] = "MnstrCndy"
    goto 0x001998
0x000470:
    stog.itemnameb[(int32 self.i)] = "CroqtRoll"
    goto 0x001998
0x000494:
    if !(== global.seriousbattle 0s) goto 0x0004C8
0x0004A8:
    stog.itemnameb[(int32 self.i)] = "Stick    "
0x0004C8:
    if !(== global.seriousbattle 1s) goto 0x0004FC
0x0004DC:
    stog.itemnameb[(int32 self.i)] = "Stick    "
0x0004FC:
    goto 0x001998
0x000500:
    stog.itemnameb[(int32 self.i)] = "Bandage  "
    goto 0x001998
0x000524:
    stog.itemnameb[(int32 self.i)] = "RockCandy"
    goto 0x001998
0x000548:
    stog.itemnameb[(int32 self.i)] = "PunkRings"
    if !(== global.seriousbattle 1s) goto 0x00059C
0x00057C:
    stog.itemnameb[(int32 self.i)] = "PmknRings"
0x00059C:
    goto 0x001998
0x0005A0:
    stog.itemnameb[(int32 self.i)] = "SpidrDont"
    if !(== global.seriousbattle 1s) goto 0x0005F4
0x0005D4:
    stog.itemnameb[(int32 self.i)] = "SpdrDonut"
0x0005F4:
    goto 0x001998
0x0005F8:
    stog.itemnameb[(int32 self.i)] = "StocOnoin"
    if !(== global.seriousbattle 1s) goto 0x00064C
0x00062C:
    stog.itemnameb[(int32 self.i)] = "Onion    "
0x00064C:
    goto 0x001998
0x000650:
    stog.itemnameb[(int32 self.i)] = "GhostFrut"
    if !(== global.seriousbattle 1s) goto 0x0006A4
0x000684:
    stog.itemnameb[(int32 self.i)] = "GhstFruit"
0x0006A4:
    goto 0x001998
0x0006A8:
    stog.itemnameb[(int32 self.i)] = "SpidrCidr"
    if !(== global.seriousbattle 1s) goto 0x0006FC
0x0006DC:
    stog.itemnameb[(int32 self.i)] = "SpdrCider"
0x0006FC:
    goto 0x001998
0x000700:
    stog.itemnameb[(int32 self.i)] = "ButtsPie "
    if !(== global.seriousbattle 1s) goto 0x000754
0x000734:
    stog.itemnameb[(int32 self.i)] = "Pie      "
0x000754:
    goto 0x001998
0x000758:
    stog.itemnameb[(int32 self.i)] = "Ribbon   "
    goto 0x001998
0x00077C:
    stog.itemnameb[(int32 self.i)] = "Toy Knife"
    goto 0x001998
0x0007A0:
    stog.itemnameb[(int32 self.i)] = "TuffGlove"
    if !(== global.seriousbattle 1s) goto 0x0007F4
0x0007D4:
    stog.itemnameb[(int32 self.i)] = "Glove    "
0x0007F4:
    goto 0x001998
0x0007F8:
    stog.itemnameb[(int32 self.i)] = "Mandanna "
    if !(== global.seriousbattle 1s) goto 0x00084C
0x00082C:
    stog.itemnameb[(int32 self.i)] = "Bandanna "
0x00084C:
    goto 0x001998
0x000850:
    stog.itemnameb[(int32 self.i)] = "SnowPiece"
    if !(== global.seriousbattle 1s) goto 0x0008A4
0x000884:
    stog.itemnameb[(int32 self.i)] = "SnowPiece"
0x0008A4:
    goto 0x001998
0x0008A8:
    stog.itemnameb[(int32 self.i)] = "NiceCream"
    if !(== global.seriousbattle 1s) goto 0x0008FC
0x0008DC:
    stog.itemnameb[(int32 self.i)] = "NiceCream"
0x0008FC:
    goto 0x001998
0x000900:
    stog.itemnameb[(int32 self.i)] = "PDIceCram"
    if !(== global.seriousbattle 1s) goto 0x000954
0x000934:
    stog.itemnameb[(int32 self.i)] = "Ice Cream"
0x000954:
    goto 0x001998
0x000958:
    stog.itemnameb[(int32 self.i)] = "Bisicle  "
    if !(== global.seriousbattle 1s) goto 0x0009AC
0x00098C:
    stog.itemnameb[(int32 self.i)] = "Bisicle  "
0x0009AC:
    goto 0x001998
0x0009B0:
    stog.itemnameb[(int32 self.i)] = "Unisicle "
    if !(== global.seriousbattle 1s) goto 0x000A04
0x0009E4:
    stog.itemnameb[(int32 self.i)] = "Popsicle "
0x000A04:
    goto 0x001998
0x000A08:
    stog.itemnameb[(int32 self.i)] = "CinnaBun "
    if !(== global.seriousbattle 1s) goto 0x000A5C
0x000A3C:
    stog.itemnameb[(int32 self.i)] = "C. Bun   "
0x000A5C:
    goto 0x001998
0x000A60:
    stog.itemnameb[(int32 self.i)] = "TemFlakes"
    if !(== global.seriousbattle 1s) goto 0x000AB4
0x000A94:
    stog.itemnameb[(int32 self.i)] = "TemFlakes"
0x000AB4:
    goto 0x001998
0x000AB8:
    stog.itemnameb[(int32 self.i)] = "Ab Quiche"
    if !(== global.seriousbattle 1s) goto 0x000B0C
0x000AEC:
    stog.itemnameb[(int32 self.i)] = "Quiche   "
0x000B0C:
    goto 0x001998
0x000B10:
    stog.itemnameb[(int32 self.i)] = "Old Tutu "
    if !(== global.seriousbattle 1s) goto 0x000B64
0x000B44:
    stog.itemnameb[(int32 self.i)] = "Tutu     "
0x000B64:
    goto 0x001998
0x000B68:
    stog.itemnameb[(int32 self.i)] = "BallShoes"
    if !(== global.seriousbattle 1s) goto 0x000BBC
0x000B9C:
    stog.itemnameb[(int32 self.i)] = "Shoes    "
0x000BBC:
    goto 0x001998
0x000BC0:
    stog.itemnameb[(int32 self.i)] = "PunchCard"
    if !(== global.seriousbattle 1s) goto 0x000C14
0x000BF4:
    stog.itemnameb[(int32 self.i)] = "PunchCard"
0x000C14:
    goto 0x001998
0x000C18:
    stog.itemnameb[(int32 self.i)] = "Annoy Dog"
    if !(== global.seriousbattle 1s) goto 0x000C6C
0x000C4C:
    stog.itemnameb[(int32 self.i)] = "Dog      "
0x000C6C:
    goto 0x001998
0x000C70:
    stog.itemnameb[(int32 self.i)] = "Dog Salad"
    if !(== global.seriousbattle 1s) goto 0x000CC4
0x000CA4:
    stog.itemnameb[(int32 self.i)] = "Dog Salad"
0x000CC4:
    goto 0x001998
0x000CC8:
    stog.itemnameb[(int32 self.i)] = "DogResidu"
    if !(== global.seriousbattle 1s) goto 0x000D1C
0x000CFC:
    stog.itemnameb[(int32 self.i)] = "D.Residue"
0x000D1C:
    goto 0x001998
0x000D20:
    stog.itemnameb[(int32 self.i)] = "DogResidu"
    if !(== global.seriousbattle 1s) goto 0x000D74
0x000D54:
    stog.itemnameb[(int32 self.i)] = "D.Residue"
0x000D74:
    goto 0x001998
0x000D78:
    stog.itemnameb[(int32 self.i)] = "DogResidu"
    if !(== global.seriousbattle 1s) goto 0x000DCC
0x000DAC:
    stog.itemnameb[(int32 self.i)] = "D.Residue"
0x000DCC:
    goto 0x001998
0x000DD0:
    stog.itemnameb[(int32 self.i)] = "DogResidu"
    if !(== global.seriousbattle 1s) goto 0x000E24
0x000E04:
    stog.itemnameb[(int32 self.i)] = "D.Residue"
0x000E24:
    goto 0x001998
0x000E28:
    stog.itemnameb[(int32 self.i)] = "DogResidu"
    if !(== global.seriousbattle 1s) goto 0x000E7C
0x000E5C:
    stog.itemnameb[(int32 self.i)] = "D.Residue"
0x000E7C:
    goto 0x001998
0x000E80:
    stog.itemnameb[(int32 self.i)] = "DogResidu"
    if !(== global.seriousbattle 1s) goto 0x000ED4
0x000EB4:
    stog.itemnameb[(int32 self.i)] = "D.Residue"
0x000ED4:
    goto 0x001998
0x000ED8:
    stog.itemnameb[(int32 self.i)] = "AstroFood"
    if !(== global.seriousbattle 1s) goto 0x000F2C
0x000F0C:
    stog.itemnameb[(int32 self.i)] = "Astr.Food"
0x000F2C:
    goto 0x001998
0x000F30:
    stog.itemnameb[(int32 self.i)] = "InstaNood"
    if !(== global.seriousbattle 1s) goto 0x000F84
0x000F64:
    stog.itemnameb[(int32 self.i)] = "I.Noodles"
0x000F84:
    goto 0x001998
0x000F88:
    stog.itemnameb[(int32 self.i)] = "CrabApple"
    if !(== global.seriousbattle 1s) goto 0x000FDC
0x000FBC:
    stog.itemnameb[(int32 self.i)] = "CrabApple"
0x000FDC:
    goto 0x001998
0x000FE0:
    stog.itemnameb[(int32 self.i)] = "Hot Dog  "
    if !(== global.seriousbattle 1s) goto 0x001034
0x001014:
    stog.itemnameb[(int32 self.i)] = "Hot Dog  "
0x001034:
    goto 0x001998
0x001038:
    stog.itemnameb[(int32 self.i)] = "Hot Cat  "
    if !(== global.seriousbattle 1s) goto 0x00108C
0x00106C:
    stog.itemnameb[(int32 self.i)] = "Hot Cat  "
0x00108C:
    goto 0x001998
0x001090:
    stog.itemnameb[(int32 self.i)] = "GlamBurg "
    if !(== global.seriousbattle 1s) goto 0x0010E4
0x0010C4:
    stog.itemnameb[(int32 self.i)] = "G. Burger"
0x0010E4:
    goto 0x001998
0x0010E8:
    stog.itemnameb[(int32 self.i)] = "Sea Tea  "
    if !(== global.seriousbattle 1s) goto 0x00113C
0x00111C:
    stog.itemnameb[(int32 self.i)] = "Sea Tea  "
0x00113C:
    goto 0x001998
0x001140:
    stog.itemnameb[(int32 self.i)] = "Starfait "
    if !(== global.seriousbattle 1s) goto 0x001194
0x001174:
    stog.itemnameb[(int32 self.i)] = "Starfait "
0x001194:
    goto 0x001998
0x001198:
    stog.itemnameb[(int32 self.i)] = "Leg,Hero "
    if !(== global.seriousbattle 1s) goto 0x0011EC
0x0011CC:
    stog.itemnameb[(int32 self.i)] = "L. Hero  "
0x0011EC:
    goto 0x001998
0x0011F0:
    stog.itemnameb[(int32 self.i)] = "ClodGlass"
    if !(== global.seriousbattle 1s) goto 0x001244
0x001224:
    stog.itemnameb[(int32 self.i)] = "Glasses  "
0x001244:
    goto 0x001998
0x001248:
    stog.itemnameb[(int32 self.i)] = "TornNotbo"
    if !(== global.seriousbattle 1s) goto 0x00129C
0x00127C:
    stog.itemnameb[(int32 self.i)] = "Notebook "
0x00129C:
    goto 0x001998
0x0012A0:
    stog.itemnameb[(int32 self.i)] = "StainApro"
    if !(== global.seriousbattle 1s) goto 0x0012F4
0x0012D4:
    stog.itemnameb[(int32 self.i)] = "Apron    "
0x0012F4:
    goto 0x001998
0x0012F8:
    stog.itemnameb[(int32 self.i)] = "Burnt Pan"
    if !(== global.seriousbattle 1s) goto 0x00134C
0x00132C:
    stog.itemnameb[(int32 self.i)] = "Burnt Pan"
0x00134C:
    goto 0x001998
0x001350:
    stog.itemnameb[(int32 self.i)] = "CowboyHat"
    if !(== global.seriousbattle 1s) goto 0x0013A4
0x001384:
    stog.itemnameb[(int32 self.i)] = "CowboyHat"
0x0013A4:
    goto 0x001998
0x0013A8:
    stog.itemnameb[(int32 self.i)] = "Empty Gun"
    if !(== global.seriousbattle 1s) goto 0x0013FC
0x0013DC:
    stog.itemnameb[(int32 self.i)] = "Empty Gun"
0x0013FC:
    goto 0x001998
0x001400:
    stog.itemnameb[(int32 self.i)] = "<--Locket"
    if !(== global.seriousbattle 1s) goto 0x001454
0x001434:
    stog.itemnameb[(int32 self.i)] = "H. Locket"
0x001454:
    goto 0x001998
0x001458:
    stog.itemnameb[(int32 self.i)] = "WornDG   "
    if !(== global.seriousbattle 1s) goto 0x0014AC
0x00148C:
    stog.itemnameb[(int32 self.i)] = "W. Dagger"
0x0014AC:
    goto 0x001998
0x0014B0:
    stog.itemnameb[(int32 self.i)] = "RealKnife"
    if !(== global.seriousbattle 1s) goto 0x001504
0x0014E4:
    stog.itemnameb[(int32 self.i)] = "RealKnife"
0x001504:
    goto 0x001998
0x001508:
    stog.itemnameb[(int32 self.i)] = "TheLocket"
    if !(== global.seriousbattle 1s) goto 0x00155C
0x00153C:
    stog.itemnameb[(int32 self.i)] = "TheLocket"
0x00155C:
    goto 0x001998
0x001560:
    stog.itemnameb[(int32 self.i)] = "BadMemory"
    if !(== global.seriousbattle 1s) goto 0x0015B4
0x001594:
    stog.itemnameb[(int32 self.i)] = "BadMemory"
0x0015B4:
    goto 0x001998
0x0015B8:
    stog.itemnameb[(int32 self.i)] = "LastDream"
    if !(== global.seriousbattle 1s) goto 0x00160C
0x0015EC:
    stog.itemnameb[(int32 self.i)] = "LastDream"
0x00160C:
    goto 0x001998
0x001610:
    stog.itemnameb[(int32 self.i)] = "UndynLetr"
    if !(== global.seriousbattle 1s) goto 0x001664
0x001644:
    stog.itemnameb[(int32 self.i)] = "Letter   "
0x001664:
    goto 0x001998
0x001668:
    stog.itemnameb[(int32 self.i)] = "UndynLtrX"
    if !(== global.seriousbattle 1s) goto 0x0016BC
0x00169C:
    stog.itemnameb[(int32 self.i)] = "Letter   "
0x0016BC:
    goto 0x001998
0x0016C0:
    stog.itemnameb[(int32 self.i)] = "PT Chisps"
    if !(== global.seriousbattle 1s) goto 0x001714
0x0016F4:
    stog.itemnameb[(int32 self.i)] = "Chips    "
0x001714:
    goto 0x001998
0x001718:
    stog.itemnameb[(int32 self.i)] = "Junk Food"
    if !(== global.seriousbattle 1s) goto 0x00176C
0x00174C:
    stog.itemnameb[(int32 self.i)] = "Junk Food"
0x00176C:
    goto 0x001998
0x001770:
    stog.itemnameb[(int32 self.i)] = "MystryKey"
    if !(== global.seriousbattle 1s) goto 0x0017C4
0x0017A4:
    stog.itemnameb[(int32 self.i)] = "Key      "
0x0017C4:
    goto 0x001998
0x0017C8:
    stog.itemnameb[(int32 self.i)] = "FaceSteak"
    if (== global.charname "drak") goto 0x001830
0x001800:
    if (== global.charname "gigi") goto 0x001830
0x001818:
    push (== global.charname "gugu")
    goto 0x001834
0x001830:
    push 1s
0x001834:
    if !pop goto 0x001858
0x001838:
    stog.itemnameb[(int32 self.i)] = "Fsteak   "
0x001858:
    if !(== global.seriousbattle 1s) goto 0x00188C
0x00186C:
    stog.itemnameb[(int32 self.i)] = "Steak    "
0x00188C:
    goto 0x001998
0x001890:
    stog.itemnameb[(int32 self.i)] = "HushPupe "
    if !(== global.seriousbattle 1s) goto 0x0018E4
0x0018C4:
    stog.itemnameb[(int32 self.i)] = "HushPuppy"
0x0018E4:
    goto 0x001998
0x0018E8:
    stog.itemnameb[(int32 self.i)] = "Snail Pie"
    if !(== global.seriousbattle 1s) goto 0x00193C
0x00191C:
    stog.itemnameb[(int32 self.i)] = "Snail Pie"
0x00193C:
    goto 0x001998
0x001940:
    stog.itemnameb[(int32 self.i)] = "Temmie AR"
    if !(== global.seriousbattle 1s) goto 0x001994
0x001974:
    stog.itemnameb[(int32 self.i)] = "Tem.Armor"
0x001994:
    goto 0x001998
0x001998:
    pop
    self.i = (+ self.i 1s)
    goto 0x00000C
0x0019B8:
    exit
