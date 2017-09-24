0x000000:
    if !(!= global.interact 5s) goto 0x00002C
0x000014:
    self.rate_time = (+ self.rate_time 1s)
0x00002C:
    if !(== self.falling 0s) goto 0x000128
0x000040:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) self.y2 self.x2 self.y1 self.x1)) goto 0x000128
0x000088:
    self.falling = 1s
    call (snd_play[]:int32 (var 134s))
    [obj_mainchara].image_alpha = 0.5d
    pushenv 779s 0x0000D0
0x0000C4:
    call (instance_destroy[]:int32 )
0x0000D0:
    popenv 0x0000C4
0x0000D4:
    pushenv 782s 0x0000E8
0x0000DC:
    call (instance_destroy[]:int32 )
0x0000E8:
    popenv 0x0000DC
0x0000EC:
    pushenv 774s 0x000100
0x0000F4:
    call (instance_destroy[]:int32 )
0x000100:
    popenv 0x0000F4
0x000104:
    global.interact = 1s
    [obj_mainchara].vspeed = 6s
    global.phasing = 1s
0x000128:
    if !(== self.falling 1s) goto 0x000250
0x00013C:
    if !(> 1570.y self.triggery) goto 0x000250
0x000154:
    if !(== self.fell 0s) goto 0x0001A8
0x000168:
    [obj_mainchara].dsprite = 1043s
    [obj_mainchara].usprite = 1044s
    [obj_mainchara].rsprite = 1045s
    [obj_mainchara].lsprite = 1046s
    self.fell = 1s
    goto 0x0001E4
0x0001A8:
    [obj_mainchara].dsprite = 1043s
    [obj_mainchara].usprite = 1044s
    [obj_mainchara].rsprite = 1045s
    [obj_mainchara].lsprite = 1046s
    self.fell = 0s
0x0001E4:
    [obj_mainchara].image_alpha = 1s
    [obj_mainchara].x = (round[]:int32 1570.x)
    [obj_mainchara].y = (round[]:int32 1570.y)
    [obj_mainchara].vspeed = 0s
    global.interact = 0s
    global.phasing = 0s
    self.falling = 0s
0x000250:
    exit
