0x000000:
    self.myself = 0s
    push -5s
    if !(== 1s:monster 1s) goto 0x000048
0x000028:
    self.myself = 2s
    stog.monster[2s] = 1s
0x000048:
    push -5s
    if !(== 0s:monster 1s) goto 0x000078
0x000064:
    push (!= self.myself 2s)
    goto 0x00007C
0x000078:
    push 0s
0x00007C:
    if !pop goto 0x0000A0
0x000080:
    self.myself = 1s
    stog.monster[1s] = 1s
0x0000A0:
    push -5s
    if !(== 0s:monster 0s) goto 0x0000DC
0x0000BC:
    self.myself = 0s
    stog.monster[0s] = 1s
0x0000DC:
    push -5s
    if !(== (int32 self.myself):monstertype 1s) goto 0x0001E0
0x000100:
    stog.monstername[(int32 self.myself)] = "TestFroggit"
    stog.monstermaxhp[(int32 self.myself)] = 23s
    stog.monsterhp[(int32 self.myself)] = 23s
    stog.monsteratk[(int32 self.myself)] = 4s
    stog.monsterdef[(int32 self.myself)] = 1s
    stog.xpreward[(int32 self.myself)] = 2s
    stog.goldreward[(int32 self.myself)] = 2s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x0001E0:
    push -5s
    if !(== (int32 self.myself):monstertype 2s) goto 0x0002E4
0x000204:
    stog.monstername[(int32 self.myself)] = "Dummy"
    stog.monstermaxhp[(int32 self.myself)] = 15s
    stog.monsterhp[(int32 self.myself)] = 15s
    stog.monsteratk[(int32 self.myself)] = 0s
    stog.monsterdef[(int32 self.myself)] = -5s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x0002E4:
    push -5s
    if !(== (int32 self.myself):monstertype 3s) goto 0x0003E8
0x000308:
    stog.monstername[(int32 self.myself)] = "Froggit"
    stog.monstermaxhp[(int32 self.myself)] = 20s
    stog.monsterhp[(int32 self.myself)] = 20s
    stog.monsteratk[(int32 self.myself)] = 4s
    stog.monsterdef[(int32 self.myself)] = 1s
    stog.xpreward[(int32 self.myself)] = 10s
    stog.goldreward[(int32 self.myself)] = 20s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x0003E8:
    push -5s
    if !(== (int32 self.myself):monstertype 4s) goto 0x0004EC
0x00040C:
    stog.monstername[(int32 self.myself)] = "Froggit"
    stog.monstermaxhp[(int32 self.myself)] = 30s
    stog.monsterhp[(int32 self.myself)] = 30s
    stog.monsteratk[(int32 self.myself)] = 4s
    stog.monsterdef[(int32 self.myself)] = 4s
    stog.xpreward[(int32 self.myself)] = 3s
    stog.goldreward[(int32 self.myself)] = 2s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x0004EC:
    push -5s
    if !(== (int32 self.myself):monstertype 5s) goto 0x0005F0
0x000510:
    stog.monstername[(int32 self.myself)] = "Whimsun"
    stog.monstermaxhp[(int32 self.myself)] = 10s
    stog.monsterhp[(int32 self.myself)] = 10s
    stog.monsteratk[(int32 self.myself)] = 4s
    stog.monsterdef[(int32 self.myself)] = 0s
    stog.xpreward[(int32 self.myself)] = 2s
    stog.goldreward[(int32 self.myself)] = 2s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x0005F0:
    push -5s
    if !(== (int32 self.myself):monstertype 6s) goto 0x0006F4
0x000614:
    stog.monstername[(int32 self.myself)] = "Moldsmal"
    stog.monstermaxhp[(int32 self.myself)] = 50s
    stog.monsterhp[(int32 self.myself)] = 50s
    stog.monsteratk[(int32 self.myself)] = 4s
    stog.monsterdef[(int32 self.myself)] = 0s
    stog.xpreward[(int32 self.myself)] = 3s
    stog.goldreward[(int32 self.myself)] = 3s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x0006F4:
    push -5s
    if !(== (int32 self.myself):monstertype 7s) goto 0x0007F8
0x000718:
    stog.monstername[(int32 self.myself)] = "Migosp"
    stog.monstermaxhp[(int32 self.myself)] = 40s
    stog.monsterhp[(int32 self.myself)] = 40s
    stog.monsteratk[(int32 self.myself)] = 5s
    stog.monsterdef[(int32 self.myself)] = 4s
    stog.xpreward[(int32 self.myself)] = 5s
    stog.goldreward[(int32 self.myself)] = 4s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x0007F8:
    push -5s
    if !(== (int32 self.myself):monstertype 8s) goto 0x0008FC
