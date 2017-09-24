0x000000:
    if !(== self.myinteract 1s) goto 0x00003C
0x000014:
    if !(== self.con 0s) goto 0x00003C
0x000028:
    push (== global.interact 0s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x0000E8
0x000044:
    call (snd_play[]:int32 (var 28s))
    if !(bool (instance_exists[]:int32 (var 1114s))) goto 0x0000B4
0x000070:
    global.interact = 1s
    self.image_speed = 0.2d
    self.con = 1s
    stog.alarm[4s] = 15s
    goto 0x0000E8
0x0000B4:
    self.image_speed = 0.2d
    self.con = 20s
    stog.alarm[4s] = 15s
0x0000E8:
    if !(== self.con 1s) goto 0x000184
0x0000FC:
    global.encounter = 0s
    self.finished = 0s
    if !(bool (instance_exists[]:int32 (var 1114s))) goto 0x000184
0x00012C:
    if !(== 1114.using 99s) goto 0x00014C
0x000140:
    self.finished = 1s
0x00014C:
    [obj_waterboard].using = 99s
    pushenv 1114s 0x000180
0x000160:
    self.image_alpha = (- self.image_alpha 0.08d)
0x000180:
    popenv 0x000160
0x000184:
    if !(== self.con 2s) goto 0x000284
0x000198:
    [obj_waterboardpuzzle1].won = 0s
    self.i = 0s
    if !(< self.i 4s) goto 0x000264
0x0001C4:
    push -1s
    if !(> (int32 self.i):block 0s) goto 0x000248
0x0001E8:
    push -1s
    pushenv (int32 (int32 self.i):block) 0x000228
0x000208:
    self.x = self.xstart
    self.y = self.ystart
0x000228:
    popenv 0x000208
0x00022C:
    stog.block[(int32 self.i)] = 0s
0x000248:
    self.i = (+ self.i 1s)
    goto 0x0001B0
0x000264:
    self.con = 3s
    stog.alarm[4s] = 15s
0x000284:
    if !(== self.con 3s) goto 0x00032C
0x000298:
    if !(bool (instance_exists[]:int32 (var 1114s))) goto 0x00032C
0x0002B0:
    [obj_waterboard].image_index = 0s
    [obj_waterboard].image_speed = 0s
    pushenv 1114s 0x0002E0
0x0002D0:
    self.x = self.xstart
0x0002E0:
    popenv 0x0002D0
0x0002E4:
    pushenv 1114s 0x0002FC
0x0002EC:
    self.y = self.ystart
0x0002FC:
    popenv 0x0002EC
0x000300:
    pushenv 1114s 0x000328
0x000308:
    self.image_alpha = (+ self.image_alpha 0.08d)
0x000328:
    popenv 0x000308
0x00032C:
    if !(== self.con 4s) goto 0x0003E0
0x000340:
    if !(bool (instance_exists[]:int32 (var 1110s))) goto 0x000364
0x000358:
    [obj_waterboardpuzzle1].waterboard = 0s
0x000364:
    if !(bool (instance_exists[]:int32 (var 1114s))) goto 0x0003A4
0x00037C:
    [obj_waterboard].using = 0s
    [obj_waterboard].myinteract = 0s
    [obj_waterboard].depth = 800000
0x0003A4:
    self.myinteract = 0s
    self.con = 0s
    self.image_speed = 0s
    self.image_index = 0s
    global.interact = 0s
0x0003E0:
    if !(== self.con 21s) goto 0x000424
0x0003F4:
    self.image_speed = 0s
    self.image_index = 0s
    self.con = 0s
    self.myinteract = 0s
0x000424:
    exit
