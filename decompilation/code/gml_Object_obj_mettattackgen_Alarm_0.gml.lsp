0x000000:
    push -5s
    self.gil = 0s:idealborder
    push -5s
    self.gir = 1s:idealborder
    self.fff = 25s
    self.type = global.attacktype
    if !(== self.type 100s) goto 0x00006C
0x000060:
    global.turntimer = 90s
0x00006C:
    if !(== self.type 1s) goto 0x000278
0x000080:
    self.i = 0s
    if (<= 7s 0) goto 0x000124
0x0000A4:
    push 7s
    self.bl = (instance_create[]:int32 (var 442s) (var 120s) (+ 240s (* self.i 24s)))
    push 4s
    stog.vspeed* = (int32 self.bl)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0000A4
0x000124:
    push (- pop 1)
    pop
    self.i = 0s
    if (<= 7s 0) goto 0x0001CC
0x00014C:
    push 7s
    self.bl = (instance_create[]:int32 (var 442s) (var 80s) (+ 240s (* self.i 24s)))
    push 4s
    stog.vspeed* = (int32 self.bl)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x00014C
0x0001CC:
    push (- pop 1)
    pop
    self.i = 0s
    if (<= 7s 0) goto 0x000274
0x0001F4:
    push 7s
    self.bl = (instance_create[]:int32 (var 442s) (var 40s) (+ 240s (* self.i 24s)))
    push 4s
    stog.vspeed* = (int32 self.bl)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0001F4
0x000274:
    push (- pop 1)
    pop
0x000278:
    if !(== self.type 2s) goto 0x0004CC
0x00028C:
    self.i = 0s
    if (<= 9s 0) goto 0x000348
0x0002B0:
    push 9s
    self.bl = (instance_create[]:int32 (var 442s) (var 120s) (+ 220s (* self.i 24s)))
    push 4s
    stog.vspeed* = (int32 self.bl)
    push 20s
    stog.sf* = (int32 self.bl)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0002B0
0x000348:
    push (- pop 1)
    pop
    self.i = 0s
    if (<= 9s 0) goto 0x000408
0x000370:
    push 9s
    self.bl = (instance_create[]:int32 (var 442s) (var 60s) (+ 220s (* self.i 24s)))
    push 4s
    stog.vspeed* = (int32 self.bl)
    push -20s
    stog.sf* = (int32 self.bl)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000370
0x000408:
    push (- pop 1)
    pop
    self.i = 0s
    if (<= 9s 0) goto 0x0004C8
0x000430:
    push 9s
    self.bl = (instance_create[]:int32 (var 442s) (var 0s) (+ 220s (* self.i 24s)))
    push 20s
    stog.sf* = (int32 self.bl)
    push 4s
    stog.vspeed* = (int32 self.bl)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000430
0x0004C8:
    push (- pop 1)
    pop
0x0004CC:
    if !(== self.type 3s) goto 0x000630
0x0004E0:
    self.i = 0s
    if (<= 2s 0) goto 0x00062C
0x000504:
    push 2s
    self.ll = (instance_create[]:int32 (var 437s) (- 200s (* self.i 80s)) (var 216s))
    pushenv (int32 self.ll) 0x00057C
0x00054C:
    self.sf = 25s
    self.sp = 15s
    self.vspeed = 2s
    self.yseg = 60s
0x00057C:
    popenv 0x00054C
0x000580:
    self.rr = (instance_create[]:int32 (var 438s) (- 160s (* self.i 80s)) (var 360s))
    pushenv (int32 self.rr) 0x0005F8
0x0005C8:
    self.sf = 20s
    self.sp = 12s
    self.vspeed = 2s
    self.yseg = 40s
0x0005F8:
    popenv 0x0005C8
0x0005FC:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000504
0x00062C:
    push (- pop 1)
    pop
0x000630:
    if !(== self.type 4s) goto 0x00090C
0x000644:
    self.i = 0s
    if (<= 4s 0) goto 0x000798
0x000668:
    push 4s
    self.ll = (instance_create[]:int32 (var 439s) (- 180s (* self.i 40s)) (+ 96s (* 24s self.i)))
    pushenv (int32 self.ll) 0x0006E4
0x0006C0:
    self.sf = 60s
    self.sp = 6s
    self.vspeed = 3s
0x0006E4:
    popenv 0x0006C0
0x0006E8:
    self.rr = (instance_create[]:int32 (var 440s) (- 180s (* self.i 40s)) (+ 312s (* 24s self.i)))
    pushenv (int32 self.rr) 0x000764
0x000740:
    self.sf = 60s
    self.sp = 6s
    self.vspeed = 3s
0x000764:
    popenv 0x000740
0x000768:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000668
0x000798:
    push (- pop 1)
    pop
    self.i = 0s
    if (<= 4s 0) goto 0x0008F0
0x0007C0:
    push 4s
    self.ll = (instance_create[]:int32 (var 439s) (- 20s (* self.i 50s)) (- 144s (* 24s self.i)))
    pushenv (int32 self.ll) 0x00083C
0x000818:
    self.sf = 60s
    self.sp = 6s
    self.vspeed = 3s
0x00083C:
    popenv 0x000818
0x000840:
    self.rr = (instance_create[]:int32 (var 440s) (- 20s (* self.i 50s)) (- 360s (* 24s self.i)))
    pushenv (int32 self.rr) 0x0008BC
0x000898:
    self.sf = 60s
    self.sp = 6s
    self.vspeed = 3s
0x0008BC:
    popenv 0x000898
0x0008C0:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0007C0
0x0008F0:
    push (- pop 1)
    pop
    [obj_mettleg_r].on = 0s
    [obj_mettleg_l].on = 0s
0x00090C:
    if !(== self.type 5s) goto 0x000B48
0x000920:
    self.i = 0s
    self.ll = (instance_create[]:int32 (var 439s) (var 140s) (var 202s))
    pushenv (int32 self.ll) 0x000988
0x000964:
    self.sf = 30s
    self.sp = 6s
    self.vspeed = 3s
0x000988:
    popenv 0x000964
0x00098C:
    self.rr = (instance_create[]:int32 (var 440s) (var 40s) (var 212s))
    pushenv (int32 self.rr) 0x0009E8
0x0009C4:
    self.sf = 30s
    self.sp = 6s
    self.vspeed = 3s
0x0009E8:
    popenv 0x0009C4
0x0009EC:
    self.rr = (instance_create[]:int32 (var 440s) (var 10s) (var 212s))
    pushenv (int32 self.rr) 0x000A54
0x000A24:
    self.sf = 30s
    self.sp = 6s
    self.vspeed = 3s
    self.c = 2s
0x000A54:
    popenv 0x000A24
0x000A58:
    self.ll = (instance_create[]:int32 (var 439s) (var -100s) (var 202s))
    pushenv (int32 self.ll) 0x000AB4
0x000A90:
    self.sf = 30s
    self.sp = 6s
    self.vspeed = 3s
0x000AB4:
    popenv 0x000A90
0x000AB8:
    self.ll = (instance_create[]:int32 (var 439s) (var -130s) (var 202s))
    pushenv (int32 self.ll) 0x000B20
0x000AF0:
    self.c = 2s
    self.sf = 30s
    self.sp = 6s
    self.vspeed = 3s
0x000B20:
    popenv 0x000AF0
0x000B24:
    self.i = 0s
    [obj_mettleg_r].on = 1s
    [obj_mettleg_l].on = 1s
0x000B48:
    if !(== self.type 6s) goto 0x001018