0x00081C:
    stog.monstername[(int32 self.myself)] = "Vegetoid"
    stog.monstermaxhp[(int32 self.myself)] = 72s
    stog.monsterhp[(int32 self.myself)] = 72s
    stog.monsteratk[(int32 self.myself)] = 5s
    stog.monsterdef[(int32 self.myself)] = 0s
    stog.xpreward[(int32 self.myself)] = 6s
    stog.goldreward[(int32 self.myself)] = 1s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x0008FC:
    push -5s
    if !(== (int32 self.myself):monstertype 9s) goto 0x000A00
0x000920:
    stog.monstername[(int32 self.myself)] = "Loox"
    stog.monstermaxhp[(int32 self.myself)] = 50s
    stog.monsterhp[(int32 self.myself)] = 50s
    stog.monsteratk[(int32 self.myself)] = 5s
    stog.monsterdef[(int32 self.myself)] = 4s
    stog.xpreward[(int32 self.myself)] = 7s
    stog.goldreward[(int32 self.myself)] = 5s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x000A00:
    push -5s
    if !(== (int32 self.myself):monstertype 10s) goto 0x000B6C
0x000A24:
    stog.monstername[(int32 self.myself)] = "Toriel"
    stog.monstermaxhp[(int32 self.myself)] = 440s
    stog.monsterhp[(int32 self.myself)] = 440s
    stog.monsteratk[(int32 self.myself)] = 6s
    push -5s
    if !(== 6s:flag 1s) goto 0x000AD0
0x000AB4:
    stog.monsteratk[(int32 self.myself)] = 8s
0x000AD0:
    stog.monsterdef[(int32 self.myself)] = 1s
    if !(>= (scr_murderlv[]:int32 ) 1s) goto 0x000B1C
0x000B00:
    stog.monsterdef[(int32 self.myself)] = -9999s
0x000B1C:
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x000B6C:
    push -5s
    if !(== (int32 self.myself):monstertype 11s) goto 0x000C70
0x000B90:
    stog.monstername[(int32 self.myself)] = "Napstablook"
    stog.monstermaxhp[(int32 self.myself)] = 88s
    stog.monsterhp[(int32 self.myself)] = 88s
    stog.monsteratk[(int32 self.myself)] = 5s
    stog.monsterdef[(int32 self.myself)] = 4s
    stog.xpreward[(int32 self.myself)] = -1s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x000C70:
    push -5s
    if !(== (int32 self.myself):monstertype 12s) goto 0x000D74
0x000C94:
    stog.monstername[(int32 self.myself)] = "Moldsmal"
    stog.monstermaxhp[(int32 self.myself)] = 50s
    stog.monsterhp[(int32 self.myself)] = 50s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 0s
    stog.xpreward[(int32 self.myself)] = 3s
    stog.goldreward[(int32 self.myself)] = 3s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x000D74:
    push -5s
    if !(== (int32 self.myself):monstertype 13s) goto 0x000E78
0x000D98:
    stog.monstername[(int32 self.myself)] = "Doggo"
    stog.monstermaxhp[(int32 self.myself)] = 70s
    stog.monsterhp[(int32 self.myself)] = 70s
    stog.monsteratk[(int32 self.myself)] = 6s
    stog.monsterdef[(int32 self.myself)] = 1s
    stog.xpreward[(int32 self.myself)] = 30s
    stog.goldreward[(int32 self.myself)] = 20s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x000E78:
    push -5s
    if !(== (int32 self.myself):monstertype 14s) goto 0x000F7C
0x000E9C:
    stog.monstername[(int32 self.myself)] = "Lesser Dog"
    stog.monstermaxhp[(int32 self.myself)] = 60s
    stog.monsterhp[(int32 self.myself)] = 60s
    stog.monsteratk[(int32 self.myself)] = 6s
    stog.monsterdef[(int32 self.myself)] = 0s
    stog.xpreward[(int32 self.myself)] = 18s
    stog.goldreward[(int32 self.myself)] = 15s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x000F7C:
    push -5s
    if !(== (int32 self.myself):monstertype 15s) goto 0x001080
0x000FA0:
    stog.monstername[(int32 self.myself)] = "Dogamy"
    stog.monstermaxhp[(int32 self.myself)] = 108s
    stog.monsterhp[(int32 self.myself)] = 108s
    stog.monsteratk[(int32 self.myself)] = 6s
    stog.monsterdef[(int32 self.myself)] = 4s
    stog.xpreward[(int32 self.myself)] = 30s
    stog.goldreward[(int32 self.myself)] = 25s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x001080:
    push -5s
    if !(== (int32 self.myself):monstertype 16s) goto 0x001184
0x0010A4:
    stog.monstername[(int32 self.myself)] = "Dogaressa"
    stog.monstermaxhp[(int32 self.myself)] = 108s
    stog.monsterhp[(int32 self.myself)] = 108s
    stog.monsteratk[(int32 self.myself)] = 6s
    stog.monsterdef[(int32 self.myself)] = 4s
    stog.xpreward[(int32 self.myself)] = 30s
    stog.goldreward[(int32 self.myself)] = 25s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x001184:
    push -5s
    if !(== (int32 self.myself):monstertype 17s) goto 0x001288
