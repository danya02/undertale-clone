0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    push -5s
    if !(== 107s:flag 0s) goto 0x000124
0x000050:
    self.hasdog = 0s
    self.i = 0s
    if !(< self.i 8s) goto 0x0000C8
0x00007C:
    push -5s
    if !(== (int32 self.i):item 27s) goto 0x0000AC
0x0000A0:
    self.hasdog = 1s
0x0000AC:
    self.i = (+ self.i 1s)
    goto 0x000068
0x0000C8:
    if !(== self.hasdog 0s) goto 0x000124
0x0000DC:
    self.noroom = 0s
    call (scr_itemget[]:int32 (var 27s))
    if !(!= self.noroom 1s) goto 0x000124
0x000110:
    stog.flag[107s] = 2s
0x000124:
    if !(== self.con 1s) goto 0x000154
0x000138:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000158
0x000154:
    push 0s
0x000158:
    if !pop goto 0x000274
0x00015C:
    self.myinteract = 0s
    global.interact = 1s
    call (caster_pause[]:int32 global.currentsong)
    call (snd_play[]:int32 (var 47s))
    if !(!= global.facing 3s) goto 0x000204
0x0001B0:
    self.dog = (instance_create[]:int32 (var 1088s) (+ 1570.y 10s) (+ 1570.x 30s))
    push 1525s
    stog.sprite_index* = (int32 self.dog)
    goto 0x000254
0x000204:
    self.dog = (instance_create[]:int32 (var 1088s) (+ 1570.y 10s) (- 1570.x 30s))
    push 1520s
    stog.sprite_index* = (int32 self.dog)
0x000254:
    stog.alarm[4s] = 30s
    self.con = 2s
0x000274:
    if !(== self.con 3s) goto 0x0002D8
0x000288:
    pushenv (int32 self.dog) 0x0002A4
0x000298:
    self.con = 1s
0x0002A4:
    popenv 0x000298
0x0002A8:
    call (caster_play[]:int32 (var 1s) (var 1s) self.dogsong)
    self.con = 4s
0x0002D8:
    if !(== self.con 5s) goto 0x0003D4
0x0002EC:
    self.res = (floor[]:int32 (random[]:int32 (var 5s)))
    call (scr_itemget[]:int32 (+ 29s self.res))
    global.interact = 0s
    call (caster_stop[]:int32 self.dogsong)
    call (caster_set_volume[]:int32 (var 0s) global.currentsong)
    call (caster_resume[]:int32 global.currentsong)
    call (instance_create[]:int32 (var 152s) (var 0s) (var 0s))
    stog.flag[107s] = 1s
    self.con = 6s
    self.myinteract = 0s
    self.anti_buffer = 0s
0x0003D4:
    if !(> self.con 0s) goto 0x0003FC
0x0003E8:
    push (< self.con 6s)
    goto 0x000400
0x0003FC:
    push 0s
0x000400:
    if !pop goto 0x00041C
0x000404:
    global.interact = 1s
    self.anti_buffer = 1s
0x00041C:
    exit