0x000B5C:
    call (instance_create[]:int32 (var 442s) (var 20s) (var 240s))
    call (instance_create[]:int32 (var 442s) (var 120s) (var 240s))
    call (instance_create[]:int32 (var 442s) (var 40s) (var 264s))
    call (instance_create[]:int32 (var 442s) (var 100s) (var 264s))
    call (instance_create[]:int32 (var 442s) (var 200s) (var 264s))
    call (instance_create[]:int32 (var 442s) (var 0s) (var 288s))
    call (instance_create[]:int32 (var 442s) (var 80s) (var 288s))
    call (instance_create[]:int32 (var 442s) (var 140s) (var 288s))
    call (instance_create[]:int32 (var 442s) (var 20s) (var 312s))
    call (instance_create[]:int32 (var 442s) (var 60s) (var 312s))
    call (instance_create[]:int32 (var 442s) (var 180s) (var 312s))
    call (instance_create[]:int32 (var 442s) (var 40s) (var 336s))
    call (instance_create[]:int32 (var 442s) (var 120s) (var 336s))
    call (instance_create[]:int32 (var 442s) (var 220s) (var 336s))
    call (instance_create[]:int32 (var 442s) (var 60s) (var 360s))
    call (instance_create[]:int32 (var 442s) (var 160s) (var 360s))
    call (instance_create[]:int32 (var 442s) (var 0s) (var 384s))
    call (instance_create[]:int32 (var 442s) (var 80s) (var 384s))
    call (instance_create[]:int32 (var 442s) (var 200s) (var 384s))
    call (instance_create[]:int32 (var 445s) (var 60s) (var 240s))
    call (instance_create[]:int32 (var 445s) (var 180s) (var 240s))
    call (instance_create[]:int32 (var 445s) (var 0s) (var 264s))
    call (instance_create[]:int32 (var 445s) (var 160s) (var 264s))
    call (instance_create[]:int32 (var 445s) (var 40s) (var 288s))
    call (instance_create[]:int32 (var 445s) (var 100s) (var 312s))
    call (instance_create[]:int32 (var 445s) (var 60s) (var 336s))
    call (instance_create[]:int32 (var 445s) (var 160s) (var 336s))
    call (instance_create[]:int32 (var 445s) (var 0s) (var 360s))
    call (instance_create[]:int32 (var 445s) (var 100s) (var 360s))
    call (instance_create[]:int32 (var 445s) (var 40s) (var 384s))
    call (instance_create[]:int32 (var 445s) (var 140s) (var 384s))
    pushenv 442s 0x000FE4
0x000FC0:
    self.vspeed = 2s
    self.y = (- self.y 200s)
0x000FE4:
    popenv 0x000FC0
0x000FE8:
    pushenv 445s 0x001014
0x000FF0:
    self.vspeed = 2s
    self.y = (- self.y 200s)
0x001014:
    popenv 0x000FF0
0x001018:
    if !(== self.type 7s) goto 0x001424
0x00102C:
    self.j = 0s
    if (<= 16s 0) goto 0x001390
0x001050:
    push 16s
    stog.g[0s] = (choose[]:int32 (var 1s) (var 0s))
    push -1s
    stog.g[1s] = (+ 0s:g (choose[]:int32 (var 2s) (var 1s)))
    push -1s
    stog.g[2s] = (+ 1s:g (choose[]:int32 (var 2s) (var 1s)))
    stog.g[3s] = (choose[]:int32 (var 6s) (var 5s))
    self.b = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.b2 = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.b3 = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.bm = 0s
    self.i = 0s
    if !(< self.i 4s) goto 0x001360
0x0011D4:
    if (== self.b self.i) goto 0x001238
0x0011EC:
    if (== self.b2 self.i) goto 0x001238
0x001204:
    if !(== self.b3 self.i) goto 0x001230
0x00121C:
    push (< self.bm 3s)
    goto 0x001234
0x001230:
    push 0s
0x001234:
    goto 0x00123C
0x001238:
    push 1s
0x00123C:
    if !pop goto 0x0012D0
0x001240:
    self.bm = (+ self.bm 1s)
    push (var 445s)
    push (+ (- 0s (* self.j 45s)) (random[]:int32 (var 20s)))
    call (instance_create[]:int32 -5s 0s:idealborder (+ -1s (* (int32 self.i):g 25s)))
    goto 0x001344
0x0012D0:
    push (var 442s)
    push (+ (- 0s (* self.j 45s)) (random[]:int32 (var 20s)))
    call (instance_create[]:int32 -5s 0s:idealborder (+ -1s (* (int32 self.i):g 25s)))
0x001344:
    self.i = (+ self.i 1s)
    goto 0x0011C0
0x001360:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x001050
0x001390:
    push (- pop 1)
    pop
    pushenv 445s 0x0013D8
0x00139C:
    self.vspeed = (+ self.vspeed (- (random[]:int32 (var 0.5d)) 0.2d))
0x0013D8:
    popenv 0x00139C
0x0013DC:
    pushenv 442s 0x001420
0x0013E4:
    self.vspeed = (+ self.vspeed (- (random[]:int32 (var 0.5d)) 0.2d))
0x001420:
    popenv 0x0013E4
0x001424:
    if !(== self.type 8s) goto 0x00152C
0x001438:
    self.j = 0s
    if (<= 5s 0) goto 0x001504
0x00145C:
    push 5s
    call (instance_create[]:int32 (var 445s) (- -100s (* self.j 240s)) 743.x)
    call (instance_create[]:int32 (var 445s) (+ (- -100s (* self.j 240s)) 120s) (+ 743.x 20s))
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x00145C
0x001504:
    push (- pop 1)
    pop
    pushenv 445s 0x001528
0x001510:
    self.vspeed = (+ self.vspeed 2s)
0x001528:
    popenv 0x001510
0x00152C:
    if !(== self.type 9s) goto 0x00160C
0x001540:
    self.j = 0s
    if (<= 10s 0) goto 0x0015E4
0x001564:
    push 10s
    call (instance_create[]:int32 (var 445s) (- -100s (* self.j 150s)) (+ 743.x (choose[]:int32 (var 20s) (var 0s))))
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x001564
0x0015E4:
    push (- pop 1)
    pop
    pushenv 445s 0x001608
0x0015F0:
    self.vspeed = (+ self.vspeed 3s)
0x001608:
    popenv 0x0015F0
0x00160C:
    if !(== self.type 10s) goto 0x00189C
0x001620:
    self.j = 0s
    if (<= 8s 0) goto 0x001844
0x001644:
    push 8s
    self.bm1 = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    self.bm2 = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    if !(== self.bm2 self.bm1) goto 0x0016E4
0x0016CC:
    self.bm2 = (+ self.bm2 1s)
0x0016E4:
    self.i = 0s
    if !(< self.i 4s) goto 0x001814
0x001704:
    if (== self.bm1 self.i) goto 0x00174C
0x00171C:
    if (== self.bm2 self.i) goto 0x00174C
0x001734:
    push (== self.j self.i)
    goto 0x001750
0x00174C:
    push 1s
0x001750:
    if !pop goto 0x0017A8
0x001754:
    push (var 445s)
    call (instance_create[]:int32 (- 0s (* self.j 260s)) -5s (+ 0s:idealborder (* self.i 25s)))
    goto 0x0017F8
0x0017A8:
    push (var 442s)
    call (instance_create[]:int32 (- 0s (* self.j 260s)) -5s (+ 0s:idealborder (* self.i 25s)))
0x0017F8:
    self.i = (+ self.i 1s)
    goto 0x0016F0
0x001814:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x001644
0x001844:
    push (- pop 1)
    pop
    [obj_plusbomb].vspeed = (+ 445.vspeed 8s)
    [obj_blackbox_pl].vspeed = (+ 442.vspeed 8s)
    call (instance_create[]:int32 (var 435s) (var 0s) (var 0s))
0x00189C:
    if !(== self.type 11s) goto 0x0019A0
0x0018B0:
    self.j = 0s
    if (<= 8s 0) goto 0x001990
0x0018D4:
    push 8s
    self.i = 0s
    if !(< self.i 3s) goto 0x001960
0x0018F4:
    push (var 443s)
    call (instance_create[]:int32 (- 0s (* self.j 150s)) -5s (+ 0s:idealborder (* 25s self.i)))
    self.i = (+ self.i 1s)
    goto 0x0018E0
