0x000000:
    self.skipper = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.tale = (ini_read_real[]:int32 (var 0s) (var "Tale") (var "General"))
    call (ini_close[]:int32 )
    if !(> self.tale 0s) goto 0x000080
0x000074:
    self.skipper = 1s
0x000080:
    self.off = 0s
    self.activetimer = -6s
    global.turntimer = 15s
    global.myfight = -1s
    global.mnfight = -1s
    self.flowey = 0s
    self.shake = 0s
    if !(< (scr_murderlv[]:int32 ) 16s) goto 0x000C1C
0x0000E8:
    global.turntimer = 15s
    global.myfight = -1s
    global.mnfight = -1s
    stog.hurtanim[0s] = 0s
    stog.hurtanim[1s] = 0s
    stog.hurtanim[2s] = 0s
    stog.monstertype[0s] = 2s
    stog.monstertype[1s] = 2s
    stog.monstertype[2s] = 2s
    push -5s
    if !(== 450s:flag 0s) goto 0x0001FC
0x0001A0:
    self.con = 5s
    self.m1 = (instance_create[]:int32 (var 213s) (var 140s) (var 100s))
    self.m2 = (instance_create[]:int32 (var 213s) (var 140s) (var 450s))
0x0001FC:
    push -5s
    if !(== 450s:flag 1s) goto 0x000274
0x000218:
    self.con = 10s
    self.m1 = (instance_create[]:int32 (var 206s) (var 140s) (var 100s))
    self.m2 = (instance_create[]:int32 (var 206s) (var 140s) (var 450s))
0x000274:
    push -5s
    if !(== 450s:flag 2s) goto 0x000314
0x000290:
    self.con = 15s
    self.m1 = (instance_create[]:int32 (var 212s) (var 140s) (var 80s))
    self.m2 = (instance_create[]:int32 (var 212s) (var 140s) (var 270s))
    self.m3 = (instance_create[]:int32 (var 212s) (var 140s) (var 470s))
0x000314:
    push -5s
    if !(== 450s:flag 3s) goto 0x00038C
0x000330:
    self.con = 25s
    self.m1 = (instance_create[]:int32 (var 207s) (var 140s) (var 100s))
    self.m2 = (instance_create[]:int32 (var 207s) (var 140s) (var 450s))
0x00038C:
    push -5s
    if !(== 450s:flag 4s) goto 0x00042C
0x0003A8:
    self.con = 30s
    self.m1 = (instance_create[]:int32 (var 208s) (var 140s) (var 80s))
    self.m2 = (instance_create[]:int32 (var 208s) (var 140s) (var 270s))
    self.m3 = (instance_create[]:int32 (var 208s) (var 140s) (var 470s))
0x00042C:
    push -5s
    if !(== 450s:flag 5s) goto 0x0004A4
0x000448:
    self.con = 40s
    self.m1 = (instance_create[]:int32 (var 209s) (var 140s) (var 100s))
    self.m2 = (instance_create[]:int32 (var 209s) (var 140s) (var 450s))
0x0004A4:
    push -5s
    if !(== 450s:flag 6s) goto 0x00051C
0x0004C0:
    self.con = 50s
    self.m1 = (instance_create[]:int32 (var 252s) (var 20s) (var 50s))
    self.m2 = (instance_create[]:int32 (var 252s) (var 20s) (var 450s))
0x00051C:
    push -5s
    if !(== 450s:flag 7s) goto 0x0005BC
0x000538:
    self.con = 60s
    self.m1 = (instance_create[]:int32 (var 216s) (var 110s) (var 70s))
    self.m2 = (instance_create[]:int32 (var 216s) (var 110s) (var 260s))
    self.m3 = (instance_create[]:int32 (var 216s) (var 110s) (var 460s))
0x0005BC:
    push -5s
    if !(== 450s:flag 8s) goto 0x00065C
0x0005D8:
    self.con = 70s
    self.m1 = (instance_create[]:int32 (var 256s) (var 140s) (var 80s))
    self.m2 = (instance_create[]:int32 (var 256s) (var 140s) (var 270s))
    self.m3 = (instance_create[]:int32 (var 256s) (var 140s) (var 470s))
0x00065C:
    push -5s
    if !(== 450s:flag 9s) goto 0x0006FC
0x000678:
    self.con = 80s
    self.m1 = (instance_create[]:int32 (var 259s) (var 130s) (var 80s))
    self.m2 = (instance_create[]:int32 (var 259s) (var 130s) (var 270s))
    self.m3 = (instance_create[]:int32 (var 259s) (var 130s) (var 470s))
0x0006FC:
    push -5s
    if !(== 450s:flag 10s) goto 0x00079C
0x000718:
    self.con = 90s
    self.m1 = (instance_create[]:int32 (var 199s) (var 140s) (var 80s))
    self.m2 = (instance_create[]:int32 (var 199s) (var 140s) (var 270s))
    self.m3 = (instance_create[]:int32 (var 199s) (var 140s) (var 470s))
0x00079C:
    push -5s
    if !(== 450s:flag 11s) goto 0x00083C
0x0007B8:
    self.con = 100s
    stog.monsterinstance[0s] = (instance_create[]:int32 (var 378s) (var 20s) (var 0s))
    [obj_finalknight].myself = 1s
    stog.monsterinstance[1s] = (instance_create[]:int32 (var 369s) (var 80s) (var 470s))
    [obj_wizard].myself = 1s