0x0011A8:
    stog.monstername[(int32 self.myself)] = "Greater Dog"
    stog.monstermaxhp[(int32 self.myself)] = 105s
    stog.monsterhp[(int32 self.myself)] = 105s
    stog.monsteratk[(int32 self.myself)] = 6s
    stog.monsterdef[(int32 self.myself)] = 4s
    stog.xpreward[(int32 self.myself)] = 80s
    stog.goldreward[(int32 self.myself)] = 60s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x001288:
    push -5s
    if !(== (int32 self.myself):monstertype 18s) goto 0x0013C8
0x0012AC:
    stog.monstername[(int32 self.myself)] = "Snowdrake"
    push -5s
    if !(== 57s:flag 2s) goto 0x001308
0x0012E8:
    stog.monstername[(int32 self.myself)] = "Chilldrake"
0x001308:
    stog.monstermaxhp[(int32 self.myself)] = 74s
    stog.monsterhp[(int32 self.myself)] = 74s
    stog.monsteratk[(int32 self.myself)] = 6s
    stog.monsterdef[(int32 self.myself)] = 2s
    stog.xpreward[(int32 self.myself)] = 22s
    stog.goldreward[(int32 self.myself)] = 18s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x0013C8:
    push -5s
    if !(== (int32 self.myself):monstertype 19s) goto 0x0014CC
0x0013EC:
    stog.monstername[(int32 self.myself)] = "Ice Cap"
    stog.monstermaxhp[(int32 self.myself)] = 48s
    stog.monsterhp[(int32 self.myself)] = 48s
    stog.monsteratk[(int32 self.myself)] = 6s
    stog.monsterdef[(int32 self.myself)] = 0s
    stog.xpreward[(int32 self.myself)] = 17s
    stog.goldreward[(int32 self.myself)] = 17s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x0014CC:
    push -5s
    if !(== (int32 self.myself):monstertype 20s) goto 0x0015D0
0x0014F0:
    stog.monstername[(int32 self.myself)] = "Ice"
    stog.monstermaxhp[(int32 self.myself)] = 48s
    stog.monsterhp[(int32 self.myself)] = 48s
    stog.monsteratk[(int32 self.myself)] = 0s
    stog.monsterdef[(int32 self.myself)] = -100s
    stog.xpreward[(int32 self.myself)] = 25s
    stog.goldreward[(int32 self.myself)] = 40s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x0015D0:
    push -5s
    if !(== (int32 self.myself):monstertype 21s) goto 0x0016D4
0x0015F4:
    stog.monstername[(int32 self.myself)] = "Jerry"
    stog.monstermaxhp[(int32 self.myself)] = 80s
    stog.monsterhp[(int32 self.myself)] = 80s
    stog.monsteratk[(int32 self.myself)] = 1s
    stog.monsterdef[(int32 self.myself)] = 8s
    stog.xpreward[(int32 self.myself)] = 1s
    stog.goldreward[(int32 self.myself)] = 55s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x0016D4:
    push -5s
    if !(== (int32 self.myself):monstertype 22s) goto 0x0017D8
0x0016F8:
    stog.monstername[(int32 self.myself)] = "Gyftrot"
    stog.monstermaxhp[(int32 self.myself)] = 114s
    stog.monsterhp[(int32 self.myself)] = 114s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 3s
    stog.xpreward[(int32 self.myself)] = 35s
    stog.goldreward[(int32 self.myself)] = 30s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x0017D8:
    push -5s
    if !(== (int32 self.myself):monstertype 23s) goto 0x0018DC
0x0017FC:
    stog.monstername[(int32 self.myself)] = "Aaron"
    stog.monstermaxhp[(int32 self.myself)] = 98s
    stog.monsterhp[(int32 self.myself)] = 98s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 2s
    stog.xpreward[(int32 self.myself)] = 52s
    stog.goldreward[(int32 self.myself)] = 25s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x0018DC:
    push -5s
    if !(== (int32 self.myself):monstertype 24s) goto 0x0019E0
0x001900:
    stog.monstername[(int32 self.myself)] = "Temmie"
    stog.monstermaxhp[(int32 self.myself)] = 5s
    stog.monsterhp[(int32 self.myself)] = 5s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = -20s
    stog.xpreward[(int32 self.myself)] = 40s
    stog.goldreward[(int32 self.myself)] = 50s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x0019E0:
    push -5s
    if !(== (int32 self.myself):monstertype 25s) goto 0x001AE4
