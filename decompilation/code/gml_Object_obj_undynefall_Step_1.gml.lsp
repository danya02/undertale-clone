0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_npc_anim[]:int32 )
    if !(== self.con 10s) goto 0x000070
0x000054:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000074
0x000070:
    push 0s
0x000074:
    if !pop goto 0x0000C4
0x000078:
    global.interact = 1s
    self.con = 10.1d
    self.w_active = 1s
    self.thisx = 1570.x
    self.xx = self.thisx
0x0000C4:
    if !(== self.con 10.1d) goto 0x0000EC
0x0000E0:
    global.interact = 1s
0x0000EC:
    if !(== self.con 11s) goto 0x00012C
0x000100:
    global.interact = 1s
    self.con = 12s
    stog.alarm[4s] = 30s
0x00012C:
    if !(== self.con 12s) goto 0x00014C
0x000140:
    global.interact = 1s
0x00014C:
    if !(== self.con 13s) goto 0x000198
0x000160:
    global.interact = 1s
    self.shakify = 2s
    self.con = 14s
    stog.alarm[4s] = 30s
0x000198:
    if !(== self.con 14s) goto 0x0001B8
0x0001AC:
    global.interact = 1s
0x0001B8:
    if !(== self.con 15s) goto 0x0001F8
0x0001CC:
    self.shakify = 0s
    self.con = 16s
    stog.alarm[4s] = 60s
0x0001F8:
    if !(== self.con 17s) goto 0x000238
0x00020C:
    self.shakify = 3s
    self.con = 18s
    stog.alarm[4s] = 40s
0x000238:
    if !(== self.con 19s) goto 0x000350
0x00024C:
    self.shakify = 0s
    self.visible = 0s
    self.undyne = (instance_create[]:int32 (var 1117s) self.y (- self.x 10s))
    push 1425s
    stog.rsprite* = (int32 self.undyne)
    push 1427s
    stog.dsprite* = (int32 self.undyne)
    push 1426s
    stog.lsprite* = (int32 self.undyne)
    push 1432s
    stog.usprite* = (int32 self.undyne)
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
    self.con = 20s
    call (snd_play[]:int32 (var 106s))
    stog.alarm[4s] = 90s
0x000350:
    if !(== self.con 20s) goto 0x000370
0x000364:
    global.interact = 1s
0x000370:
    if !(== self.con 21s) goto 0x0003CC
0x000384:
    push (int32 self.undyne):dsprite
    stog.sprite_index* = (int32 self.undyne)
    self.con = 22s
    stog.alarm[4s] = 60s
0x0003CC:
    if !(== self.con 23s) goto 0x000428
0x0003E0:
    push (int32 self.undyne):usprite
    stog.sprite_index* = (int32 self.undyne)
    self.con = 24s
    stog.alarm[4s] = 60s
0x000428:
    if !(== self.con 25s) goto 0x000484
0x00043C:
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
    self.con = 26s
    stog.alarm[4s] = 90s
0x000484:
    if !(== self.con 27s) goto 0x000518
0x000498:
    push (int32 self.undyne):lsprite
    stog.sprite_index* = (int32 self.undyne)
    push -1s
    stog.hspeed* = (int32 self.undyne)
    push 0.1d
    stog.image_speed* = (int32 self.undyne)
    self.con = 28s
    stog.alarm[4s] = 100s
0x000518:
    if !(== self.con 29s) goto 0x000584
0x00052C:
    stog.flag[350s] = 0s
    global.plot = 122s
    pushenv (int32 self.undyne) 0x000568
0x00055C:
    call (instance_destroy[]:int32 )
0x000568:
    popenv 0x00055C
0x00056C:
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000584:
    if !(> self.shakify 0s) goto 0x000650
0x000598:
    if !(== self.shaked 0s) goto 0x0005D8
0x0005AC:
    self.shakememx = self.x
    self.shakememy = self.y
    self.shaked = 1s
0x0005D8:
    self.x = (- (+ self.shakememx (random[]:int32 self.shakify)) (/ self.shakify (double 2s)))
    self.y = (- (+ self.shakememy (random[]:int32 self.shakify)) (/ self.shakify (double 2s)))
0x000650:
    exit