0x001960:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x0018D4
0x001990:
    push (- pop 1)
    pop
    [obj_upbox_pl].vspeed = 4s
0x0019A0:
    if !(== self.type 12s) goto 0x001C1C
0x0019B4:
    self.j = 0s
    if (<= 3s 0) goto 0x001A94
0x0019D8:
    push 3s
    self.i = 0s
    if !(< self.i 5s) goto 0x001A64
0x0019F8:
    push (var 444s)
    call (instance_create[]:int32 (- 0s (* self.j 200s)) -5s (+ 0s:idealborder (* 25s self.i)))
    self.i = (+ self.i 1s)
    goto 0x0019E4
0x001A64:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x0019D8
0x001A94:
    push (- pop 1)
    pop
    self.j = 0s
    if (<= 8s 0) goto 0x001C0C
0x001ABC:
    push 8s
    self.ch = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    push (var 433s)
    call (instance_create[]:int32 (- 0s (* self.j 50s)) -5s (+ (+ 0s:idealborder 10s) (* self.ch 25s)))
    self.ch2 = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    push (var 433s)
    call (instance_create[]:int32 (- 0s (* self.j 75s)) -5s (+ (+ 0s:idealborder 10s) (* self.ch2 25s)))
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x001ABC
0x001C0C:
    push (- pop 1)
    pop
    [obj_upbox_new_pl].vspeed = 4s
0x001C1C:
    if !(== self.type 13s) goto 0x001D28
0x001C30:
    self.j = 0s
    if (<= 7s 0) goto 0x001D24
0x001C54:
    push 7s
    self.i = 0s
    if !(< self.i 3s) goto 0x001CF4
0x001C74:
    push (var 431s)
    call (instance_create[]:int32 (- (- 0s (* self.j 120s)) (* self.i 40s)) -5s (+ 0s:idealborder (random[]:int32 (var 150s))))
    self.i = (+ self.i 1s)
    goto 0x001C60
0x001CF4:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x001C54
0x001D24:
    push (- pop 1)
    pop
0x001D28:
    if !(== self.type 14s) goto 0x001E34
0x001D3C:
    self.j = 0s
    if (<= 5s 0) goto 0x001E30
0x001D60:
    push 5s
    self.i = 0s
    if !(< self.i 3s) goto 0x001E00
0x001D80:
    push (var 431s)
    call (instance_create[]:int32 (- (- 0s (* self.j 150s)) (* self.i 50s)) -5s (+ 0s:idealborder (random[]:int32 (var 150s))))
    self.i = (+ self.i 1s)
    goto 0x001D6C
0x001E00:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x001D60
0x001E30:
    push (- pop 1)
    pop
0x001E34:
    if !(== self.type 15s) goto 0x001FC4
0x001E48:
    self.i = 0s
    if !(< self.i 3s) goto 0x001EC4
0x001E68:
    push (var 432s)
    call (instance_create[]:int32 (var 0s) -5s (+ 0s:idealborder (* 25s self.i)))
    self.i = (+ self.i 1s)
    goto 0x001E54
0x001EC4:
    self.i = 0s
    if !(< self.i 3s) goto 0x001F48
0x001EE4:
    push (var 432s)
    call (instance_create[]:int32 (var -125s) -5s (- 1s:idealborder (* 25s (+ self.i 1s))))
    self.i = (+ self.i 1s)
    goto 0x001ED0
0x001F48:
    self.i = 0s
    if !(< self.i 3s) goto 0x001FC4
0x001F68:
    push (var 432s)
    call (instance_create[]:int32 (var -250s) -5s (+ 0s:idealborder (* 25s self.i)))
    self.i = (+ self.i 1s)
    goto 0x001F54
0x001FC4:
    if !(== self.type 16s) goto 0x002154
0x001FD8:
    self.i = 0s
    if !(< self.i 4s) goto 0x002054
0x001FF8:
    push (var 432s)
    call (instance_create[]:int32 (var 0s) -5s (+ 0s:idealborder (* 25s self.i)))
    self.i = (+ self.i 1s)
    goto 0x001FE4
0x002054:
    self.i = 0s
    if !(< self.i 4s) goto 0x0020D8
0x002074:
    push (var 432s)
    call (instance_create[]:int32 (var -125s) -5s (- 1s:idealborder (* 25s (+ self.i 1s))))
    self.i = (+ self.i 1s)
    goto 0x002060
0x0020D8:
    self.i = 0s
    if !(< self.i 4s) goto 0x002154
0x0020F8:
    push (var 432s)
    call (instance_create[]:int32 (var -250s) -5s (+ 0s:idealborder (* 25s self.i)))
    self.i = (+ self.i 1s)
    goto 0x0020E4
0x002154:
    if !(== self.type 26s) goto 0x0023A0
0x002168:
    global.turntimer = 140s
    self.j = 0s
    if (<= 4s 0) goto 0x002348
0x002198:
    push 4s
    stog.g[0s] = (choose[]:int32 (var 1s) (var 0s))
    push -1s
    stog.g[1s] = (+ 0s:g (choose[]:int32 (var 2s) (var 1s)))
    push -1s
    stog.g[2s] = (+ 1s:g (choose[]:int32 (var 2s) (var 1s)))
    stog.g[3s] = (choose[]:int32 (var 6s) (var 5s))
    self.i = 0s
    if !(< self.i 4s) goto 0x002318
0x002280:
    push (var 442s)
    push (- (+ (- 0s (* self.j 95s)) (random[]:int32 (var 60s))) 100s)
    call (instance_create[]:int32 -5s 0s:idealborder (+ -1s (* (int32 self.i):g 25s)))
    self.i = (+ self.i 1s)
    goto 0x00226C
0x002318:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x002198
0x002348:
    push (- pop 1)
    pop
    pushenv 442s 0x00239C
0x002354:
    self.s = (random[]:int32 (var 8s))
    self.sf = 3s
    self.sp = 4s
    self.vspeed = (+ self.vspeed 2s)
0x00239C:
    popenv 0x002354
0x0023A0:
    if !(== self.type 27s) goto 0x002694
0x0023B4:
    global.turntimer = 165s
    self.i = 0s
    if (<= 2s 0) goto 0x002470
0x0023E4:
    push 2s
    push (var 442s)
    self.bb = (instance_create[]:int32 (var 30s) -5s (+ 0s:idealborder (* self.i 25s)))
    push 4s
    stog.vspeed* = (int32 self.bb)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0023E4
0x002470:
    push (- pop 1)
    pop
    self.ll = (instance_create[]:int32 (var 437s) (var 30s) (+ self.gil 50s))
    pushenv (int32 self.ll) 0x0024F0
0x0024B4:
    self.sf = 1s
    self.sp = 1s
    self.vspeed = 4s
    self.yseg = 999s
    self.ysegi = 999s
0x0024F0:
    popenv 0x0024B4
0x0024F4:
    self.i = 0s
    if (<= 2s 0) goto 0x0025A4
0x002518:
    push 2s
    self.bb = (instance_create[]:int32 (var 442s) (var -120s) (- (- self.gir 25s) (* self.i 25s)))
    push 4s
    stog.vspeed* = (int32 self.bb)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x002518
0x0025A4:
    push (- pop 1)
    pop
    self.ll = (instance_create[]:int32 (var 438s) (var -120s) (- self.gir 75s))
    pushenv (int32 self.ll) 0x002624
0x0025E8:
    self.sf = 1s
    self.sp = 1s
    self.vspeed = 4s
    self.yseg = 999s
    self.ysegi = 999s
0x002624:
    popenv 0x0025E8
0x002628:
    self.ll = (instance_create[]:int32 (var 437s) (var -250s) self.gil)
    pushenv (int32 self.ll) 0x002690
0x002660:
    self.sf = 1s
    self.sp = 1s
    self.vspeed = 4s
    self.ysegi = 70s
0x002690:
    popenv 0x002660
