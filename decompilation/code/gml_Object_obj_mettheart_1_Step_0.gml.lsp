0x000000:
    if !(== self.movetype 0s) goto 0x000118
0x000014:
    self.x = (+ self.xstart (* (sin[]:int32 (/ self.s self.sp)) self.sf))
    if !(== self.shake 0s) goto 0x00007C
0x000064:
    self.s = (+ self.s 1s)
0x00007C:
    if !(> self.shake 0s) goto 0x000118
0x000090:
    self.x = (- (+ self.memx (random[]:int32 (* self.shake 2s))) self.shake)
    self.y = (- (+ self.memy (random[]:int32 (* self.shake 2s))) self.shake)
    self.shake = (- self.shake 1s)
0x000118:
    self.lightning_timer = (+ self.lightning_timer 1s)
    if !(> self.lightning_timer 50s) goto 0x000158
0x000144:
    push (< self.lightning_timer 60s)
    goto 0x00015C
0x000158:
    push 0s
0x00015C:
    if !pop goto 0x00018C
0x000160:
    self.ddir = (random[]:int32 (var 360s))
    self.image_speed = 0.5d
0x00018C:
    if !(== self.lightning_timer 60s) goto 0x0002A8
0x0001A0:
    self.image_speed = 0s
    self.i = 0s
    if (<= 10s 0) goto 0x0002A4
0x0001D0:
    push 10s
    self.lt = (instance_create[]:int32 (var 433s) self.y self.x)
    push 2s
    stog.speed* = (int32 self.lt)
    push -0.1d
    stog.friction* = (int32 self.lt)
    push (+ (+ 0s (/ (* self.i 360s) (double 10s))) self.ddir)
    stog.direction* = (int32 self.lt)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0001D0
0x0002A4:
    push (- pop 1)
    pop
0x0002A8:
    if !(== self.lightning_timer 66s) goto 0x0003D4
0x0002BC:
    self.image_speed = 0s
    self.i = 0s
    if (<= 10s 0) goto 0x0003D0
0x0002EC:
    push 10s
    self.lt = (instance_create[]:int32 (var 433s) self.y self.x)
    push 2s
    stog.speed* = (int32 self.lt)
    push -0.1d
    stog.friction* = (int32 self.lt)
    push (+ (+ 0s (/ (* (+ self.i 0.5d) 360s) (double 10s))) self.ddir)
    stog.direction* = (int32 self.lt)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0002EC
0x0003D0:
    push (- pop 1)
    pop
0x0003D4:
    if !(== self.lightning_timer 72s) goto 0x0004F0
0x0003E8:
    self.image_speed = 0s
    self.i = 0s
    if (<= 10s 0) goto 0x0004EC
0x000418:
    push 10s
    self.lt = (instance_create[]:int32 (var 433s) self.y self.x)
    push 2s
    stog.speed* = (int32 self.lt)
    push -0.1d
    stog.friction* = (int32 self.lt)
    push (+ (+ 0s (/ (* self.i 360s) (double 10s))) self.ddir)
    stog.direction* = (int32 self.lt)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000418
0x0004EC:
    push (- pop 1)
    pop
0x0004F0:
    if !(== self.movetype 99s) goto 0x000870
0x000504:
    if !(== self.lightning_timer 110s) goto 0x0005EC
0x000518:
    self.i = 0s
    if (<= 7s 0) goto 0x0005E8
0x00053C:
    push 7s
    push (var 1363s)
    stog.bb[(int32 self.i)] = (instance_create[]:int32 (var 100s) -5s (+ 0s:idealborder (* self.i 25s)))
    push 550s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):bb)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x00053C
0x0005E8:
    push (- pop 1)
    pop
0x0005EC:
    if !(> self.lightning_timer 110s) goto 0x000614
0x000600:
    push (< self.lightning_timer 125s)
    goto 0x000618
0x000614:
    push 0s
0x000618:
    if !pop goto 0x0006F8
0x00061C:
    self.i = 0s
    if (<= 7s 0) goto 0x0006F4
0x000640:
    push 7s
    push -1s
    if !(== (int32 (int32 self.i):bb):visible 0s) goto 0x00069C
0x000670:
    push 1s
    push -1s
    stog.visible* = (int32 (int32 self.i):bb)
    goto 0x0006C4
0x00069C:
    push 0s
    push -1s
    stog.visible* = (int32 (int32 self.i):bb)
0x0006C4:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000640
0x0006F4:
    push (- pop 1)
    pop
0x0006F8:
    if !(== self.lightning_timer 125s) goto 0x000870
0x00070C:
    self.lightning_timer = 40s
    self.i = 0s
    if (<= 7s 0) goto 0x00086C
0x00073C:
    push 7s
    push -1s
    pushenv (int32 (int32 self.i):bb) 0x000768
0x00075C:
    call (instance_destroy[]:int32 )
0x000768:
    popenv 0x00075C
0x00076C:
    push (var 442s)
    stog.br[(int32 self.i)] = (instance_create[]:int32 (var 100s) -5s (+ 0s:idealborder (* self.i 25s)))
    push -0.05d
    push -1s
    stog.friction* = (int32 (int32 self.i):br)
    push -1s
    stog.vspeed* = (- (int32 (int32 self.i):br):vspeed (random[]:int32 (var 0.2d)))
    self.i = (+ self.i 1s)
    if (bool (- (int32 (int32 self.i):br) 1)) goto 0x00073C
0x00086C:
    push (- (int32 (int32 self.i):br) 1)
    pop
0x000870:
    if !(== self.lightning_timer 95s) goto 0x00097C
0x000884:
    push (var 431s)
    self.mt = (instance_create[]:int32 (var -20s) -5s 0s:idealborder)
    push 5s
    stog.vspeed* = (int32 self.mt)
    push 2s
    stog.type* = (int32 self.mt)
    push 200s
    stog.early* = (int32 self.mt)
    push (var 431s)
    self.mt = (instance_create[]:int32 (var -20s) -5s (- 1s:idealborder 25s))
    push 5s
    stog.vspeed* = (int32 self.mt)
    push 200s
    stog.early* = (int32 self.mt)
    push 2s
    stog.type* = (int32 self.mt)
0x00097C:
    if !(== self.lightning_timer 130s) goto 0x00099C
0x000990:
    self.lightning_timer = 36s
0x00099C:
    self.life = (- self.life 1s)
0x0009B4:
    exit