0x001A04:
    stog.monstername[(int32 self.myself)] = "Papyrus"
    stog.monstermaxhp[(int32 self.myself)] = 680s
    stog.monsterhp[(int32 self.myself)] = 680s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 2s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x001AE4:
    push -5s
    if !(== (int32 self.myself):monstertype 26s) goto 0x001BE8
0x001B08:
    stog.monstername[(int32 self.myself)] = "Moldsmal"
    stog.monstermaxhp[(int32 self.myself)] = 70s
    stog.monsterhp[(int32 self.myself)] = 70s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 4s
    stog.xpreward[(int32 self.myself)] = 46s
    stog.goldreward[(int32 self.myself)] = 30s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x001BE8:
    push -5s
    if !(== (int32 self.myself):monstertype 28s) goto 0x001CEC
0x001C0C:
    stog.monstername[(int32 self.myself)] = "Woshua"
    stog.monstermaxhp[(int32 self.myself)] = 70s
    stog.monsterhp[(int32 self.myself)] = 70s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 1s
    stog.xpreward[(int32 self.myself)] = 52s
    stog.goldreward[(int32 self.myself)] = 25s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x001CEC:
    push -5s
    if !(== (int32 self.myself):monstertype 29s) goto 0x001DF0
0x001D10:
    stog.monstername[(int32 self.myself)] = "Shyren"
    stog.monstermaxhp[(int32 self.myself)] = 66s
    stog.monsterhp[(int32 self.myself)] = 66s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 2s
    stog.xpreward[(int32 self.myself)] = 52s
    stog.goldreward[(int32 self.myself)] = 25s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x001DF0:
    push -5s
    if !(== (int32 self.myself):monstertype 30s) goto 0x001EF4
0x001E14:
    stog.monstername[(int32 self.myself)] = "Agent"
    stog.monstermaxhp[(int32 self.myself)] = 98s
    stog.monsterhp[(int32 self.myself)] = 98s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 2s
    stog.xpreward[(int32 self.myself)] = 52s
    stog.goldreward[(int32 self.myself)] = 20s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x001EF4:
    push -5s
    if !(== (int32 self.myself):monstertype 31s) goto 0x001FF8
0x001F18:
    stog.monstername[(int32 self.myself)] = "Mad Dummy"
    stog.monstermaxhp[(int32 self.myself)] = 200s
    stog.monsterhp[(int32 self.myself)] = 200s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = -40s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x001FF8:
    push -5s
    if !(== (int32 self.myself):monstertype 32s) goto 0x0020FC
0x00201C:
    stog.monstername[(int32 self.myself)] = "Undyne"
    stog.monstermaxhp[(int32 self.myself)] = 1500s
    stog.monsterhp[(int32 self.myself)] = 1500s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 0s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x0020FC:
    push -5s
    if !(== (int32 self.myself):monstertype 33s) goto 0x002200
0x002120:
    stog.monstername[(int32 self.myself)] = "Mettaton"
    stog.monstermaxhp[(int32 self.myself)] = 9999s
    stog.monsterhp[(int32 self.myself)] = 9999s
    stog.monsteratk[(int32 self.myself)] = 10s
    stog.monsterdef[(int32 self.myself)] = 999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x002200:
    push -5s
    if !(== (int32 self.myself):monstertype 34s) goto 0x002304
0x002224:
    stog.monstername[(int32 self.myself)] = "RG 01"
    stog.monstermaxhp[(int32 self.myself)] = 150s
    stog.monsterhp[(int32 self.myself)] = 150s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 4s
    stog.xpreward[(int32 self.myself)] = 110s
    stog.goldreward[(int32 self.myself)] = 60s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x002304:
    push -5s
    if !(== (int32 self.myself):monstertype 35s) goto 0x002408
0x002328:
    stog.monstername[(int32 self.myself)] = "RG 02"
    stog.monstermaxhp[(int32 self.myself)] = 150s
    stog.monsterhp[(int32 self.myself)] = 150s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 4s
    stog.xpreward[(int32 self.myself)] = 110s
    stog.goldreward[(int32 self.myself)] = 60s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x002408:
    push -5s
    if !(== (int32 self.myself):monstertype 36s) goto 0x00250C
0x00242C:
    stog.monstername[(int32 self.myself)] = "Tsunderplane"
    stog.monstermaxhp[(int32 self.myself)] = 80s
    stog.monsterhp[(int32 self.myself)] = 80s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 6s
    stog.xpreward[(int32 self.myself)] = 95s
    stog.goldreward[(int32 self.myself)] = 45s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x00250C:
    push -5s
    if !(== (int32 self.myself):monstertype 37s) goto 0x002610
0x002530:
    stog.monstername[(int32 self.myself)] = "Vulkin"
    stog.monstermaxhp[(int32 self.myself)] = 20s
    stog.monsterhp[(int32 self.myself)] = 20s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = -10s
    stog.xpreward[(int32 self.myself)] = 70s
    stog.goldreward[(int32 self.myself)] = 50s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x002610:
    push -5s
    if !(== (int32 self.myself):monstertype 38s) goto 0x002714
