0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.fun 0s) goto 0x0000B0
0x000048:
    if !(bool (instance_exists[]:int32 (var 775s))) goto 0x000074
0x000060:
    self.image_index = 775.image_index
    goto 0x0000B0
0x000074:
    if !(== self.speed 0s) goto 0x00009C
0x000088:
    push (== self.path_speed 0s)
    goto 0x0000A0
0x00009C:
    push 0s
0x0000A0:
    if !pop goto 0x0000B0
0x0000A4:
    self.image_index = 0s
0x0000B0:
    if !(== self.speed 0s) goto 0x0000D8
0x0000C4:
    call (scr_npc_watch[]:int32 (var 0s))
0x0000D8:
    if !(bool (instance_exists[]:int32 (var 1414s))) goto 0x0001B4
0x0000F0:
    if !(> self.spot 0s) goto 0x00012C
0x000104:
    if !(== 1414.level 0s) goto 0x00012C
0x000118:
    push (== global.interact 0s)
    goto 0x000130
0x00012C:
    push 0s
0x000130:
    if !pop goto 0x0001B4
0x000134:
    if !(== self.spot 2s) goto 0x0001A8
0x000148:
    self.myscore = (+ self.myscore 1s)
    if !(> self.myscore 3s) goto 0x0001A8
0x000174:
    call (snd_play[]:int32 (var 28s))
    self.hspeed = (* self.hspeed 1.1d)
0x0001A8:
    self.spot = 1s
0x0001B4:
    if !(== self.spot 1s) goto 0x0002CC
0x0001C8:
    self.solid = 0s
    if !(== self.hspeed 0s) goto 0x0001F4
0x0001E8:
    self.hspeed = 5s
0x0001F4:
    if !(< self.hspeed 0s) goto 0x00021C
0x000208:
    self.hspeed = (- self.hspeed)
0x00021C:
    self.image_speed = 0.5d
    self.sprite_index = 1328s
    if !(> self.x 183s) goto 0x0002CC
0x000250:
    self.x = (ceil[]:int32 self.x)
    self.hspeed = 0s
    self.spot = 0s
    self.sprite_index = 1327s
    self.solid = 1s
    if !(> self.myscore 10s) goto 0x0002C0
0x0002AC:
    call (snd_play[]:int32 (var 49s))
0x0002C0:
    self.myscore = 0s
0x0002CC:
    if !(bool (instance_exists[]:int32 (var 1414s))) goto 0x0003A8
0x0002E4:
    if !(< self.spot 2s) goto 0x000320
0x0002F8:
    if !(== 1414.level 1s) goto 0x000320
0x00030C:
    push (== global.interact 0s)
    goto 0x000324
0x000320:
    push 0s
0x000324:
    if !pop goto 0x0003A8
0x000328:
    if !(== self.spot 1s) goto 0x00039C
0x00033C:
    self.myscore = (+ self.myscore 1s)
    if !(> self.myscore 3s) goto 0x00039C
0x000368:
    call (snd_play[]:int32 (var 28s))
    self.hspeed = (* self.hspeed 1.1d)
0x00039C:
    self.spot = 2s
0x0003A8:
    if !(== self.spot 2s) goto 0x0004C0
0x0003BC:
    self.solid = 0s
    if !(== self.hspeed 0s) goto 0x0003E8
0x0003DC:
    self.hspeed = -5s
0x0003E8:
    if !(> self.hspeed 0s) goto 0x000410
0x0003FC:
    self.hspeed = (- self.hspeed)
0x000410:
    self.image_speed = 0.5d
    self.sprite_index = 1330s
    if !(< self.x 27s) goto 0x0004C0
0x000444:
    self.x = (floor[]:int32 self.x)
    self.hspeed = 0s
    self.spot = 3s
    self.sprite_index = 1335s
    self.solid = 1s
    if !(> self.myscore 10s) goto 0x0004B4
0x0004A0:
    call (snd_play[]:int32 (var 49s))
0x0004B4:
    self.myscore = 0s
0x0004C0:
    if !(== self.spot 5s) goto 0x0004EC
0x0004D4:
    push (>= self.y self.ystart)
    goto 0x0004F0
0x0004EC:
    push 0s
0x0004F0:
    if !pop goto 0x000528
0x0004F4:
    self.y = self.ystart
    self.vspeed = 0s
    self.spot = 3s
    self.sprite_index = 1335s
0x000528:
    if !(> self.myscore 3s) goto 0x000550
0x00053C:
    push (== self.workout 0s)
    goto 0x000554
0x000550:
    push 0s
0x000554:
    if !pop goto 0x000564
0x000558:
    self.workout = 1s
0x000564:
    if !(> self.myscore 10s) goto 0x00058C
0x000578:
    push (== self.workout 1s)
    goto 0x000590
0x00058C:
    push 0s
0x000590:
    if !pop goto 0x0005A0
0x000594:
    self.workout = 2s
0x0005A0:
    exit
