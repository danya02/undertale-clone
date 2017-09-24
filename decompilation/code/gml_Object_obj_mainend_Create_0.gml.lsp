0x000000:
    self.con = 1s
    self.mc = (instance_create[]:int32 (var 1570s) (var 20s) (var 120s))
    push 0s
    stog.visible* = (int32 self.mc)
    self.q = 20s
    push -5s
    if !(!= 45s:flag 4s) goto 0x0000CC
0x000074:
    push -5s
    if !(<= 67s:flag 0s) goto 0x0000CC
0x000090:
    push -5s
    if !(!= 350s:flag 1s) goto 0x0000CC
0x0000AC:
    if !(< global.kills 10s) goto 0x0000CC
0x0000C0:
    self.q = 0s
0x0000CC:
    push -5s
    if !(!= 45s:flag 4s) goto 0x000108
0x0000E8:
    if !(>= global.kills 10s) goto 0x000108
0x0000FC:
    self.q = 1s
0x000108:
    push -5s
    if !(!= 45s:flag 4s) goto 0x000170
0x000124:
    push -5s
    if (== 67s:flag 1s) goto 0x00015C
0x000140:
    push -5s
    push (== 350s:flag 1s)
    goto 0x000160
0x00015C:
    push 1s
0x000160:
    if !pop goto 0x000170
0x000164:
    self.q = 1s
0x000170:
    push -5s
    if !(== 45s:flag 4s) goto 0x0001B4
0x00018C:
    push -5s
    if !(!= 350s:flag 1s) goto 0x0001B4
0x0001A8:
    self.q = 2s
0x0001B4:
    push -5s
    if !(== 45s:flag 4s) goto 0x000214
0x0001D0:
    push -5s
    if !(== 350s:flag 1s) goto 0x000214
0x0001EC:
    push -5s
    if !(== 425s:flag 0s) goto 0x000214
0x000208:
    self.q = 3s
0x000214:
    push -5s
    if !(== 45s:flag 4s) goto 0x000290
0x000230:
    push -5s
    if !(== 350s:flag 1s) goto 0x000290
0x00024C:
    push -5s
    if !(== 425s:flag 1s) goto 0x000290
0x000268:
    push -5s
    if !(!= 67s:flag 1s) goto 0x000290
0x000284:
    self.q = 4s
0x000290:
    push -5s
    if !(== 45s:flag 4s) goto 0x00030C
0x0002AC:
    push -5s
    if !(== 350s:flag 1s) goto 0x00030C
0x0002C8:
    push -5s
    if !(== 425s:flag 1s) goto 0x00030C
0x0002E4:
    push -5s
    if !(== 67s:flag 1s) goto 0x00030C
0x000300:
    self.q = 5s
0x00030C:
    push -5s
    if !(== 45s:flag 4s) goto 0x00039C
0x000328:
    push -5s
    if !(== 350s:flag 1s) goto 0x00039C
0x000344:
    push -5s
    if !(== 425s:flag 1s) goto 0x00039C
0x000360:
    push -5s
    if !(== 67s:flag 1s) goto 0x00039C
0x00037C:
    if !(== global.kills 4s) goto 0x00039C
0x000390:
    self.q = 6s
0x00039C:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0003D8
0x0003B0:
    push -5s
    if !(== 425s:flag 1s) goto 0x0003D8
0x0003CC:
    self.q = 7s
0x0003D8:
    if (== self.q 0s) goto 0x000428
0x0003EC:
    if (== self.q 1s) goto 0x000428
0x000400:
    if (== self.q 2s) goto 0x000428
0x000414:
    push (== self.q 4s)
    goto 0x00042C
0x000428:
    push 1s
0x00042C:
    if !pop goto 0x00044C
0x000430:
    global.currentsong = (caster_load[]:int32 (var "music/z_ending.ogg"))
0x00044C:
    if !(== self.q 3s) goto 0x00047C
0x000460:
    global.currentsong = (caster_load[]:int32 (var "music/mtgameshow.ogg"))
0x00047C:
    if !(== self.q 5s) goto 0x0004AC
0x000490:
    global.currentsong = (caster_load[]:int32 (var "music/wind.ogg"))
0x0004AC:
    if (== self.q 6s) goto 0x0004D4
0x0004C0:
    push (== self.q 20s)
    goto 0x0004D8
0x0004D4:
    push 1s
0x0004D8:
    if !pop goto 0x0004F8
0x0004DC:
    global.currentsong = (caster_load[]:int32 (var "music/dogsong.ogg"))
0x0004F8:
    global.interact = 1s
    self.musiccon = 0s
0x000510:
    exit
