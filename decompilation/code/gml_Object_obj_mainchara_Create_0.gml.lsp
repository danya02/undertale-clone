0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    push -5s
    if !(== 7s:flag 1s) goto 0x0000A0
0x000050:
    push -5s
    push 287s:flag
    if !(<= -5s 286s:flag) goto 0x0000A0
0x000078:
    push -5s
    stog.flag[287s] = (+ 286s:flag 1s)
0x0000A0:
    push -5s
    if !(== 6s:flag 1s) goto 0x0000DC
0x0000BC:
    push (!= (string_lower[]:int32 global.charname) "frisk")
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x0000F8
0x0000E4:
    stog.flag[6s] = 0s
0x0000F8:
    stog.flag[462s] = 0s
    if !(== (% self.x 3s) 2s) goto 0x000140
0x000128:
    self.x = (+ self.x 1s)
0x000140:
    if !(== (% self.x 3s) 1s) goto 0x000174
0x00015C:
    self.x = (- self.x 1s)
0x000174:
    if !(== (% self.y 3s) 2s) goto 0x0001A8
0x000190:
    self.y = (+ self.y 1s)
0x0001A8:
    if !(== (% self.y 3s) 1s) goto 0x0001DC
0x0001C4:
    self.y = (- self.y 1s)
0x0001DC:
    self.lastfacing = 0s
    self.nnn = 0s
    self.cutscene = 0s
    self.oldx = self.x
    self.oldy = self.y
    self.image_speed = 0s
    global.phasing = 0s
    self.facing = global.facing
    self.moving = 0s
    self.movement = 1s
    global.currentroom = self.room
    if !(== global.interact 3s) goto 0x0004E0
0x000284:
    if !(> global.entrance 0s) goto 0x0004E0
0x000298:
    global.interact = 0s
    if !(== global.entrance 1s) goto 0x0002D8
0x0002B8:
    self.x = 814.x
    self.y = 814.y
0x0002D8:
    if !(== global.entrance 2s) goto 0x00030C
0x0002EC:
    self.x = 794.x
    self.y = 794.y
0x00030C:
    if !(== global.entrance 4s) goto 0x000340
0x000320:
    self.x = 795.x
    self.y = 795.y
0x000340:
    if !(== global.entrance 5s) goto 0x000374
0x000354:
    self.x = 796.x
    self.y = 796.y
0x000374:
    if !(== global.entrance 18s) goto 0x0003A8
0x000388:
    self.x = 803.x
    self.y = 803.y
0x0003A8:
    if !(== global.entrance 19s) goto 0x0003DC
0x0003BC:
    self.x = 802.x
    self.y = 802.y
0x0003DC:
    if !(== global.entrance 20s) goto 0x000410
0x0003F0:
    self.x = 801.x
    self.y = 801.y
0x000410:
    if !(== global.entrance 21s) goto 0x000444
0x000424:
    self.x = 800.x
    self.y = 800.y
0x000444:
    if !(== global.entrance 22s) goto 0x000478
0x000458:
    self.x = 799.x
    self.y = 799.y
0x000478:
    if !(== global.entrance 23s) goto 0x0004AC
0x00048C:
    self.x = 798.x
    self.y = 798.y
0x0004AC:
    if !(== global.entrance 24s) goto 0x0004E0
0x0004C0:
    self.x = 797.x
    self.y = 797.y
0x0004E0:
    self.dsprite = 1043s
    self.rsprite = 1045s
    self.usprite = 1044s
    self.lsprite = 1046s
    push -5s
    if !(== 85s:flag 1s) goto 0x00055C
0x00052C:
    self.dsprite = 1016s
    self.rsprite = 1018s
    self.usprite = 1017s
    self.lsprite = 1019s
0x00055C:
    if !(== global.facing 0s) goto 0x000580
0x000570:
    self.sprite_index = self.dsprite
0x000580:
    if !(== global.facing 1s) goto 0x0005A4
0x000594:
    self.sprite_index = self.rsprite
0x0005A4:
    if !(== global.facing 2s) goto 0x0005C8
0x0005B8:
    self.sprite_index = self.usprite
0x0005C8:
    if !(== global.facing 3s) goto 0x0005EC
0x0005DC:
    self.sprite_index = self.lsprite
0x0005EC:
    push -5s
    if !(== 480s:flag 1s) goto 0x000640
0x000608:
    self.image_blend = (merge_color[]:int32 (var 0.3d) (var 16777215) (var 8421504))
0x000640:
    self.inwater = 0s
    self.h_skip = 0s
    self.uncan = 0s
    self.m_override = 0s
0x000670:
    exit