0x002634:
    stog.monstername[(int32 self.myself)] = "Pyrope"
    stog.monstermaxhp[(int32 self.myself)] = 110s
    stog.monsterhp[(int32 self.myself)] = 110s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 1s
    stog.xpreward[(int32 self.myself)] = 80s
    stog.goldreward[(int32 self.myself)] = 40s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x002714:
    push -5s
    if !(== (int32 self.myself):monstertype 39s) goto 0x002824
0x002738:
    stog.monstername[(int32 self.myself)] = "Muffet"
    stog.monstermaxhp[(int32 self.myself)] = 1250s
    stog.monsterhp[(int32 self.myself)] = 1250s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 0s
    stog.xpreward[(int32 self.myself)] = 300s
    push -5s
    stog.goldreward[(int32 self.myself)] = 59s:flag
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x002824:
    push -5s
    if !(== (int32 self.myself):monstertype 40s) goto 0x002928
0x002848:
    stog.monstername[(int32 self.myself)] = "Mettaton"
    stog.monstermaxhp[(int32 self.myself)] = 9999s
    stog.monsterhp[(int32 self.myself)] = 9999s
    stog.monsteratk[(int32 self.myself)] = 10s
    stog.monsterdef[(int32 self.myself)] = 999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x002928:
    push -5s
    if !(== (int32 self.myself):monstertype 41s) goto 0x002A2C
0x00294C:
    stog.monstername[(int32 self.myself)] = "Undyne"
    stog.monstermaxhp[(int32 self.myself)] = 1500s
    stog.monsterhp[(int32 self.myself)] = 1500s
    stog.monsteratk[(int32 self.myself)] = 10s
    stog.monsterdef[(int32 self.myself)] = 10s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x002A2C:
    push -5s
    if !(== (int32 self.myself):monstertype 42s) goto 0x002B30
0x002A50:
    stog.monstername[(int32 self.myself)] = "Madjick"
    stog.monstermaxhp[(int32 self.myself)] = 190s
    stog.monsterhp[(int32 self.myself)] = 190s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = -1s
    stog.xpreward[(int32 self.myself)] = 150s
    stog.goldreward[(int32 self.myself)] = 120s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x002B30:
    push -5s
    if !(== (int32 self.myself):monstertype 43s) goto 0x002C34
0x002B54:
    stog.monstername[(int32 self.myself)] = "Knight Knight"
    stog.monstermaxhp[(int32 self.myself)] = 230s
    stog.monsterhp[(int32 self.myself)] = 230s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 2s
    stog.xpreward[(int32 self.myself)] = 180s
    stog.goldreward[(int32 self.myself)] = 150s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x002C34:
    push -5s
    if !(== (int32 self.myself):monstertype 44s) goto 0x002D38
0x002C58:
    stog.monstername[(int32 self.myself)] = "Final Froggit"
    stog.monstermaxhp[(int32 self.myself)] = 100s
    stog.monsterhp[(int32 self.myself)] = 100s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 0s
    stog.xpreward[(int32 self.myself)] = 120s
    stog.goldreward[(int32 self.myself)] = 80s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x002D38:
    push -5s
    if !(== (int32 self.myself):monstertype 45s) goto 0x002E3C
0x002D5C:
    stog.monstername[(int32 self.myself)] = "Astigmatism"
    stog.monstermaxhp[(int32 self.myself)] = 120s
    stog.monsterhp[(int32 self.myself)] = 120s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = -2s
    stog.xpreward[(int32 self.myself)] = 130s
    stog.goldreward[(int32 self.myself)] = 85s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x002E3C:
    push -5s
    if !(== (int32 self.myself):monstertype 46s) goto 0x002F40
0x002E60:
    stog.monstername[(int32 self.myself)] = "Whimsalot"
    stog.monstermaxhp[(int32 self.myself)] = 95s
    stog.monsterhp[(int32 self.myself)] = 95s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = -3s
    stog.xpreward[(int32 self.myself)] = 110s
    stog.goldreward[(int32 self.myself)] = 80s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x002F40:
    push -5s
    if !(== (int32 self.myself):monstertype 47s) goto 0x003044
0x002F64:
    stog.monstername[(int32 self.myself)] = "Bomb"
    stog.monstermaxhp[(int32 self.myself)] = 99s
    stog.monsterhp[(int32 self.myself)] = 99s
    stog.monsteratk[(int32 self.myself)] = 1s
    stog.monsterdef[(int32 self.myself)] = 0s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x003044:
    push -5s
    if !(== (int32 self.myself):monstertype 48s) goto 0x003148
