0x000000:
    stog.view_yview[0s] = 0s
    self.reg = 1s
    self.up = 0s
    if !(== (== self.room 70s) 1s) goto 0x000054
0x000048:
    self.up = 1s
0x000054:
    if !(< global.plot 122s) goto 0x000078
0x000068:
    call (instance_destroy[]:int32 )
    exit
0x000078:
    if !(== global.entrance 1s) goto 0x0000DC
0x00008C:
    push -5s
    if !(== (% 460s:flag 2s) 1s) goto 0x0000C8
0x0000B0:
    stog.flag[461s] = 1s
    goto 0x0000DC
0x0000C8:
    stog.flag[461s] = 0s
0x0000DC:
    push -5s
    if !(== 461s:flag 1s) goto 0x000108
0x0000F8:
    self.reg = 0s
    goto 0x000114
0x000108:
    self.reg = 1s
0x000114:
    self.image_speed = 0s
    self.con = 0s
    self.siner = 0s
    self.dogy = 0s
    if !(== self.reg 1s) goto 0x000164
0x000158:
    self.sprite_index = 1528s
0x000164:
    self.cc = 0s
    self.bgspeed = 0s
    self.lapbg = 0s
    self.rman = (instance_create[]:int32 (var 1073s) (- self.y 15s) (+ self.x 20s))
    self.depth = (+ (int32 self.rman):depth 10s)
    self.snapper = 999999
    self.myinteract = 0s
    self.type = 0s
    if !(== self.room 316s) goto 0x000234
0x000220:
    push (== self.type 0s)
    goto 0x000238
0x000234:
    push 0s
0x000238:
    if !pop goto 0x00038C
0x00023C:
    self.myinteract = 99s
    self.type = 1s
    self.depth = 900000
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    stog.view_xview[0s] = 0s
    self.x = 340s
    self.lapbg = 1s
    self.con = 6s
    push -5s
    if !(== 461s:flag 0s) goto 0x0002E8
0x0002D8:
    self.reg = 1s
    goto 0x0002F4
0x0002E8:
    self.reg = 0s
0x0002F4:
    if !(== self.reg 0s) goto 0x000314
0x000308:
    self.sprite_index = 1527s
0x000314:
    if !(== self.reg 1s) goto 0x000334
0x000328:
    self.sprite_index = 1528s
0x000334:
    self.snapper = 1570s
    global.interact = 1s
    if !(== self.reg 0s) goto 0x00036C
0x000360:
    self.bgspeed = 8s
0x00036C:
    if !(== self.reg 1s) goto 0x00038C
0x000380:
    self.bgspeed = 4s
0x00038C:
    if !(== self.type 0s) goto 0x0003B4
0x0003A0:
    push (== global.entrance 24s)
    goto 0x0003B8
0x0003B4:
    push 0s
0x0003B8:
    if !pop goto 0x0004C0
0x0003BC:
    self.snapper = 1570s
    self.myinteract = 99s
    self.type = 1s
    self.lapbg = 0s
    self.depth = 900000
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    stog.view_xview[0s] = 0s
    self.x = 340s
    self.con = 50s
    push -5s
    if !(== 461s:flag 0s) goto 0x000474
0x000464:
    self.reg = 1s
    goto 0x000480
0x000474:
    self.reg = 0s
0x000480:
    if !(== self.reg 0s) goto 0x0004A0
0x000494:
    self.sprite_index = 1527s
0x0004A0:
    if !(== self.reg 1s) goto 0x0004C0
0x0004B4:
    self.sprite_index = 1528s
0x0004C0:
    if !(== self.lapbg 1s) goto 0x000508
0x0004D4:
    self.tilex = -320s
    call (tile_layer_shift[]:int32 (var 0s) (var -320s) (var 1000000))
0x000508:
    if !(== self.up 1s) goto 0x00052C
0x00051C:
    self.depth = 950000
0x00052C:
    stog.view_yview[0s] = 0s
0x000540:
    exit