0x00083C:
    push -5s
    if !(== 450s:flag 12s) goto 0x0008F4
0x000858:
    self.con = 110s
    stog.monsterinstance[0s] = (instance_create[]:int32 (var 385s) (var 118s) (var 80s))
    stog.monsterinstance[1s] = (instance_create[]:int32 (var 385s) (var 118s) (var 270s))
    stog.monsterinstance[2s] = (instance_create[]:int32 (var 385s) (var 118s) (var 470s))
0x0008F4:
    push -5s
    if !(== 450s:flag 13s) goto 0x0009AC
0x000910:
    self.con = 120s
    stog.monsterinstance[0s] = (instance_create[]:int32 (var 394s) (var 140s) (var 80s))
    stog.monsterinstance[1s] = (instance_create[]:int32 (var 394s) (var 140s) (var 270s))
    stog.monsterinstance[2s] = (instance_create[]:int32 (var 394s) (var 140s) (var 470s))
0x0009AC:
    push -5s
    if !(== 450s:flag 14s) goto 0x000A64
0x0009C8:
    self.con = 130s
    stog.monsterinstance[0s] = (instance_create[]:int32 (var 387s) (var 130s) (var 80s))
    stog.monsterinstance[1s] = (instance_create[]:int32 (var 387s) (var 130s) (var 270s))
    stog.monsterinstance[2s] = (instance_create[]:int32 (var 387s) (var 130s) (var 470s))
0x000A64:
    push -5s
    if !(== 450s:flag 15s) goto 0x000B04
0x000A80:
    self.con = 140s
    self.m1 = (instance_create[]:int32 (var 212s) (var 160s) (var 80s))
    self.m2 = (instance_create[]:int32 (var 209s) (var 120s) (var 270s))
    self.m3 = (instance_create[]:int32 (var 207s) (var 140s) (var 470s))
0x000B04:
    push -5s
    if !(== 450s:flag 16s) goto 0x000BBC
0x000B20:
    self.con = 150s
    stog.monsterinstance[0s] = (instance_create[]:int32 (var 343s) (var 10s) (var 40s))
    stog.monsterinstance[1s] = (instance_create[]:int32 (var 337s) (var 120s) (var 200s))
    stog.monsterinstance[2s] = (instance_create[]:int32 (var 337s) (var 120s) (var 430s))
0x000BBC:
    push -5s
    if !(== 450s:flag 17s) goto 0x000C18
0x000BD8:
    self.con = 160s
    self.activetimer = -45s
    self.m1 = (instance_create[]:int32 (var 213s) (var 120s) (var 270s))
0x000C18:
    goto 0x000F48
0x000C1C:
    self.flowey = 1s
    self.shake = 0s
    global.faceemotion = 1s
    self.floweyx = 281s
    self.floweyy = 134s
    stog.alarm[4s] = 15s
    push -5s
    if !(== 450s:flag 0s) goto 0x000C94
0x000C88:
    self.con = 299s
0x000C94:
    push -5s
    if !(== 450s:flag 1s) goto 0x000CBC
0x000CB0:
    self.con = 304s
0x000CBC:
    push -5s
    if !(== 450s:flag 2s) goto 0x000CE4
0x000CD8:
    self.con = 309s
0x000CE4:
    push -5s
    if !(== 450s:flag 3s) goto 0x000D0C
0x000D00:
    self.con = 314s
0x000D0C:
    push -5s
    if !(== 450s:flag 4s) goto 0x000D34
0x000D28:
    self.con = 319s
0x000D34:
    push -5s
    if !(== 450s:flag 5s) goto 0x000D5C
0x000D50:
    self.con = 324s
0x000D5C:
    push -5s
    if !(== 450s:flag 6s) goto 0x000D84
0x000D78:
    self.con = 329s
0x000D84:
    push -5s
    if !(== 450s:flag 7s) goto 0x000DAC
0x000DA0:
    self.con = 334s
0x000DAC:
    push -5s
    if !(== 450s:flag 8s) goto 0x000DD4
0x000DC8:
    self.con = 339s
0x000DD4:
    push -5s
    if !(== 450s:flag 9s) goto 0x000DFC
0x000DF0:
    self.con = 344s
0x000DFC:
    push -5s
    if !(== 450s:flag 10s) goto 0x000E24
0x000E18:
    self.con = 349s
0x000E24:
    push -5s
    if !(== 450s:flag 11s) goto 0x000E4C
0x000E40:
    self.con = 354s
0x000E4C:
    push -5s
    if !(== 450s:flag 12s) goto 0x000E74
0x000E68:
    self.con = 359s
0x000E74:
    push -5s
    if !(== 450s:flag 13s) goto 0x000E9C
0x000E90:
    self.con = 364s
0x000E9C:
    push -5s
    if !(== 450s:flag 14s) goto 0x000EC4
0x000EB8:
    self.con = 369s
0x000EC4:
    push -5s
    if !(== 450s:flag 15s) goto 0x000EEC
0x000EE0:
    self.con = 374s
0x000EEC:
    push -5s
    if !(== 450s:flag 16s) goto 0x000F14
0x000F08:
    self.con = 379s
0x000F14:
    push -5s
    if !(== 450s:flag 17s) goto 0x000F48
0x000F30:
    self.con = 389s
    global.faceemotion = 10s
0x000F48:
    exit