0x002694:
    if !(== self.type 28s) goto 0x002950
0x0026A8:
    global.turntimer = 160s
    self.ll = (instance_create[]:int32 (var 437s) (var -25s) self.gil)
    pushenv (int32 self.ll) 0x002728
0x0026EC:
    self.sf = 4s
    self.sp = 3s
    self.vspeed = 4s
    self.yseg = 999s
    self.ysegi = 40s
0x002728:
    popenv 0x0026EC
0x00272C:
    self.ll = (instance_create[]:int32 (var 438s) (var -125s) self.gir)
    pushenv (int32 self.ll) 0x0027A0
0x002764:
    self.sf = 4s
    self.sp = 3s
    self.vspeed = 4s
    self.yseg = 999s
    self.ysegi = 40s
0x0027A0:
    popenv 0x002764
0x0027A4:
    self.i = 0s
    if (<= 3s 0) goto 0x00284C
0x0027C8:
    push 3s
    self.bb = (instance_create[]:int32 (var 442s) (var -230s) (+ self.gil (* self.i 25s)))
    push 4s
    stog.vspeed* = (int32 self.bb)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0027C8
0x00284C:
    push (- pop 1)
    pop
    self.pl = (instance_create[]:int32 (var 445s) (var -230s) (+ self.gil 75s))
    push 4s
    stog.vspeed* = (int32 self.pl)
    self.i = (+ self.i 1s)
    if (<= 3s 0) goto 0x00294C
0x0028C8:
    push 3s
    self.bb = (instance_create[]:int32 (var 442s) (var -230s) (+ self.gil (* self.i 25s)))
    push 4s
    stog.vspeed* = (int32 self.bb)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0028C8
0x00294C:
    push (- pop 1)
    pop
0x002950:
    if !(== self.type 29s) goto 0x002E10
0x002964:
    global.turntimer = 150s
    self.j = 0s
    if (<= 5s 0) goto 0x002D4C
0x002994:
    push 5s
    stog.g[0s] = (choose[]:int32 (var 1s) (var 0s))
    push -1s
    stog.g[1s] = (+ 0s:g (choose[]:int32 (var 2s) (var 1s)))
    push -1s
    stog.g[2s] = (+ 1s:g (choose[]:int32 (var 2s) (var 1s)))
    stog.g[3s] = (choose[]:int32 (var 6s) (var 5s))
    self.b = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.b2 = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.b3 = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.bm = 0s
    self.i = 0s
    if !(< self.i 4s) goto 0x002D1C
0x002B18:
    if (== self.b self.i) goto 0x002B64
0x002B30:
    if !(== self.b2 self.i) goto 0x002B5C
0x002B48:
    push (< self.bm 3s)
    goto 0x002B60
0x002B5C:
    push 0s
0x002B60:
    goto 0x002B68
0x002B64:
    push 1s
0x002B68:
    if !pop goto 0x002BFC
0x002B6C:
    self.bm = (+ self.bm 1s)
    push (var 445s)
    push (+ (- 0s (* self.j 85s)) (random[]:int32 (var 50s)))
    call (instance_create[]:int32 -5s 0s:idealborder (+ -1s (* (int32 self.i):g 25s)))
    goto 0x002D00
0x002BFC:
    if !(== self.b3 self.i) goto 0x002C8C
0x002C14:
    push (var 433s)
    push (+ (- 0s (* self.j 85s)) (random[]:int32 (var 50s)))
    call (instance_create[]:int32 -5s 0s:idealborder (+ -1s (* (int32 self.i):g 25s)))
    goto 0x002D00
0x002C8C:
    push (var 442s)
    push (+ (- 0s (* self.j 85s)) (random[]:int32 (var 50s)))
    call (instance_create[]:int32 -5s 0s:idealborder (+ -1s (* (int32 self.i):g 25s)))
0x002D00:
    self.i = (+ self.i 1s)
    goto 0x002B04
0x002D1C:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x002994
0x002D4C:
    push (- pop 1)
    pop
    pushenv 445s 0x002D8C
0x002D58:
    self.vspeed = (+ self.vspeed (+ (random[]:int32 (var 0.6d)) 1s))
0x002D8C:
    popenv 0x002D58
0x002D90:
    pushenv 442s 0x002DCC
0x002D98:
    self.vspeed = (+ self.vspeed (+ (random[]:int32 (var 0.6d)) 1s))
0x002DCC:
    popenv 0x002D98
0x002DD0:
    pushenv 433s 0x002E0C
0x002DD8:
    self.vspeed = (+ self.vspeed (+ (random[]:int32 (var 0.6d)) 1s))
0x002E0C:
    popenv 0x002DD8
0x002E10:
    if !(== self.type 99s) goto 0x0030FC
0x002E24:
    self.ll = (instance_create[]:int32 (var 437s) (var -25s) self.gil)
    pushenv (int32 self.ll) 0x002E98
0x002E5C:
    self.sf = 4s
    self.sp = 3s
    self.vspeed = 4s
    self.yseg = 999s
    self.ysegi = 40s
0x002E98:
    popenv 0x002E5C
0x002E9C:
    self.ll = (instance_create[]:int32 (var 438s) (var -150s) self.gir)
    pushenv (int32 self.ll) 0x002F10
0x002ED4:
    self.sf = 4s
    self.sp = 3s
    self.vspeed = 4s
    self.yseg = 999s
    self.ysegi = 40s
0x002F10:
    popenv 0x002ED4
0x002F14:
    self.j = 0s
    if (<= 5s 0) goto 0x0030F8
0x002F38:
    push 5s
    self.i = 0s
    if (<= 5s 0) goto 0x0030C4
0x002F5C:
    push 5s
    push (var 433s)
    self.lt = (instance_create[]:int32 (- 0s (* self.j 50s)) -5s (+ 0s:idealborder (/ (- self.gir self.gil) (double 2s))))
    push (- (+ (+ -0.5d (* 0.25d self.i)) (random[]:int32 (var 0.2d))) 0.1d)
    stog.hspeed* = (int32 self.lt)
    push (- (+ 1.5d (random[]:int32 (var 0.2d))) 0.1d)
    stog.vspeed* = (int32 self.lt)
    push -0.05d
    stog.friction* = (int32 self.lt)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x002F5C
0x0030C4:
    push (- pop 1)
    pop
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x002F38
0x0030F8:
    push (- pop 1)
    pop
0x0030FC:
    if !(== self.type 30s) goto 0x003378
0x003110:
    global.turntimer = 200s
    self.i = 0s
    self.ll = (instance_create[]:int32 (var 439s) (var 60s) (- self.gil 45s))
    push 0s
    stog.on* = (int32 self.ll)
    push 80s
    stog.sf* = (int32 self.ll)
    self.ll = (instance_create[]:int32 (var 440s) (var -80s) self.gil)
    push 0s
    stog.on* = (int32 self.ll)
    push 80s
    stog.sf* = (int32 self.ll)
    self.ll = (instance_create[]:int32 (var 439s) (var -240s) (- self.gil 70s))
    push 1s
    stog.on* = (int32 self.ll)
    push 30s
    stog.sf* = (int32 self.ll)
    self.ll = (instance_create[]:int32 (var 440s) (var -240s) (+ self.gil 90s))
    push 1s
    stog.on* = (int32 self.ll)
    push 30s
    stog.sf* = (int32 self.ll)
    self.ll = (instance_create[]:int32 (var 439s) (var -380s) (- self.gil 140s))
    push 1s
    stog.on* = (int32 self.ll)
    push 30s
    stog.sf* = (int32 self.ll)
    self.ll = (instance_create[]:int32 (var 440s) (var -380s) (+ self.gil 30s))
    push 1s
    stog.on* = (int32 self.ll)
    push 30s
    stog.sf* = (int32 self.ll)
    [obj_mettleg_l].vspeed = 4s
    [obj_mettleg_r].vspeed = 4s