0x003068:
    stog.monstername[(int32 self.myself)] = "RG 03"
    stog.monstermaxhp[(int32 self.myself)] = 100s
    stog.monsterhp[(int32 self.myself)] = 100s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 4s
    stog.xpreward[(int32 self.myself)] = 110s
    stog.goldreward[(int32 self.myself)] = 60s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x003148:
    push -5s
    if !(== (int32 self.myself):monstertype 49s) goto 0x00324C
0x00316C:
    stog.monstername[(int32 self.myself)] = "RG 04"
    stog.monstermaxhp[(int32 self.myself)] = 100s
    stog.monsterhp[(int32 self.myself)] = 100s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 4s
    stog.xpreward[(int32 self.myself)] = 110s
    stog.goldreward[(int32 self.myself)] = 60s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x00324C:
    push -5s
    if !(== (int32 self.myself):monstertype 50s) goto 0x003350
0x003270:
    stog.monstername[(int32 self.myself)] = "Mettaton"
    stog.monstermaxhp[(int32 self.myself)] = 9999s
    stog.monsterhp[(int32 self.myself)] = 9999s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x003350:
    push -5s
    if !(== (int32 self.myself):monstertype 51s) goto 0x003454
0x003374:
    stog.monstername[(int32 self.myself)] = "Mettaton EX"
    stog.monstermaxhp[(int32 self.myself)] = 1600s
    stog.monsterhp[(int32 self.myself)] = 1600s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 1s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x003454:
    push -5s
    if !(== (int32 self.myself):monstertype 52s) goto 0x003558
0x003478:
    stog.monstername[(int32 self.myself)] = "Asgore"
    stog.monstermaxhp[(int32 self.myself)] = 3500s
    stog.monsterhp[(int32 self.myself)] = 3500s
    stog.monsteratk[(int32 self.myself)] = 10s
    stog.monsterdef[(int32 self.myself)] = -30s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x003558:
    push -5s
    if !(== (int32 self.myself):monstertype 53s) goto 0x00365C
0x00357C:
    stog.monstername[(int32 self.myself)] = "Lemon Bread"
    stog.monstermaxhp[(int32 self.myself)] = 100s
    stog.monsterhp[(int32 self.myself)] = 100s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 9999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x00365C:
    push -5s
    if !(== (int32 self.myself):monstertype 54s) goto 0x003760
0x003680:
    stog.monstername[(int32 self.myself)] = ","
    stog.monstermaxhp[(int32 self.myself)] = 100s
    stog.monsterhp[(int32 self.myself)] = 100s
    stog.monsteratk[(int32 self.myself)] = 9s
    stog.monsterdef[(int32 self.myself)] = 9999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x003760:
    push -5s
    if !(== (int32 self.myself):monstertype 55s) goto 0x003864
0x003784:
    stog.monstername[(int32 self.myself)] = "Amalgamate"
    stog.monstermaxhp[(int32 self.myself)] = 400s
    stog.monsterhp[(int32 self.myself)] = 400s
    stog.monsteratk[(int32 self.myself)] = 0s
    stog.monsterdef[(int32 self.myself)] = 0s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x003864:
    push -5s
    if !(== (int32 self.myself):monstertype 56s) goto 0x003968
0x003888:
    stog.monstername[(int32 self.myself)] = "     "
    stog.monstermaxhp[(int32 self.myself)] = 100s
    stog.monsterhp[(int32 self.myself)] = 100s
    stog.monsteratk[(int32 self.myself)] = 9s
    stog.monsterdef[(int32 self.myself)] = 999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x003968:
    push -5s
    if !(== (int32 self.myself):monstertype 57s) goto 0x003A6C
0x00398C:
    stog.monstername[(int32 self.myself)] = "Amalgamate"
    stog.monstermaxhp[(int32 self.myself)] = 100s
    stog.monsterhp[(int32 self.myself)] = 100s
    stog.monsteratk[(int32 self.myself)] = 9s
    stog.monsterdef[(int32 self.myself)] = 999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x003A6C:
    push -5s
    if !(== (int32 self.myself):monstertype 58s) goto 0x003B70
0x003A90:
    stog.monstername[(int32 self.myself)] = "Lost Soul"
    stog.monstermaxhp[(int32 self.myself)] = 999s
    stog.monsterhp[(int32 self.myself)] = 999s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x003B70:
    push -5s
    if !(== (int32 self.myself):monstertype 59s) goto 0x003C74
0x003B94:
    stog.monstername[(int32 self.myself)] = "Lost Soul"
    stog.monstermaxhp[(int32 self.myself)] = 999s
    stog.monsterhp[(int32 self.myself)] = 999s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x003C74:
    push -5s
    if !(== (int32 self.myself):monstertype 60s) goto 0x003D78
