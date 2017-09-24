0x000000:
    self.s3 = (+ self.s3 1s)
    self.q = 0s
    self.s2 = (+ self.s2 0.08d)
    if (<= (int32 self.num) 0) goto 0x0001B0
0x000064:
    push (int32 self.num)
    self.greg = (degtorad[]:int32 (/ (* self.q 360s) self.num))
    push -1s
    if !(== (int32 (int32 self.q):kid):shot 0s) goto 0x000180
0x0000C0:
    push (- (+ self.x (* (sin[]:int32 (+ self.greg self.s2)) self.sf2)) 14s)
    push -1s
    stog.x* = (int32 (int32 self.q):kid)
    push (- (+ self.y (* (cos[]:int32 (+ self.greg self.s2)) self.sf2)) 15s)
    push -1s
    stog.y* = (int32 (int32 self.q):kid)
0x000180:
    self.q = (+ self.q 1s)
    if (bool (- pop 1)) goto 0x000064
0x0001B0:
    push (- pop 1)
    pop
    if !(== self.movetype 0s) goto 0x00031C
0x0001C8:
    self.x = (+ self.xstart (* (sin[]:int32 (/ self.s self.sp)) self.sf))
    self.y = (+ self.ystart (/ (* (sin[]:int32 (* (/ self.s self.sp) 2s)) self.sf) (double 3s)))
    if !(== self.shake 0s) goto 0x000280
0x000268:
    self.s = (+ self.s 1s)
0x000280:
    if !(> self.shake 0s) goto 0x00031C
0x000294:
    self.x = (- (+ self.memx (random[]:int32 (* self.shake 2s))) self.shake)
    self.y = (- (+ self.memy (random[]:int32 (* self.shake 2s))) self.shake)
    self.shake = (- self.shake 1s)
0x00031C:
    self.lightning_timer = (+ self.lightning_timer 1s)
    if !(> self.lightning_timer 40s) goto 0x00035C
0x000348:
    push (< self.lightning_timer 50s)
    goto 0x000360
0x00035C:
    push 0s
0x000360:
    if !pop goto 0x000390
0x000364:
    self.ddir = (random[]:int32 (var 360s))
    self.image_speed = 0.5d
0x000390:
    if !(== self.lightning_timer 50s) goto 0x0004AC
0x0003A4:
    self.image_speed = 0s
    self.i = 0s
    if (<= 11s 0) goto 0x0004A8
0x0003D4:
    push 11s
    self.lt = (instance_create[]:int32 (var 433s) self.y self.x)
    push 2s
    stog.speed* = (int32 self.lt)
    push -0.09d
    stog.friction* = (int32 self.lt)
    push (+ (+ 0s (/ (* self.i 360s) (double 11s))) self.ddir)
    stog.direction* = (int32 self.lt)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0003D4
0x0004A8:
    push (- pop 1)
    pop
0x0004AC:
    if !(== self.lightning_timer 56s) goto 0x0005D8
0x0004C0:
    self.image_speed = 0s
    self.i = 0s
    if (<= 11s 0) goto 0x0005D4
0x0004F0:
    push 11s
    self.lt = (instance_create[]:int32 (var 433s) self.y self.x)
    push 2s
    stog.speed* = (int32 self.lt)
    push -0.09d
    stog.friction* = (int32 self.lt)
    push (+ (+ 0s (/ (* (+ self.i 0.5d) 360s) (double 11s))) self.ddir)
    stog.direction* = (int32 self.lt)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0004F0
0x0005D4:
    push (- pop 1)
    pop
0x0005D8:
    if !(== self.lightning_timer 62s) goto 0x0006F4
0x0005EC:
    self.image_speed = 0s
    self.i = 0s
    if (<= 11s 0) goto 0x0006F0
0x00061C:
    push 11s
    self.lt = (instance_create[]:int32 (var 433s) self.y self.x)
    push 2s
    stog.speed* = (int32 self.lt)
    push -0.09d
    stog.friction* = (int32 self.lt)
    push (+ (+ 0s (/ (* self.i 360s) (double 11s))) self.ddir)
    stog.direction* = (int32 self.lt)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x00061C
0x0006F0:
    push (- pop 1)
    pop
0x0006F4:
    if !(== self.lightning_timer 68s) goto 0x000820
0x000708:
    self.image_speed = 0s
    self.i = 0s
    if (<= 11s 0) goto 0x00081C
0x000738:
    push 11s
    self.lt = (instance_create[]:int32 (var 433s) self.y self.x)
    push 2s
    stog.speed* = (int32 self.lt)
    push -0.09d
    stog.friction* = (int32 self.lt)
    push (+ (+ 0s (/ (* (+ self.i 0.5d) 360s) (double 11s))) self.ddir)
    stog.direction* = (int32 self.lt)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000738
0x00081C:
    push (- pop 1)
    pop
0x000820:
    if !(> self.movetype 99s) goto 0x0009E4
0x000834:
    if !(> self.lightning_timer 100s) goto 0x00085C
0x000848:
    push (< self.lightning_timer 145s)
    goto 0x000860
0x00085C:
    push 0s
0x000860:
    if !pop goto 0x0008A8
0x000864:
    self.s2 = (- self.s2 0.1d)
    self.s3 = 0s
    self.sf2 = (+ self.sf2 9s)
0x0008A8:
    if !(== self.lightning_timer 145s) goto 0x000944
0x0008BC:
    self.q = 0s
    if (<= (int32 self.num) 0) goto 0x000940