0x003378:
    if !(== self.type 31s) goto 0x003538
0x00338C:
    global.turntimer = 190s
    self.i = 0s
    if (<= 4s 0) goto 0x00347C
0x0033BC:
    push 4s
    self.mf = (instance_create[]:int32 (var 431s) (- -50s (* self.i 70s)) self.gil)
    self.mf = (instance_create[]:int32 (var 431s) (- -50s (* self.i 70s)) (- self.gir 25s))
    [obj_mettfodder].vspeed = 5s
    [obj_mettfodder].type = 2s
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0033BC
0x00347C:
    push (- pop 1)
    pop
    self.i = 0s
    if (<= 5s 0) goto 0x003534
0x0034A4:
    push 5s
    self.bl = (instance_create[]:int32 (var 445s) (* -50s self.i) (+ (+ self.gil 25s) (random[]:int32 (- (- self.gir self.gil) 75s))))
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0034A4
0x003534:
    push (- pop 1)
    pop
0x003538:
    if !(== self.type 32s) goto 0x0039B4
0x00354C:
    global.turntimer = 210s
    self.i = 0s
    self.ll = (instance_create[]:int32 (var 439s) (var 60s) (- self.gil 45s))
    push 0s
    stog.on* = (int32 self.ll)
    push 60s
    stog.sf* = (int32 self.ll)
    self.ll = (instance_create[]:int32 (var 439s) (var 20s) (- self.gil 45s))
    push 0s
    stog.on* = (int32 self.ll)
    push 60s
    stog.sf* = (int32 self.ll)
    self.ll = (instance_create[]:int32 (var 439s) (var -20s) (- self.gil 45s))
    push 0s
    stog.on* = (int32 self.ll)
    push 60s
    stog.sf* = (int32 self.ll)
    self.ll = (instance_create[]:int32 (var 440s) (var -200s) self.gil)
    push 0s
    stog.on* = (int32 self.ll)
    push 60s
    stog.sf* = (int32 self.ll)
    self.ll = (instance_create[]:int32 (var 440s) (var -240s) self.gil)
    push 0s
    stog.on* = (int32 self.ll)
    push 60s
    stog.sf* = (int32 self.ll)
    self.ll = (instance_create[]:int32 (var 440s) (var -280s) self.gil)
    push 0s
    stog.on* = (int32 self.ll)
    push 60s
    stog.sf* = (int32 self.ll)
    [obj_mettleg_l].vspeed = 3.3d
    [obj_mettleg_r].vspeed = 3.3d
    self.ks = (instance_create[]:int32 (var 442s) (var -175s) (+ self.gil 75s))
    push 3.3d
    stog.vspeed* = (int32 self.ks)
    push 20s
    stog.sf* = (int32 self.ks)
    push 10s
    stog.sp* = (int32 self.ks)
    self.ks = (instance_create[]:int32 (var 442s) (var -50s) (+ self.gil 75s))
    push 3.3d
    stog.vspeed* = (int32 self.ks)
    push 20s
    stog.sf* = (int32 self.ks)
    push 10s
    stog.sp* = (int32 self.ks)
    self.ks = (instance_create[]:int32 (var 442s) (var -150s) (+ self.gil 75s))
    push 3.3d
    stog.vspeed* = (int32 self.ks)
    push 20s
    stog.sf* = (int32 self.ks)
    push 10s
    stog.sp* = (int32 self.ks)
    self.ks = (instance_create[]:int32 (var 442s) (var -75s) (+ self.gil 75s))
    push 3.3d
    stog.vspeed* = (int32 self.ks)
    push 20s
    stog.sf* = (int32 self.ks)
    push 10s
    stog.sp* = (int32 self.ks)
0x0039B4:
    if !(== self.type 33s) goto 0x003C18
0x0039C8:
    global.turntimer = 190s
    self.ll = (instance_create[]:int32 (var 437s) (var -25s) self.gil)
    pushenv (int32 self.ll) 0x003A50
0x003A0C:
    self.sf = 20s
    self.sp = 7s
    self.vspeed = 3.5d
    self.yseg = 999s
    self.ysegi = 40s
0x003A50:
    popenv 0x003A0C
0x003A54:
    self.ll = (instance_create[]:int32 (var 438s) (var -235s) self.gir)
    pushenv (int32 self.ll) 0x003AD0
0x003A8C:
    self.sf = 20s
    self.sp = 7s
    self.vspeed = 3.5d
    self.yseg = 999s
    self.ysegi = 40s
0x003AD0:
    popenv 0x003A8C
0x003AD4:
    self.j = 0s
    if (<= 1s 0) goto 0x003C14
0x003AF8:
    push 1s
    self.i = 0s
    if (<= 5s 0) goto 0x003BE0
0x003B1C:
    push 5s
    self.lt = (instance_create[]:int32 (var 431s) (var -80s) (+ (+ self.gil 25s) (* self.i 25s)))
    push 3.5d
    stog.vspeed* = (int32 self.lt)
    push 2s
    stog.type* = (int32 self.lt)
    push 80s
    stog.early* = (int32 self.lt)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x003B1C
0x003BE0:
    push (- pop 1)
    pop
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x003AF8
0x003C14:
    push (- pop 1)
    pop
0x003C18:
    if !(== self.type 34s) goto 0x003C5C
0x003C2C:
    global.turntimer = 90s
    call (instance_create[]:int32 (var 409s) (var 0s) (var 0s))
0x003C5C:
    if !(== self.type 35s) goto 0x003CA4
0x003C70:
    global.turntimer = 600s
    self.bossheart = (instance_create[]:int32 (var 421s) (var 162s) (var 320s))
0x003CA4:
    if !(== self.type 36s) goto 0x003DE4
0x003CB8:
    global.turntimer = 250s
    self.specialtimer = 1s
    self.j = 0s
    if (<= 3s 0) goto 0x003DC8
0x003CF4:
    push 3s
    self.i = 0s
    if !(< self.i 3s) goto 0x003D98
0x003D14:
    push (var 431s)
    self.km = (instance_create[]:int32 (- (- 0s (* self.j 90s)) (* self.i 30s)) -5s (+ 0s:idealborder (random[]:int32 (var 150s))))
    self.i = (+ self.i 1s)
    goto 0x003D00
0x003D98:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x003CF4
0x003DC8:
    push (- pop 1)
    pop
    [obj_mettfodder].vspeed = (+ 431.vspeed 1s)
0x003DE4:
    if !(== self.type 37s) goto 0x003E84
0x003DF8:
    global.turntimer = 270s
    push (var 426s)
    self.ds = (instance_create[]:int32 -5s (- 2s:idealborder 10s) (var 308s))
    [obj_heart].x = (+ 743.x 7s)
    [obj_heart].y = (+ 743.y 10s)
    push 0s
    stog.diff* = (int32 self.ds)
0x003E84:
    if !(== self.type 38s) goto 0x003F64
0x003E98:
    global.turntimer = 193s
    push (var 426s)
    self.ds = (instance_create[]:int32 -5s (- 2s:idealborder 10s) (var 308s))
    [obj_heart].x = (+ 743.x 7s)
    [obj_heart].y = (+ 743.y 10s)
    push 1s
    stog.diff* = (int32 self.ds)
    push -5s
    if !(> 0s:specialdam 1s) goto 0x003F64
0x003F40:
    push 0s
    stog.diff* = (int32 self.ds)
    global.turntimer = 270s
0x003F64:
    if !(== self.type 39s) goto 0x0040C4
0x003F78:
    global.turntimer = 210s
    self.specialtimer = 2s
    self.j = 0s
    push -5s
    self.oo = (+ 0s:idealborder 5s)
    if (<= 2s 0) goto 0x0040B4
0x003FD4:
    push 2s
    self.bb = (instance_create[]:int32 (var 445s) (- -200s (* self.j 260s)) self.oo)
    push 1s
    stog.side* = (int32 self.bb)
    self.bb = (instance_create[]:int32 (var 445s) (+ (- -200s (* self.j 260s)) 120s) (+ self.oo 20s))
    push 2s
    stog.side* = (int32 self.bb)
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x003FD4
0x0040B4:
    push (- pop 1)
    pop
    pushenv 445s 0x0040C0
