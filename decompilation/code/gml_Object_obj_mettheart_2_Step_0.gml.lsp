0x000000:
    self.q = 0s
    self.s2 = (+ self.s2 0.2d)
    if (<= (int32 self.num) 0) goto 0x000190
0x00004C:
    push (int32 self.num)
    self.greg = (degtorad[]:int32 (/ (* self.q 360s) self.num))
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.q):kid)) goto 0x000160
0x0000A0:
    push (- (+ self.x (* (sin[]:int32 (+ self.greg self.s2)) self.sf2)) 10s)
    push -1s
    stog.x* = (int32 (int32 self.q):kid)
    push (- (+ self.y (* (cos[]:int32 (+ self.greg self.s2)) self.sf2)) 10s)
    push -1s
    stog.y* = (int32 (int32 self.q):kid)
0x000160:
    self.q = (+ self.q 1s)
    if (bool (- pop 1)) goto 0x00004C
0x000190:
    push (- pop 1)
    pop
    if !(== self.movetype 0s) goto 0x0002FC
0x0001A8:
    self.x = (+ self.xstart (* (sin[]:int32 (/ self.s self.sp)) self.sf))
    self.y = (+ self.ystart (/ (* (sin[]:int32 (* (/ self.s self.sp) 2s)) self.sf) (double 3s)))
    if !(== self.shake 0s) goto 0x000260
0x000248:
    self.s = (+ self.s 1s)
0x000260:
    if !(> self.shake 0s) goto 0x0002FC
0x000274:
    self.x = (- (+ self.memx (random[]:int32 (* self.shake 2s))) self.shake)
    self.y = (- (+ self.memy (random[]:int32 (* self.shake 2s))) self.shake)
    self.shake = (- self.shake 1s)
0x0002FC:
    self.lightning_timer = (+ self.lightning_timer 1s)
    if !(> self.lightning_timer 40s) goto 0x00033C
0x000328:
    push (< self.lightning_timer 50s)
    goto 0x000340
0x00033C:
    push 0s
0x000340:
    if !pop goto 0x000370
0x000344:
    self.ddir = (random[]:int32 (var 360s))
    self.image_speed = 0.5d
0x000370:
    if !(== self.lightning_timer 50s) goto 0x0004A4
0x000384:
    self.image_speed = 0s
    self.i = 0s
    if (<= 11s 0) goto 0x0004A0
0x0003B4:
    push 11s
    self.lt = (instance_create[]:int32 (var 433s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.lt)) goto 0x000470
0x0003F4:
    push 2s
    stog.speed* = (int32 self.lt)
    push -0.09d
    stog.friction* = (int32 self.lt)
    push (+ (+ 0s (/ (* self.i 360s) (double 11s))) self.ddir)
    stog.direction* = (int32 self.lt)
0x000470:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0003B4
0x0004A0:
    push (- pop 1)
    pop
0x0004A4:
    if !(== self.lightning_timer 56s) goto 0x0005E8
0x0004B8:
    self.image_speed = 0s
    self.i = 0s
    if (<= 11s 0) goto 0x0005E4
0x0004E8:
    push 11s
    self.lt = (instance_create[]:int32 (var 433s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.lt)) goto 0x0005B4
0x000528:
    push 2s
    stog.speed* = (int32 self.lt)
    push -0.09d
    stog.friction* = (int32 self.lt)
    push (+ (+ 0s (/ (* (+ self.i 0.5d) 360s) (double 11s))) self.ddir)
    stog.direction* = (int32 self.lt)
0x0005B4:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0004E8
0x0005E4:
    push (- pop 1)
    pop
0x0005E8:
    if !(== self.lightning_timer 62s) goto 0x00071C
0x0005FC:
    self.image_speed = 0s
    self.i = 0s
    if (<= 11s 0) goto 0x000718
0x00062C:
    push 11s
    self.lt = (instance_create[]:int32 (var 433s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.lt)) goto 0x0006E8
0x00066C:
    push 2s
    stog.speed* = (int32 self.lt)
    push -0.09d
    stog.friction* = (int32 self.lt)
    push (+ (+ 0s (/ (* self.i 360s) (double 11s))) self.ddir)
    stog.direction* = (int32 self.lt)
0x0006E8:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x00062C
0x000718:
    push (- pop 1)
    pop
0x00071C:
    if !(== self.lightning_timer 94938249) goto 0x000864
0x000734:
    self.image_speed = 0s
    self.i = 0s
    if (<= 11s 0) goto 0x000860
0x000764:
    push 11s
    self.lt = (instance_create[]:int32 (var 433s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.lt)) goto 0x000830
0x0007A4:
    push 2s
    stog.speed* = (int32 self.lt)
    push -0.09d
    stog.friction* = (int32 self.lt)
    push (+ (+ 0s (/ (* (+ self.i 0.5d) 360s) (double 11s))) self.ddir)
    stog.direction* = (int32 self.lt)
0x000830:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000764
0x000860:
    push (- pop 1)
    pop
0x000864:
    if !(> self.lightning_timer 100s) goto 0x00088C
0x000878:
    push (< self.lightning_timer 145s)
    goto 0x000890
0x00088C:
    push 0s
0x000890:
    if !pop goto 0x0008CC
