0x000000:
    self.moving = 0s
    self.mr = 0s
    self.ml = 0s
    self.md = 0s
    self.mu = 0s
    if !(== self.con 1s) goto 0x000080
0x000050:
    global.interact = 1s
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000080
0x000074:
    [obj_mainchara].visible = 0s
0x000080:
    if !(== self.canmove 1s) goto 0x000124
0x000094:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x0000B8
0x0000AC:
    self.mr = 1s
0x0000B8:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x0000DC
0x0000D0:
    self.ml = 1s
0x0000DC:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x000100
0x0000F4:
    self.md = 1s
0x000100:
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x000124
0x000118:
    self.mu = 1s
0x000124:
    if !(< self.x (- self.x1 10s)) goto 0x000158
0x000144:
    push (== self.con 0s)
    goto 0x00015C
0x000158:
    push 0s
0x00015C:
    if !pop goto 0x000198
0x000160:
    call (caster_stop[]:int32 self.beat)
    self.playing = -1s
    self.canmove = 0s
    self.con = 1s
0x000198:
    if !(> self.x (+ self.x2 10s)) goto 0x0001CC
0x0001B8:
    push (== self.con 0s)
    goto 0x0001D0
0x0001CC:
    push 0s
0x0001D0:
    if !pop goto 0x00020C
0x0001D4:
    call (caster_stop[]:int32 self.beat)
    self.playing = -1s
    self.canmove = 0s
    self.con = 5s
0x00020C:
    if !(== self.con 1s) goto 0x00026C
0x000220:
    self.ml = 1s
    if !(< self.x (- self.x1 31s)) goto 0x00026C
0x00024C:
    self.con = 9s
    stog.alarm[4s] = 20s
0x00026C:
    if !(== self.con 5s) goto 0x0002CC
0x000280:
    self.mr = 1s
    if !(> self.x (+ self.x2 30s)) goto 0x0002CC
0x0002AC:
    self.con = 9s
    stog.alarm[4s] = 20s
0x0002CC:
    if !(== self.con 10s) goto 0x000324
0x0002E0:
    self.mclock = 0s
    self.con = 11s
    stog.alarm[4s] = 4s
    push 4s
    stog.vspeed* = (int32 self.mc)
0x000324:
    if !(== self.con 12s) goto 0x000384
0x000338:
    call (snd_play[]:int32 (var 106s))
    push 0s
    stog.vspeed* = (int32 self.mc)
    self.con = 13s
    stog.alarm[4s] = 40s
0x000384:
    if !(== self.con 14s) goto 0x0004B4
0x000398:
    if !(< self.x (/ self.room_width (double 2s))) goto 0x0003FC
0x0003BC:
    [obj_mainchara].x = (- self.x1 22s)
    [obj_mainchara].y = (- (int32 self.mc):y 8s)
    goto 0x000444
0x0003FC:
    [obj_mainchara].x = (+ (+ self.x2 self.sprite_width) 2s)
    [obj_mainchara].y = (- (int32 self.mc):y 8s)
0x000444:
    global.interact = 0s
    global.facing = 0s
    [obj_mainchara].visible = 1s
    self.con = 15s
    call (caster_free[]:int32 self.beat)
    pushenv (int32 self.mc) 0x0004A4
0x000498:
    call (instance_destroy[]:int32 )
0x0004A4:
    popenv 0x000498
0x0004A8:
    call (instance_destroy[]:int32 )
0x0004B4:
    if !(== self.mr 1s) goto 0x00050C
0x0004C8:
    self.x = (+ self.x 1s)
    self.moving = 1s
    if !(== self.GR 0s) goto 0x00050C
0x000500:
    self.GR = 1s
0x00050C:
    if !(== self.ml 1s) goto 0x000564
0x000520:
    self.x = (- self.x 1s)
    self.moving = 1s
    if !(== self.GR 0s) goto 0x000564
0x000558:
    self.GR = 1s
0x000564:
    if !(== self.md 1s) goto 0x000590
0x000578:
    push (< self.y self.y2)
    goto 0x000594
0x000590:
    push 0s
0x000594:
    if !pop goto 0x0005DC
0x000598:
    self.y = (+ self.y 1s)
    self.moving = 1s
    if !(== self.GR 0s) goto 0x0005DC
0x0005D0:
    self.GR = 1s
0x0005DC:
    if !(== self.mu 1s) goto 0x000608
0x0005F0:
    push (> self.y self.y1)
    goto 0x00060C
0x000608:
    push 0s
0x00060C:
    if !pop goto 0x000654
0x000610:
    self.y = (- self.y 1s)
    self.moving = 1s
    if !(== self.GR 0s) goto 0x000654
0x000648:
    self.GR = 1s
0x000654:
    if !(== self.moving 1s) goto 0x0006FC
0x000668:
    if !(== self.playing 0s) goto 0x0006A8
0x00067C:
    call (caster_loop[]:int32 (var 1s) (var 0.8d) self.beat)
0x0006A8:
    if !(== self.playing 1s) goto 0x0006D0
0x0006BC:
    call (caster_resume[]:int32 self.beat)
0x0006D0:
    self.playing = 2s
    self.GR = (+ self.GR 0.2d)
0x0006FC:
    if !(== self.moving 0s) goto 0x000750
0x000710:
    if !(== self.playing 2s) goto 0x000744
0x000724:
    call (caster_pause[]:int32 self.beat)
    self.playing = 1s
0x000744:
    self.GR = 0s
0x000750:
    if !(== self.mclock 1s) goto 0x0007A4
0x000764:
    push self.x
    stog.x* = (int32 self.mc)
    push (+ self.y 5s)
    stog.y* = (int32 self.mc)
0x0007A4:
    exit