0x003C98:
    stog.monstername[(int32 self.myself)] = "Lost Soul"
    stog.monstermaxhp[(int32 self.myself)] = 999s
    stog.monsterhp[(int32 self.myself)] = 999s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x003D78:
    push -5s
    if !(== (int32 self.myself):monstertype 61s) goto 0x003E7C
0x003D9C:
    stog.monstername[(int32 self.myself)] = "Lost Soul"
    stog.monstermaxhp[(int32 self.myself)] = 999s
    stog.monsterhp[(int32 self.myself)] = 999s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x003E7C:
    push -5s
    if !(== (int32 self.myself):monstertype 62s) goto 0x003F80
0x003EA0:
    stog.monstername[(int32 self.myself)] = "Lost Soul"
    stog.monstermaxhp[(int32 self.myself)] = 999s
    stog.monsterhp[(int32 self.myself)] = 999s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x003F80:
    push -5s
    if !(== (int32 self.myself):monstertype 63s) goto 0x004084
0x003FA4:
    stog.monstername[(int32 self.myself)] = "Lost Soul"
    stog.monstermaxhp[(int32 self.myself)] = 999s
    stog.monsterhp[(int32 self.myself)] = 999s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x004084:
    push -5s
    if !(== (int32 self.myself):monstertype 64s) goto 0x004188
0x0040A8:
    stog.monstername[(int32 self.myself)] = "Monster Kid"
    stog.monstermaxhp[(int32 self.myself)] = 10s
    stog.monsterhp[(int32 self.myself)] = 10s
    stog.monsteratk[(int32 self.myself)] = 1s
    stog.monsterdef[(int32 self.myself)] = -900s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x004188:
    push -5s
    if !(== (int32 self.myself):monstertype 65s) goto 0x00428C
0x0041AC:
    stog.monstername[(int32 self.myself)] = "Undyne the Undying"
    stog.monstermaxhp[(int32 self.myself)] = 23000s
    stog.monsterhp[(int32 self.myself)] = 23000s
    stog.monsteratk[(int32 self.myself)] = 12s
    stog.monsterdef[(int32 self.myself)] = 5s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x00428C:
    push -5s
    if !(== (int32 self.myself):monstertype 66s) goto 0x004390
0x0042B0:
    stog.monstername[(int32 self.myself)] = "Glad Dummy"
    stog.monstermaxhp[(int32 self.myself)] = 5s
    stog.monsterhp[(int32 self.myself)] = 5s
    stog.monsteratk[(int32 self.myself)] = 0s
    stog.monsterdef[(int32 self.myself)] = -5s
    stog.xpreward[(int32 self.myself)] = 200s
    stog.goldreward[(int32 self.myself)] = 100s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x004390:
    push -5s
    if !(== (int32 self.myself):monstertype 67s) goto 0x004498
0x0043B4:
    stog.monstername[(int32 self.myself)] = "Mettaton NEO"
    stog.monstermaxhp[(int32 self.myself)] = 30000s
    stog.monsterhp[(int32 self.myself)] = 30000s
    stog.monsteratk[(int32 self.myself)] = 10s
    stog.monsterdef[(int32 self.myself)] = -40000
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x004498:
    push -5s
    if !(== (int32 self.myself):monstertype 68s) goto 0x00459C
0x0044BC:
    stog.monstername[(int32 self.myself)] = "Sans"
    stog.monstermaxhp[(int32 self.myself)] = 1s
    stog.monsterhp[(int32 self.myself)] = 1s
    stog.monsteratk[(int32 self.myself)] = 1s
    stog.monsterdef[(int32 self.myself)] = 1s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x00459C:
    push -5s
    if !(== (int32 self.myself):monstertype 70s) goto 0x0046A0
0x0045C0:
    stog.monstername[(int32 self.myself)] = "Final Froggit"
    stog.monstermaxhp[(int32 self.myself)] = 32s
    stog.monsterhp[(int32 self.myself)] = 32s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 2s
    stog.xpreward[(int32 self.myself)] = 4s
    stog.goldreward[(int32 self.myself)] = 2s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x0046A0:
    push -5s
    if !(== (int32 self.myself):monstertype 71s) goto 0x0047A4
0x0046C4:
    stog.monstername[(int32 self.myself)] = "Astigmatism"
    stog.monstermaxhp[(int32 self.myself)] = 50s
    stog.monsterhp[(int32 self.myself)] = 50s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 2s
    stog.xpreward[(int32 self.myself)] = 8s
    stog.goldreward[(int32 self.myself)] = 6s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x0047A4:
    push -5s
    if !(== (int32 self.myself):monstertype 72s) goto 0x0048A8
0x0047C8:
    stog.monstername[(int32 self.myself)] = "Whimsalot"
    stog.monstermaxhp[(int32 self.myself)] = 20s
    stog.monsterhp[(int32 self.myself)] = 20s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 0s
    stog.xpreward[(int32 self.myself)] = 3s
    stog.goldreward[(int32 self.myself)] = 4s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x0048A8:
    push -5s
    if !(== (int32 self.myself):monstertype 73s) goto 0x0049AC
