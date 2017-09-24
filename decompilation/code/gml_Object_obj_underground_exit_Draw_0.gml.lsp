0x000000:
    if !(== self.con 1s) goto 0x000074
0x000014:
    global.interact = 1s
    self.con = 2s
    global.msc = 812s
    global.typer = 5s
    global.facechoice = 0s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000074:
    if !(== self.con 2s) goto 0x0000A4
0x000088:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0000A8
0x0000A4:
    push 0s
0x0000A8:
    if !pop goto 0x0000E8
0x0000AC:
    [obj_mainchara].y = (+ 1570.y 5s)
    global.facing = 0s
    global.interact = 0s
    self.con = 0s
0x0000E8:
    if !(== self.con 10s) goto 0x000118
0x0000FC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00011C
0x000118:
    push 0s
0x00011C:
    if !pop goto 0x000144
0x000120:
    self.con = 11s
    self.vol = (caster_get_volume[]:int32 global.currentsong)
0x000144:
    if !(== self.con 11s) goto 0x00021C
0x000158:
    self.vol = (- self.vol 0.02d)
    call (caster_set_volume[]:int32 self.vol global.currentsong)
    if !(<= self.vol 0.02d) goto 0x00021C
0x0001B0:
    call (caster_free[]:int32 (var -3s))
    self.con = 12s
    self.cym = (caster_load[]:int32 (var "music/cymbal.ogg"))
    call (caster_play[]:int32 (var 1s) (var 1s) self.cym)
    self.zr = 0s
0x00021C:
    if !(== self.con 12s) goto 0x00027C
0x000230:
    self.z = (instance_create[]:int32 (var 557s) (var 0s) (var 0s))
    push 2s
    stog.ex* = (int32 self.z)
    self.con = 13s
0x00027C:
    if !(== self.con 13s) goto 0x0002DC
0x000290:
    self.zr = (+ self.zr 1s)
    if !(>= self.zr 136s) goto 0x0002DC
0x0002BC:
    call (room_goto[]:int32 (var 241s))
    self.con = 14s
0x0002DC:
    exit