0x0040C0:
    popenv 0x0040C0
0x0040C4:
    if !(== self.type 40s) goto 0x004270
0x0040D8:
    global.turntimer = 160s
    self.specialtimer = 2s
    self.j = 0s
    push -5s
    self.oo = (+ 0s:idealborder 5s)
    if (<= 3s 0) goto 0x004214
0x004134:
    push 3s
    self.bb = (instance_create[]:int32 (var 445s) (- -200s (* self.j 260s)) self.oo)
    push 1s
    stog.side* = (int32 self.bb)
    self.bb = (instance_create[]:int32 (var 445s) (+ (- -200s (* self.j 260s)) 120s) (+ self.oo 20s))
    push 2s
    stog.side* = (int32 self.bb)
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x004134
0x004214:
    push (- pop 1)
    pop
    pushenv 445s 0x00426C
0x004220:
    push -5s
    if !(< 1s:specialdam 2s) goto 0x00426C
0x00423C:
    self.vspeed = (+ self.vspeed 2s)
    self.vspeed = (+ self.vspeed 1s)
0x00426C:
    popenv 0x004220
0x004270:
    if !(== self.type 41s) goto 0x0042D4
0x004284:
    global.turntimer = 110s
    push (var 415s)
    push -5s
    call (instance_create[]:int32 (+ 2s:idealborder 10s) -5s (+ 0s:idealborder 30s))
0x0042D4:
    if !(== self.type 42s) goto 0x00431C
0x0042E8:
    global.turntimer = 600s
    self.bossheart = (instance_create[]:int32 (var 422s) (var 162s) (var 320s))
0x00431C:
    if !(== self.type 99s) goto 0x004564
0x004330:
    global.turntimer = 180s
    self.i = 0s
    self.ll = (instance_create[]:int32 (var 439s) (var 140s) (var 202s))
    pushenv (int32 self.ll) 0x0043A4
0x004380:
    self.sf = 30s
    self.sp = 6s
    self.vspeed = 3s
0x0043A4:
    popenv 0x004380
0x0043A8:
    self.rr = (instance_create[]:int32 (var 440s) (var 40s) (var 212s))
    pushenv (int32 self.rr) 0x004404
0x0043E0:
    self.sf = 30s
    self.sp = 6s
    self.vspeed = 3s
0x004404:
    popenv 0x0043E0
0x004408:
    self.rr = (instance_create[]:int32 (var 440s) (var 10s) (var 212s))
    pushenv (int32 self.rr) 0x004470
0x004440:
    self.sf = 30s
    self.sp = 6s
    self.vspeed = 3s
    self.c = 2s
0x004470:
    popenv 0x004440
0x004474:
    self.ll = (instance_create[]:int32 (var 439s) (var -100s) (var 202s))
    pushenv (int32 self.ll) 0x0044D0
0x0044AC:
    self.sf = 30s
    self.sp = 6s
    self.vspeed = 3s
0x0044D0:
    popenv 0x0044AC
0x0044D4:
    self.ll = (instance_create[]:int32 (var 439s) (var -130s) (var 202s))
    pushenv (int32 self.ll) 0x00453C
0x00450C:
    self.c = 2s
    self.sf = 30s
    self.sp = 6s
    self.vspeed = 3s
0x00453C:
    popenv 0x00450C
0x004540:
    self.i = 0s
    [obj_mettleg_r].on = 1s
    [obj_mettleg_l].on = 1s
0x004564:
    if !(== self.type 43s) goto 0x00481C
0x004578:
    global.turntimer = 200s
    self.j = 0s
    if (<= 8s 0) goto 0x0047A8
0x0045A8:
    push 8s
    self.bm1 = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    self.bm2 = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    if !(== self.bm2 self.bm1) goto 0x004648
0x004630:
    self.bm2 = (+ self.bm2 1s)
0x004648:
    self.i = 0s
    if !(< self.i 4s) goto 0x004778
0x004668:
    if (== self.bm1 self.i) goto 0x0046B0
0x004680:
    if (== self.bm2 self.i) goto 0x0046B0
0x004698:
    push (== self.j self.i)
    goto 0x0046B4
0x0046B0:
    push 1s
0x0046B4:
    if !pop goto 0x00470C
0x0046B8:
    push (var 445s)
    call (instance_create[]:int32 (- 0s (* self.j 180s)) -5s (+ 0s:idealborder (* self.i 25s)))
    goto 0x00475C
0x00470C:
    push (var 442s)
    call (instance_create[]:int32 (- 0s (* self.j 180s)) -5s (+ 0s:idealborder (* self.i 25s)))
0x00475C:
    self.i = (+ self.i 1s)
    goto 0x004654
0x004778:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x0045A8
0x0047A8:
    push (- pop 1)
    pop
    [obj_plusbomb].vspeed = (+ 445.vspeed 3s)
    [obj_blackbox_pl].vspeed = (+ 442.vspeed 3s)
    self.rw = (instance_create[]:int32 (var 435s) (var 0s) (var 0s))
    push 10s
    stog.maxrw* = (int32 self.rw)
0x00481C:
    if !(== self.type 44s) goto 0x004B20
0x004830:
    global.turntimer = 220s
    self.j = 0s
    if (<= 8s 0) goto 0x004A60
0x004860:
    push 8s
    self.bm1 = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    self.bm2 = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    if !(== self.bm2 self.bm1) goto 0x004900
0x0048E8:
    self.bm2 = (+ self.bm2 1s)
0x004900:
    self.i = 0s
    if !(< self.i 4s) goto 0x004A30
0x004920:
    if (== self.bm1 self.i) goto 0x004968
0x004938:
    if (== self.bm2 self.i) goto 0x004968
0x004950:
    push (== self.j self.i)
    goto 0x00496C
0x004968:
    push 1s
0x00496C:
    if !pop goto 0x0049C4
0x004970:
    push (var 445s)
    call (instance_create[]:int32 (- -60s (* self.j 250s)) -5s (+ 0s:idealborder (* self.i 25s)))
    goto 0x004A14
0x0049C4:
    push (var 442s)
    call (instance_create[]:int32 (- -60s (* self.j 250s)) -5s (+ 0s:idealborder (* self.i 25s)))
0x004A14:
    self.i = (+ self.i 1s)
    goto 0x00490C
0x004A30:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x004860
0x004A60:
    push (- pop 1)
    pop
    [obj_plusbomb].vspeed = (+ 445.vspeed 6s)
    [obj_blackbox_pl].vspeed = (+ 442.vspeed 6s)
    self.rw = (instance_create[]:int32 (var 435s) (var 0s) (var 0s))
    push -5s
    if !(> 2s:specialdam 2s) goto 0x004B20
0x004AD8:
    push 10s
    stog.maxrw* = (int32 self.rw)
    [obj_plusbomb].vspeed = (- 445.vspeed 1s)
    [obj_blackbox_pl].vspeed = (- 442.vspeed 1s)
0x004B20:
    if !(== self.type 45s) goto 0x004F48
0x004B34:
    global.turntimer = 165s
    self.j = 0s
    if (<= 10s 0) goto 0x004EA4
0x004B64:
    push 10s
    stog.g[0s] = (choose[]:int32 (var 1s) (var 0s))
    push -1s
    stog.g[1s] = (+ 0s:g (choose[]:int32 (var 2s) (var 1s)))
    push -1s
    stog.g[2s] = (+ 1s:g (choose[]:int32 (var 2s) (var 1s)))
    stog.g[3s] = (choose[]:int32 (var 6s) (var 5s))
    self.b = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.b2 = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.b3 = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.bm = 0s
    self.i = 0s
    if !(< self.i 4s) goto 0x004E74
