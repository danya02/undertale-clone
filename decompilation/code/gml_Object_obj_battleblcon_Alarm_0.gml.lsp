0x000000:
    stog.flag[10s] = 0s
    stog.flag[11s] = 0s
    stog.flag[12s] = 0s
    stog.flag[13s] = 0s
    global.entrance = 0s
    [obj_mainchara].depth = -600s
    self.battle = 1s
    if !(== self.room 220s) goto 0x000094
0x000088:
    self.battle = 2s
0x000094:
    if !(== self.room 221s) goto 0x0000B4
0x0000A8:
    self.battle = 2s
0x0000B4:
    if !(== self.room 222s) goto 0x0000D4
0x0000C8:
    self.battle = 2s
0x0000D4:
    if !(== self.room 225s) goto 0x0000F4
0x0000E8:
    self.battle = 2s
0x0000F4:
    if !(== self.battle 1s) goto 0x000148
0x000108:
    if !(== (instance_exists[]:int32 (var 142s)) 0s) goto 0x000148
0x000124:
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
0x000148:
    if !(== self.battle 2s) goto 0x00019C
0x00015C:
    if !(== (instance_exists[]:int32 (var 145s)) 0s) goto 0x00019C
0x000178:
    call (instance_create[]:int32 (var 145s) (var 0s) (var 0s))
0x00019C:
    call (instance_destroy[]:int32 )
0x0001A8:
    exit
