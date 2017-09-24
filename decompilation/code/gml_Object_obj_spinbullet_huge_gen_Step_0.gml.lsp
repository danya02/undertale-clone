0x000000:
    if !(== self.counter (* self.num self.trip)) goto 0x000124
0x000024:
    self.xx = (lengthdir_x[]:int32 (+ self.add_dir (* (* (/ self.num self.maxnum) 360s) self.side)) self.radius)
    self.yy = (lengthdir_y[]:int32 (+ self.add_dir (* (* (/ self.num self.maxnum) 360s) self.side)) self.radius)
    stog.spinbullet[(int32 self.num)] = (instance_create[]:int32 (var 1648s) (+ self.centery self.yy) (+ self.centerx self.xx))
    self.num = (+ self.num 1s)
0x000124:
    self.counter = (+ self.counter 1s)
    if !(> self.counter (* (- self.maxnum 1s) self.trip)) goto 0x000384
0x000168:
    call (snd_stop[]:int32 (var 141s))
    call (snd_play[]:int32 (var 141s))
    self.deactivate = 1s
    self.num = -99s
    self.counter = -50s
    self.i = 0s
    if !(< self.i self.maxnum) goto 0x000364
0x0001D8:
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.i):spinbullet)) goto 0x000294
0x000200:
    if !(== self.i 0s) goto 0x00023C
0x000214:
    push 1s
    push -1s
    stog.king* = (int32 (int32 self.i):spinbullet)
0x00023C:
    push self.centerx
    push -1s
    stog.centerx* = (int32 (int32 self.i):spinbullet)
    push self.centery
    push -1s
    stog.centery* = (int32 (int32 self.i):spinbullet)
0x000294:
    if !(== self.strike 0s) goto 0x0002E0
0x0002A8:
    push -1s
    pushenv (int32 (int32 self.i):spinbullet) 0x0002DC
0x0002C8:
    stog.alarm[3s] = 12s
0x0002DC:
    popenv 0x0002C8
0x0002E0:
    if !(== self.strike 1s) goto 0x000348
0x0002F4:
    push -1s
    pushenv (int32 (int32 self.i):spinbullet) 0x000344
0x000314:
    call (move_towards_point[]:int32 (var 12s) self.centery self.centerx)
    self.friction = 1s
0x000344:
    popenv 0x000314
0x000348:
    self.i = (+ self.i 1s)
    goto 0x0001C0
0x000364:
    if !(== self.strike 0s) goto 0x000384
0x000378:
    call (instance_destroy[]:int32 )
0x000384:
    if !(== self.counter -44s) goto 0x0003AC
0x000398:
    push (== self.strike 1s)
    goto 0x0003B0
0x0003AC:
    push 0s
0x0003B0:
    if !pop goto 0x00047C
0x0003B4:
    self.i = 0s
    if !(< self.i self.maxnum) goto 0x00044C
0x0003D8:
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.i):spinbullet)) goto 0x000430
0x000400:
    push -1s
    pushenv (int32 (int32 self.i):spinbullet) 0x00042C
0x000420:
    call (instance_destroy[]:int32 )
0x00042C:
    popenv 0x000420
0x000430:
    self.i = (+ self.i 1s)
    goto 0x0003C0
0x00044C:
    call (instance_create[]:int32 (var 1644s) self.centery self.centerx)
    call (instance_destroy[]:int32 )
0x00047C:
    exit