0x004CE8:
    if (== self.b self.i) goto 0x004D4C
0x004D00:
    if (== self.b2 self.i) goto 0x004D4C
0x004D18:
    if !(== self.b3 self.i) goto 0x004D44
0x004D30:
    push (< self.bm 3s)
    goto 0x004D48
0x004D44:
    push 0s
0x004D48:
    goto 0x004D50
0x004D4C:
    push 1s
0x004D50:
    if !pop goto 0x004DE4
0x004D54:
    self.bm = (+ self.bm 1s)
    push (var 445s)
    push (+ (- 0s (* self.j 45s)) (random[]:int32 (var 20s)))
    call (instance_create[]:int32 -5s 0s:idealborder (+ -1s (* (int32 self.i):g 25s)))
    goto 0x004E58
0x004DE4:
    push (var 442s)
    push (+ (- 0s (* self.j 45s)) (random[]:int32 (var 20s)))
    call (instance_create[]:int32 -5s 0s:idealborder (+ -1s (* (int32 self.i):g 25s)))
0x004E58:
    self.i = (+ self.i 1s)
    goto 0x004CD4
0x004E74:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x004B64
0x004EA4:
    push (- pop 1)
    pop
    pushenv 445s 0x004EF4
0x004EB0:
    self.vspeed = (+ self.vspeed (- (+ 1s (random[]:int32 (var 0.5d))) 0.2d))
0x004EF4:
    popenv 0x004EB0
0x004EF8:
    pushenv 442s 0x004F44
0x004F00:
    self.vspeed = (+ self.vspeed (- (+ 1s (random[]:int32 (var 0.5d))) 0.2d))
0x004F44:
    popenv 0x004F00
0x004F48:
    if !(== self.type 46s) goto 0x005380
0x004F5C:
    global.turntimer = 140s
    self.j = 0s
    if (<= 10s 0) goto 0x0052CC
0x004F8C:
    push 10s
    stog.g[0s] = (choose[]:int32 (var 1s) (var 0s))
    push -1s
    stog.g[1s] = (+ 0s:g (choose[]:int32 (var 2s) (var 1s)))
    push -1s
    stog.g[2s] = (+ 1s:g (choose[]:int32 (var 2s) (var 1s)))
    stog.g[3s] = (choose[]:int32 (var 6s) (var 5s))
    self.b = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.b2 = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.b3 = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.bm = 0s
    self.i = 0s
    if !(< self.i 4s) goto 0x00529C
0x005110:
    if (== self.b self.i) goto 0x005174
0x005128:
    if (== self.b2 self.i) goto 0x005174
0x005140:
    if !(== self.b3 self.i) goto 0x00516C
0x005158:
    push (< self.bm 3s)
    goto 0x005170
0x00516C:
    push 0s
0x005170:
    goto 0x005178
0x005174:
    push 1s
0x005178:
    if !pop goto 0x00520C
0x00517C:
    self.bm = (+ self.bm 1s)
    push (var 445s)
    push (+ (- 0s (* self.j 54s)) (random[]:int32 (var 25s)))
    call (instance_create[]:int32 -5s 0s:idealborder (+ -1s (* (int32 self.i):g 25s)))
    goto 0x005280
0x00520C:
    push (var 442s)
    push (+ (- 0s (* self.j 54s)) (random[]:int32 (var 25s)))
    call (instance_create[]:int32 -5s 0s:idealborder (+ -1s (* (int32 self.i):g 25s)))
0x005280:
    self.i = (+ self.i 1s)
    goto 0x0050FC
0x00529C:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x004F8C
0x0052CC:
    push (- pop 1)
    pop
    pushenv 445s 0x005324
0x0052D8:
    self.vspeed = (+ self.vspeed (- (+ 2.5d (random[]:int32 (var 0.5d))) 0.2d))
0x005324:
    popenv 0x0052D8
0x005328:
    pushenv 442s 0x00537C
0x005330:
    self.vspeed = (+ self.vspeed (- (+ 2.5d (random[]:int32 (var 0.5d))) 0.2d))
0x00537C:
    popenv 0x005330
0x005380:
    if !(== self.type 47s) goto 0x005530
0x005394:
    global.turntimer = 200s
    self.specialtimer = 2s
    self.j = 0s
    push -5s
    [obj_heart].x = 0s:idealborder
    if (<= 6s 0) goto 0x0054D4
0x0053E8:
    push 6s
    self.ch = (choose[]:int32 (var 25s) (var 5s))
    self.bb = (instance_create[]:int32 (var 445s) (- -100s (* self.j 180s)) (+ 743.x self.ch))
    if !(== self.ch 5s) goto 0x005478
0x005460:
    push 1s
    stog.side* = (int32 self.bb)
0x005478:
    if !(== self.ch 25s) goto 0x0054A4
0x00548C:
    push 2s
    stog.side* = (int32 self.bb)
0x0054A4:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x0053E8
0x0054D4:
    push (- pop 1)
    pop
    pushenv 445s 0x00552C
0x0054E0:
    self.vspeed = (+ self.vspeed 3s)
    push -5s
    if !(> 1s:specialdam 3s) goto 0x00552C
0x005514:
    self.vspeed = (- self.vspeed 1s)
0x00552C:
    popenv 0x0054E0
0x005530:
    if !(== self.type 48s) goto 0x005578
0x005544:
    global.turntimer = 700s
    self.bossheart = (instance_create[]:int32 (var 423s) (var 162s) (var 320s))
0x005578:
    if !(== self.type 49s) goto 0x0055C0
0x00558C:
    global.turntimer = 800s
    self.bossheart = (instance_create[]:int32 (var 424s) (var 232s) (var 320s))
0x0055C0:
    if !(== self.type 50s) goto 0x0057B4
0x0055D4:
    global.turntimer = 170s
    self.ll = (instance_create[]:int32 (var 437s) (var -25s) self.gil)
    pushenv (int32 self.ll) 0x005674
0x005618:
    self.s = (random[]:int32 (var 300s))
    self.sf = 50s
    self.sp = 10s
    self.vspeed = 4.5d
    self.yseg = 999s
    self.ysegi = 80s
0x005674:
    popenv 0x005618
0x005678:
    self.ll = (instance_create[]:int32 (var 438s) (var -185s) self.gir)
    pushenv (int32 self.ll) 0x00570C
0x0056B0:
    self.s = (random[]:int32 (var 300s))
    self.sf = 50s
    self.sp = 10s
    self.vspeed = 4.5d
    self.yseg = 999s
    self.ysegi = 80s
0x00570C:
    popenv 0x0056B0
0x005710:
    self.ll = (instance_create[]:int32 (var 437s) (var -345s) self.gil)
    pushenv (int32 self.ll) 0x0057A4
0x005748:
    self.s = (random[]:int32 (var 300s))
    self.sf = 50s
    self.sp = 10s
    self.vspeed = 4.5d
    self.yseg = 999s
    self.ysegi = 80s
0x0057A4:
    popenv 0x005748
0x0057A8:
    self.j = 0s
0x0057B4:
    if !(== self.type 51s) goto 0x00581C
0x0057C8:
    global.turntimer = 160s
    push (var 426s)
    self.ds = (instance_create[]:int32 -5s 2s:idealborder (var 308s))
    push 2s
    stog.diff* = (int32 self.ds)
0x00581C:
    if !(== self.type 52s) goto 0x005C44
0x005830:
    global.turntimer = 150s
    self.j = 0s
    if (<= 9s 0) goto 0x005BA0
0x005860:
    push 9s
    stog.g[0s] = (choose[]:int32 (var 1s) (var 0s))
    push -1s
    stog.g[1s] = (+ 0s:g (choose[]:int32 (var 2s) (var 1s)))
    push -1s
    stog.g[2s] = (+ 1s:g (choose[]:int32 (var 2s) (var 1s)))
    stog.g[3s] = (choose[]:int32 (var 6s) (var 5s))
    self.b = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.b2 = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.b3 = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.bm = 0s
    self.i = 0s
    if !(< self.i 4s) goto 0x005B70
