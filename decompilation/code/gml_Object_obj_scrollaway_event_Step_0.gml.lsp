0x000000:
    if !(== self.con 0s) goto 0x000048
0x000014:
    self.con = 1s
    call (snd_play[]:int32 (var 13s))
    stog.alarm[4s] = 20s
0x000048:
    if !(== self.con 1s) goto 0x000118
0x00005C:
    call (tile_layer_shift[]:int32 (var -1s) (var 0s) self.l2)
    call (tile_layer_shift[]:int32 (var -1s) (var 0s) self.l2x)
    pushenv 1249s 0x000114
0x0000AC:
    [obj_mainchara].y = (- 1570.y 1s)
    stog.y* = (- (int32 self.mett):y 1s)
    stog.y* = (- (int32 self.sixty):y 1s)
0x000114:
    push (int32 self.mett)
    push (int32 self.sixty)
    popenv 0x0000AC
0x000118:
    if !(== self.con 2s) goto 0x0001C8
0x00012C:
    self.remay = 1570.y
    self.remby = 1172.y
    call (snd_play[]:int32 (var 21s))
    self.con = 3s
    stog.alarm[4s] = 30s
    self.blastup = -6s
    self.bltotal = 0s
    self.bl = 0s
    self.ttotal = 0s
    self.ttotal2 = 0s
    self.cl = 0s
0x0001C8:
    if !(== self.con 4s) goto 0x0004AC
0x0001DC:
    if !(== self.cl 0s) goto 0x000210
0x0001F0:
    call (snd_play[]:int32 (var 14s))
    self.cl = 1s
0x000210:
    self.tspeed = (+ self.tspeed 0.4d)
    if !(> self.tspeed 22s) goto 0x000250
0x000244:
    self.tspeed = 22s
0x000250:
    if !(== self.bl 0s) goto 0x000388
0x000264:
    self.blastup = (+ self.blastup 0.2d)
    self.bltotal = (+ self.bltotal self.blastup)
    call (tile_layer_shift[]:int32 self.blastup (var 0s) self.l2)
    call (tile_layer_shift[]:int32 self.blastup (var 0s) self.l2x)
    stog.y* = (+ (int32 self.sixty):y self.blastup)
    [obj_mainchara].y = (+ 1570.y self.blastup)
    [obj_mettaton_actor].y = (+ 1172.y self.blastup)
    if !(> self.blastup 0s) goto 0x000374
0x000360:
    push (int32 self.sixty)
    push (>= self.bltotal 20s)
    goto 0x000378
0x000374:
    push 0s
0x000378:
    if !pop goto 0x000388
0x00037C:
    self.blastup = -2s
0x000388:
    if !(< self.ttotal 300s) goto 0x00041C
0x00039C:
    self.ttotal = (+ self.ttotal self.tspeed)
    self.ttotal2 = (+ self.ttotal2 self.tspeed)
    call (tile_layer_shift[]:int32 self.tspeed (var 0s) self.l1)
    call (tile_layer_shift[]:int32 self.tspeed (var 0s) self.l3)
0x00041C:
    [obj_mettboss_event].bly = (+ 1249.bly self.tspeed)
    if !(> self.ttotal 400s) goto 0x000488
0x00044C:
    self.ttotal = (- self.ttotal 400s)
    call (tile_layer_shift[]:int32 (var -400s) (var 0s) self.l1)
0x000488:
    call (instance_create[]:int32 (var 1250s) (var 0s) (var 0s))
0x0004AC:
    if !(== self.con 6s) goto 0x0005E4
0x0004C0:
    pushenv 1250s 0x0004D4
0x0004C8:
    call (instance_destroy[]:int32 )
0x0004D4:
    popenv 0x0004C8
0x0004D8:
    self.con = 7s
    call (tile_layer_shift[]:int32 (+ (- self.bltotal) 20s) (var 0s) self.l2)
    call (tile_layer_shift[]:int32 (+ (- self.bltotal) 20s) (var 0s) self.l2x)
    if !(bool (instance_exists[]:int32 self.sixty)) goto 0x000594
0x00055C:
    stog.y* = (+ (int32 self.sixty):y (+ (- self.bltotal) 20s))
0x000594:
    push (int32 self.sixty)
    call (tile_layer_shift[]:int32 (- self.ttotal2) (var 0s) self.l3)
    call (tile_layer_shift[]:int32 (- self.ttotal) (var 0s) self.l1)
0x0005E4:
    if !(== self.con 7s) goto 0x000604
0x0005F8:
    call (instance_destroy[]:int32 )
0x000604:
    exit