0x0048CC:
    stog.monstername[(int32 self.myself)] = "Migospel"
    stog.monstermaxhp[(int32 self.myself)] = 45s
    stog.monsterhp[(int32 self.myself)] = 45s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = 3s
    stog.xpreward[(int32 self.myself)] = 5s
    stog.goldreward[(int32 self.myself)] = 4s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x0049AC:
    push -5s
    if !(== (int32 self.myself):monstertype 74s) goto 0x004AB0
0x0049D0:
    stog.monstername[(int32 self.myself)] = "Moldessa"
    stog.monstermaxhp[(int32 self.myself)] = 52s
    stog.monsterhp[(int32 self.myself)] = 52s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = -4s
    stog.xpreward[(int32 self.myself)] = 5s
    stog.goldreward[(int32 self.myself)] = 3s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x004AB0:
    push -5s
    if !(== (int32 self.myself):monstertype 75s) goto 0x004BB4
0x004AD4:
    stog.monstername[(int32 self.myself)] = "Parsnik"
    stog.monstermaxhp[(int32 self.myself)] = 72s
    stog.monsterhp[(int32 self.myself)] = 72s
    stog.monsteratk[(int32 self.myself)] = 7s
    stog.monsterdef[(int32 self.myself)] = -2s
    stog.xpreward[(int32 self.myself)] = 8s
    stog.goldreward[(int32 self.myself)] = 2s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x004BB4:
    push -5s
    if !(== (int32 self.myself):monstertype 76s) goto 0x004CB8
0x004BD8:
    stog.monstername[(int32 self.myself)] = "Glyde"
    stog.monstermaxhp[(int32 self.myself)] = 220s
    stog.monsterhp[(int32 self.myself)] = 220s
    stog.monsteratk[(int32 self.myself)] = 9s
    stog.monsterdef[(int32 self.myself)] = -20s
    stog.xpreward[(int32 self.myself)] = 100s
    stog.goldreward[(int32 self.myself)] = 140s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x004CB8:
    push -5s
    if !(== (int32 self.myself):monstertype 80s) goto 0x004DBC
0x004CDC:
    stog.monstername[(int32 self.myself)] = "So Sorry"
    stog.monstermaxhp[(int32 self.myself)] = 1100s
    stog.monsterhp[(int32 self.myself)] = 1100s
    stog.monsteratk[(int32 self.myself)] = 9s
    stog.monsterdef[(int32 self.myself)] = -6s
    stog.xpreward[(int32 self.myself)] = 1s
    stog.goldreward[(int32 self.myself)] = 300s
    global.itemrewardid = 1s
    global.itemrewardchance = 50s
0x004DBC:
    push -5s
    if !(== (int32 self.myself):monstertype 81s) goto 0x004EC0
0x004DE0:
    stog.monstername[(int32 self.myself)] = "Doodlebog"
    stog.monstermaxhp[(int32 self.myself)] = 100s
    stog.monsterhp[(int32 self.myself)] = 100s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x004EC0:
    push -5s
    if !(== (int32 self.myself):monstertype 99s) goto 0x004FC4
0x004EE4:
    stog.monstername[(int32 self.myself)] = "Asriel Dreemurr"
    stog.monstermaxhp[(int32 self.myself)] = 9999s
    stog.monsterhp[(int32 self.myself)] = 9999s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 9999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x004FC4:
    push -5s
    if !(== (int32 self.myself):monstertype 100s) goto 0x0050C8
0x004FE8:
    stog.monstername[(int32 self.myself)] = "Asriel"
    stog.monstermaxhp[(int32 self.myself)] = 9999s
    stog.monsterhp[(int32 self.myself)] = 9999s
    stog.monsteratk[(int32 self.myself)] = 8s
    stog.monsterdef[(int32 self.myself)] = 9999s
    stog.xpreward[(int32 self.myself)] = 0s
    stog.goldreward[(int32 self.myself)] = 0s
    global.itemrewardid = 0s
    global.itemrewardchance = 0s
0x0050C8:
    push -5s
    if !(== (int32 self.myself):monstertype 666s) goto 0x0051DC
0x0050EC:
    stog.monstername[(int32 self.myself)] = "Gaster"
    stog.monstermaxhp[(int32 self.myself)] = 666666
    stog.monsterhp[(int32 self.myself)] = 666666
    stog.monsteratk[(int32 self.myself)] = 66666
    stog.monsterdef[(int32 self.myself)] = 66666
    stog.xpreward[(int32 self.myself)] = -6666s
    stog.goldreward[(int32 self.myself)] = -6666s
    global.itemrewardid = 666s
    global.itemrewardchance = 666s
0x0051DC:
    exit