0x000894:
    self.s2 = (- self.s2 0.17d)
    self.sf2 = (+ self.sf2 9s)
0x0008CC:
    if !(== self.lightning_timer 145s) goto 0x000970
0x0008E0:
    self.q = 0s
    if (<= (int32 self.num) 0) goto 0x00096C
0x00090C:
    push (int32 self.num)
    push -1s
    pushenv (int32 (int32 self.q):kid) 0x000938
0x00092C:
    self.visible = 1s
0x000938:
    popenv 0x00092C
0x00093C:
    self.q = (+ self.q 1s)
    if (bool (- pop 1)) goto 0x00090C
0x00096C:
    push (- pop 1)
    pop
0x000970:
    if !(> self.lightning_timer 145s) goto 0x000998
0x000984:
    push (< self.lightning_timer 300s)
    goto 0x00099C
0x000998:
    push 0s
0x00099C:
    if !pop goto 0x000A04
0x0009A0:
    self.s2 = (- self.s2 0.15d)
    self.sf2 = (- self.sf2 8s)
    if !(< self.sf2 35s) goto 0x000A04
0x0009EC:
    self.sf2 = 30s
    self.lightning_timer = 40s
0x000A04:
    if !(== self.movetype 99s) goto 0x000EF4
0x000A18:
    if !(== self.lightning_timer 110s) goto 0x000B08
0x000A2C:
    self.i = 0s
    if (<= 7s 0) goto 0x000B04
0x000A50:
    push 7s
    push (var 1363s)
    stog.bb[(int32 self.i)] = (instance_create[]:int32 (var 100s) -5s (+ 0s:idealborder (* self.i 25s)))
    push -1s
    pushenv (int32 (int32 self.i):bb) 0x000AD0
0x000AC4:
    self.sprite_index = 515s
0x000AD0:
    popenv 0x000AC4
0x000AD4:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000A50
0x000B04:
    push (- pop 1)
    pop
0x000B08:
    if !(> self.lightning_timer 110s) goto 0x000B30
0x000B1C:
    push (< self.lightning_timer 125s)
    goto 0x000B34
0x000B30:
    push 0s
0x000B34:
    if !pop goto 0x000BE4
0x000B38:
    self.i = 0s
    if (<= 7s 0) goto 0x000BE0
0x000B5C:
    push 7s
    push -1s
    pushenv (int32 (int32 self.i):bb) 0x000BAC
0x000B7C:
    if !(== self.visible 0s) goto 0x000BA0
0x000B90:
    self.visible = 1s
    goto 0x000BAC
0x000BA0:
    self.visible = 0s
0x000BAC:
    popenv 0x000B7C
0x000BB0:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000B5C
0x000BE0:
    push (- pop 1)
    pop
0x000BE4:
    if !(== self.lightning_timer 125s) goto 0x000EF4
0x000BF8:
    self.lightning_timer = 35s
    self.i = 0s
    self.fs = (choose[]:int32 (var 6s) (var 5s) (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    self.fs0 = (choose[]:int32 (var 6s) (var 5s) (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    if !(== self.fs self.fs0) goto 0x000CD0
0x000CB8:
    self.fs = (+ self.fs 1s)
0x000CD0:
    if !(> self.fs 6s) goto 0x000CF0
0x000CE4:
    self.fs = 0s
0x000CF0:
    if (<= 7s 0) goto 0x000EF0
0x000D08:
    push 7s
    push -1s
    pushenv (int32 (int32 self.i):bb) 0x000D34
0x000D28:
    call (instance_destroy[]:int32 )
0x000D34:
    popenv 0x000D28
0x000D38:
    push (var 445s)
    stog.br[(int32 self.i)] = (instance_create[]:int32 (var 100s) -5s (+ 0s:idealborder (* self.i 25s)))
    push -1s
    pushenv (int32 (int32 self.i):br) 0x000DB8
0x000DAC:
    self.friction = 0s
0x000DB8:
    popenv 0x000DAC
0x000DBC:
    self.v = (choose[]:int32 (var 5s) (var 4.5d) (var 4s))
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.i):br)) goto 0x000EC0
0x000E14:
    push self.v
    push -1s
    stog.vspeed* = (int32 (int32 self.i):br)
    if !(== self.i self.fs) goto 0x000E80
0x000E58:
    push 6s
    push -1s
    stog.vspeed* = (int32 (int32 self.i):br)
0x000E80:
    if !(== self.i self.fs0) goto 0x000EC0
0x000E98:
    push 3s
    push -1s
    stog.vspeed* = (int32 (int32 self.i):br)
0x000EC0:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000D08
0x000EF0:
    push (- pop 1)
    pop
0x000EF4:
    if !(== self.lightning_timer 95s) goto 0x000F1C
0x000F08:
    push (== self.movetype 99s)
    goto 0x000F20
0x000F1C:
    push 0s
0x000F20:
    if !pop goto 0x00101C
0x000F24:
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
0x00101C:
    if !(< global.turntimer 5s) goto 0x001064
0x001030:
    pushenv 408s 0x001060
0x001038:
    if !(== self.noarm 0s) goto 0x001060
0x00104C:
    call (event_user[]:int32 (var 2s))
0x001060:
    popenv 0x001038
0x001064:
    self.life = (- self.life 1s)
0x00107C:
    exit