0x0008E8:
    push (int32 self.num)
    push 1s
    push -1s
    stog.visible* = (int32 (int32 self.q):kid)
    self.q = (+ self.q 1s)
    if (bool (- pop 1)) goto 0x0008E8
0x000940:
    push (- pop 1)
    pop
0x000944:
    if !(> self.lightning_timer 145s) goto 0x00096C
0x000958:
    push (< self.lightning_timer 300s)
    goto 0x000970
0x00096C:
    push 0s
0x000970:
    if !pop goto 0x0009E4
0x000974:
    self.s2 = (- self.s2 0.1d)
    self.s3 = 0s
    self.sf2 = (- self.sf2 8s)
    if !(< self.sf2 35s) goto 0x0009E4
0x0009CC:
    self.sf2 = 30s
    self.lightning_timer = 40s
0x0009E4:
    if !(== self.movetype 99s) goto 0x000ECC
0x0009F8:
    if !(== self.lightning_timer 110s) goto 0x000AE0
0x000A0C:
    self.i = 0s
    if (<= 7s 0) goto 0x000ADC
0x000A30:
    push 7s
    push (var 1363s)
    stog.bb[(int32 self.i)] = (instance_create[]:int32 (var 100s) -5s (+ 0s:idealborder (* self.i 25s)))
    push 515s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):bb)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000A30
0x000ADC:
    push (- pop 1)
    pop
0x000AE0:
    if !(> self.lightning_timer 110s) goto 0x000B08
0x000AF4:
    push (< self.lightning_timer 125s)
    goto 0x000B0C
0x000B08:
    push 0s
0x000B0C:
    if !pop goto 0x000BEC
0x000B10:
    self.i = 0s
    if (<= 7s 0) goto 0x000BE8
0x000B34:
    push 7s
    push -1s
    if !(== (int32 (int32 self.i):bb):visible 0s) goto 0x000B90
0x000B64:
    push 1s
    push -1s
    stog.visible* = (int32 (int32 self.i):bb)
    goto 0x000BB8
0x000B90:
    push 0s
    push -1s
    stog.visible* = (int32 (int32 self.i):bb)
0x000BB8:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000B34
0x000BE8:
    push (- pop 1)
    pop
0x000BEC:
    if !(== self.lightning_timer 125s) goto 0x000ECC
0x000C00:
    self.lightning_timer = 35s
    self.i = 0s
    self.fs = (choose[]:int32 (var 6s) (var 5s) (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    self.fs0 = (choose[]:int32 (var 6s) (var 5s) (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    if !(== self.fs self.fs0) goto 0x000CD8
0x000CC0:
    self.fs = (+ self.fs 1s)
0x000CD8:
    if !(> self.fs 6s) goto 0x000CF8
0x000CEC:
    self.fs = 0s
0x000CF8:
    if (<= 7s 0) goto 0x000EC8
0x000D10:
    push 7s
    push -1s
    pushenv (int32 (int32 self.i):bb) 0x000D3C
0x000D30:
    call (instance_destroy[]:int32 )
0x000D3C:
    popenv 0x000D30
0x000D40:
    push (var 445s)
    stog.br[(int32 self.i)] = (instance_create[]:int32 (var 100s) -5s (+ 0s:idealborder (* self.i 25s)))
    push 0s
    push -1s
    stog.friction* = (int32 (int32 self.i):br)
    self.v = (choose[]:int32 (var 5s) (var 4.5d) (var 4s))
    push self.v
    push -1s
    stog.vspeed* = (int32 (int32 self.i):br)
    if !(== self.i self.fs) goto 0x000E58
0x000E30:
    push 6s
    push -1s
    stog.vspeed* = (int32 (int32 self.i):br)
0x000E58:
    if !(== self.i self.fs0) goto 0x000E98
0x000E70:
    push 3s
    push -1s
    stog.vspeed* = (int32 (int32 self.i):br)
0x000E98:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000D10
0x000EC8:
    push (- pop 1)
    pop
0x000ECC:
    if !(== self.lightning_timer 95s) goto 0x000EF4
0x000EE0:
    push (== self.movetype 99s)
    goto 0x000EF8
0x000EF4:
    push 0s
0x000EF8:
    if !pop goto 0x000FF4
0x000EFC:
    push (var 432s)
    self.mt = (instance_create[]:int32 (var -20s) -5s 0s:idealborder)
    push 3s
    stog.vspeed* = (int32 self.mt)
    push 2s
    stog.type* = (int32 self.mt)
    push 200s
    stog.early* = (int32 self.mt)
    push (var 432s)
    self.mt = (instance_create[]:int32 (var -20s) -5s (- 1s:idealborder 25s))
    push 3s
    stog.vspeed* = (int32 self.mt)
    push 200s
    stog.early* = (int32 self.mt)
    push 2s
    stog.type* = (int32 self.mt)
0x000FF4:
    if !(== self.lightning_timer 110s) goto 0x00102C
0x001008:
    call (instance_create[]:int32 (var 416s) (var 0s) (var 0s))
0x00102C:
    if !(== self.lightning_timer 140s) goto 0x001064
0x001040:
    call (instance_create[]:int32 (var 417s) (var 0s) (var 0s))
0x001064:
    if !(== self.lightning_timer 160s) goto 0x001084
0x001078:
    self.lightning_timer = 20s
0x001084:
    self.life = (- self.life 1.25d)
0x0010A4:
    exit
