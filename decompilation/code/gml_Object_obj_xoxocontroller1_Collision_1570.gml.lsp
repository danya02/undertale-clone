0x000000:
    self.ii = self.image_index
    if !(== self.room 59s) goto 0x000164
0x000024:
    if !(bool (instance_exists[]:int32 (var 1001s))) goto 0x000050
0x00003C:
    push (== self.fvic 1s)
    goto 0x000054
0x000050:
    push 0s
0x000054:
    if !pop goto 0x0000D4
0x000058:
    global.plot = (+ 1001.xplot 1s)
    [obj_mainchara].cutscene = 0s
    [obj_xoxo].image_index = 3s
    if !(< 1001.conversation 9s) goto 0x0000D0
0x00009C:
    [obj_papyrus5].conversation = 9s
    self.sans = (instance_create[]:int32 (var 1022s) (var 80s) (var 620s))
0x0000D0:
    goto 0x000144
0x0000D4:
    if !(<= global.plot 55s) goto 0x000144
0x0000E8:
    if !(> self.vic 0s) goto 0x000120
0x0000FC:
    push -5s
    stog.flag[(+ 63s:flag 1s)] = 63s
0x000120:
    [obj_xoxo].image_index = 0s
    self.fvic = 0s
    self.vic = 0s
0x000144:
    self.image_index = 1s
    stog.alarm[2s] = 3s
0x000164:
    if !(== self.room 58s) goto 0x00021C
0x000178:
    if !(== self.fvic 1s) goto 0x0001A0
0x00018C:
    push (< global.plot 53s)
    goto 0x0001A4
0x0001A0:
    push 0s
0x0001A4:
    if !pop goto 0x0001C4
0x0001A8:
    global.plot = 53s
    [obj_xoxo].image_index = 3s
    goto 0x0001FC
0x0001C4:
    if !(< global.plot 53s) goto 0x0001FC
0x0001D8:
    [obj_xoxo].image_index = 0s
    self.fvic = 0s
    self.vic = 0s
0x0001FC:
    self.image_index = 1s
    stog.alarm[2s] = 3s
0x00021C:
    if !(== self.room 63s) goto 0x000244
0x000230:
    push (== global.phasing 0s)
    goto 0x000248
0x000244:
    push 0s
0x000248:
    if !pop goto 0x000354
0x00024C:
    if !(== self.fvic 1s) goto 0x000274
0x000260:
    push (< global.plot 63s)
    goto 0x000278
0x000274:
    push 0s
0x000278:
    if !pop goto 0x0002FC
0x00027C:
    global.plot = 63s
    self.fb = (instance_create[]:int32 (var 1376s) 979.y (+ 979.x 3s))
    push 1s
    stog.justdoit* = (int32 self.fb)
    stog.alarm[(int32 self.fb)] = 3s
    [obj_xoxo].image_index = 3s
    goto 0x000334
0x0002FC:
    if !(< global.plot 63s) goto 0x000334
0x000310:
    [obj_xoxo].image_index = 0s
    self.fvic = 0s
    self.vic = 0s
0x000334:
    self.image_index = 1s
    stog.alarm[2s] = 3s
0x000354:
    if !(== self.ii 0s) goto 0x000380
0x000368:
    push (!= self.ii self.image_index)
    goto 0x000384
0x000380:
    push 0s
0x000384:
    if !pop goto 0x00039C
0x000388:
    call (snd_play[]:int32 (var 132s))
0x00039C:
    exit