0x0059E4:
    if (== self.b self.i) goto 0x005A48
0x0059FC:
    if (== self.b2 self.i) goto 0x005A48
0x005A14:
    if !(== self.b3 self.i) goto 0x005A40
0x005A2C:
    push (< self.bm 3s)
    goto 0x005A44
0x005A40:
    push 0s
0x005A44:
    goto 0x005A4C
0x005A48:
    push 1s
0x005A4C:
    if !pop goto 0x005AE0
0x005A50:
    self.bm = (+ self.bm 1s)
    push (var 445s)
    push (+ (- 0s (* self.j 45s)) (random[]:int32 (var 25s)))
    call (instance_create[]:int32 -5s 0s:idealborder (+ -1s (* (int32 self.i):g 25s)))
    goto 0x005B54
0x005AE0:
    push (var 442s)
    push (+ (- 0s (* self.j 45s)) (random[]:int32 (var 25s)))
    call (instance_create[]:int32 -5s 0s:idealborder (+ -1s (* (int32 self.i):g 25s)))
0x005B54:
    self.i = (+ self.i 1s)
    goto 0x0059D0
0x005B70:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x005860
0x005BA0:
    push (- pop 1)
    pop
    pushenv 445s 0x005BF0
0x005BAC:
    self.vspeed = (+ self.vspeed (- (+ 1s (random[]:int32 (var 0.5d))) 0.2d))
0x005BF0:
    popenv 0x005BAC
0x005BF4:
    pushenv 442s 0x005C40
0x005BFC:
    self.vspeed = (+ self.vspeed (- (+ 1s (random[]:int32 (var 0.5d))) 0.2d))
0x005C40:
    popenv 0x005BFC
0x005C44:
    if !(== self.type 53s) goto 0x005E10
0x005C58:
    global.turntimer = 200s
    self.specialtimer = 2s
    self.j = 0s
    push -5s
    stog.idealborder[1s] = (+ 0s:idealborder 50s)
    push -5s
    [obj_heart].x = 0s:idealborder
    push -5s
    self.oo = (+ 0s:idealborder 5s)
    if (<= 7s 0) goto 0x005DE0
0x005CF4:
    push 7s
    self.ch = (choose[]:int32 (var 20s) (var 0s))
    self.bb = (instance_create[]:int32 (var 445s) (- -100s (* self.j 170s)) (+ self.oo self.ch))
    if !(== self.ch 0s) goto 0x005D84
0x005D6C:
    push 1s
    stog.side* = (int32 self.bb)
0x005D84:
    if !(== self.ch 20s) goto 0x005DB0
0x005D98:
    push 2s
    stog.side* = (int32 self.bb)
0x005DB0:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x005CF4
0x005DE0:
    push (- pop 1)
    pop
    pushenv 445s 0x005E0C
0x005DEC:
    self.vspeed = (+ self.vspeed 3.5d)
0x005E0C:
    popenv 0x005DEC
0x005E10:
    if !(== self.type 54s) goto 0x00605C
0x005E24:
    global.turntimer = 250s
    self.specialtimer = 1s
    self.j = 0s
    if (<= 4s 0) goto 0x006058
0x005E60:
    push 4s
    self.i = 0s
    if !(< self.i 3s) goto 0x006028
0x005E80:
    push (var 431s)
    self.f = (instance_create[]:int32 (- (- 0s (* self.j 120s)) (* self.i 40s)) -5s (+ 0s:idealborder (random[]:int32 (var 150s))))
    stog.vspeed* = (+ (int32 self.f):vspeed 0.5d)
    push (var 433s)
    self.t = (instance_create[]:int32 (- (- (- 0s (* self.j 120s)) (* self.i 40s)) 20s) -5s (+ 0s:idealborder (random[]:int32 (var 150s))))
    stog.direction* = (+ (int32 self.t):direction (- (random[]:int32 (var 20s)) 10s))
    stog.vspeed* = (+ (int32 self.t):vspeed 2s)
    push -0.02d
    stog.friction* = (int32 self.t)
    self.i = (+ self.i 1s)
    goto 0x005E6C
0x006028:
    push (int32 self.f)
    push (int32 self.t)
    push (int32 self.t)
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x005E60
0x006058:
    push (- pop 1)
    pop
0x00605C:
    if !(== self.type 55s) goto 0x006364
0x006070:
    global.turntimer = 170s
    self.i = 0s
    if (<= 4s 0) goto 0x0061E0
0x0060A0:
    push 4s
    self.ll = (instance_create[]:int32 (var 439s) (- 180s (* self.i 40s)) (+ 96s (* 24s self.i)))
    pushenv (int32 self.ll) 0x006124
0x0060F8:
    self.sf = 60s
    self.sp = 6s
    self.vspeed = 2.8d
0x006124:
    popenv 0x0060F8
0x006128:
    self.rr = (instance_create[]:int32 (var 440s) (- 180s (* self.i 40s)) (+ 312s (* 24s self.i)))
    pushenv (int32 self.rr) 0x0061AC
0x006180:
    self.sf = 60s
    self.sp = 6s
    self.vspeed = 2.8d
0x0061AC:
    popenv 0x006180
0x0061B0:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0060A0
0x0061E0:
    push (- pop 1)
    pop
    self.i = 0s
    if (<= 3s 0) goto 0x006348
0x006208:
    push 3s
    self.ll = (instance_create[]:int32 (var 439s) (- 20s (* self.i 50s)) (- 144s (* 24s self.i)))
    pushenv (int32 self.ll) 0x00628C
0x006260:
    self.sf = 60s
    self.sp = 6s
    self.vspeed = 2.8d
0x00628C:
    popenv 0x006260
0x006290:
    self.rr = (instance_create[]:int32 (var 440s) (- 20s (* self.i 50s)) (- 360s (* 24s self.i)))
    pushenv (int32 self.rr) 0x006314
0x0062E8:
    self.sf = 60s
    self.sp = 6s
    self.vspeed = 2.8d
0x006314:
    popenv 0x0062E8
0x006318:
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x006208
0x006348:
    push (- pop 1)
    pop
    [obj_mettleg_r].on = 0s
    [obj_mettleg_l].on = 0s
0x006364:
    if !(== self.type 56s) goto 0x00661C
0x006378:
    global.turntimer = 260s
    self.j = 0s
    if (<= 8s 0) goto 0x0065A8
0x0063A8:
    push 8s
    self.bm1 = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    self.bm2 = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    if !(== self.bm2 self.bm1) goto 0x006448
0x006430:
    self.bm2 = (+ self.bm2 1s)
0x006448:
    self.i = 0s
    if !(< self.i 4s) goto 0x006578
0x006468:
    if (== self.bm1 self.i) goto 0x0064B0
0x006480:
    if (== self.bm2 self.i) goto 0x0064B0
0x006498:
    push (== self.j self.i)
    goto 0x0064B4
0x0064B0:
    push 1s
0x0064B4:
    if !pop goto 0x00650C
0x0064B8:
    push (var 445s)
    call (instance_create[]:int32 (- -100s (* self.j 240s)) -5s (+ 0s:idealborder (* self.i 25s)))
    goto 0x00655C
0x00650C:
    push (var 442s)
    call (instance_create[]:int32 (- -100s (* self.j 240s)) -5s (+ 0s:idealborder (* self.i 25s)))
0x00655C:
    self.i = (+ self.i 1s)
    goto 0x006454
0x006578:
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x0063A8
0x0065A8:
    push (- pop 1)
    pop
    [obj_plusbomb].vspeed = (+ 445.vspeed 5s)
    [obj_blackbox_pl].vspeed = (+ 442.vspeed 5s)
    self.rw = (instance_create[]:int32 (var 435s) (var 0s) (var 0s))
    push -40s
    stog.rew* = (int32 self.rw)
0x00661C:
    exit
