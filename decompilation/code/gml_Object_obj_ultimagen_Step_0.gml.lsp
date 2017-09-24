0x000000:
    self.shotbuffer = (+ self.shotbuffer 1s)
    self.timer = (+ self.timer 1s)
    if !(== self.type 0s) goto 0x00042C
0x000044:
    if !(== self.timer 8s) goto 0x00006C
0x000058:
    call (event_user[]:int32 (var 8s))
0x00006C:
    if !(> self.timer 10s) goto 0x000094
0x000080:
    push (< self.timer 19s)
    goto 0x000098
0x000094:
    push 0s
0x000098:
    if !pop goto 0x000104
0x00009C:
    self.ub = (instance_create[]:int32 (var 576s) self.y self.x)
    push 0s
    stog.side* = (int32 self.ub)
    pushenv (int32 self.ub) 0x000100
0x0000EC:
    call (event_user[]:int32 (var 1s))
0x000100:
    popenv 0x0000EC
0x000104:
    if !(== self.timer 28s) goto 0x00012C
0x000118:
    call (event_user[]:int32 (var 9s))
0x00012C:
    if !(> self.timer 30s) goto 0x000154
0x000140:
    push (< self.timer 39s)
    goto 0x000158
0x000154:
    push 0s
0x000158:
    if !pop goto 0x0001C4
0x00015C:
    self.ub = (instance_create[]:int32 (var 576s) self.y self.x)
    push 1s
    stog.side* = (int32 self.ub)
    pushenv (int32 self.ub) 0x0001C0
0x0001AC:
    call (event_user[]:int32 (var 1s))
0x0001C0:
    popenv 0x0001AC
0x0001C4:
    if !(== self.timer 48s) goto 0x0001EC
0x0001D8:
    call (event_user[]:int32 (var 8s))
0x0001EC:
    if !(> self.timer 50s) goto 0x000214
0x000200:
    push (< self.timer 58s)
    goto 0x000218
0x000214:
    push 0s
0x000218:
    if !pop goto 0x000284
0x00021C:
    self.ub = (instance_create[]:int32 (var 576s) self.y self.x)
    push 0s
    stog.side* = (int32 self.ub)
    pushenv (int32 self.ub) 0x000280
0x00026C:
    call (event_user[]:int32 (var 1s))
0x000280:
    popenv 0x00026C
0x000284:
    if !(== self.timer 68s) goto 0x0002AC
0x000298:
    call (event_user[]:int32 (var 9s))
0x0002AC:
    if !(> self.timer 70s) goto 0x0002D4
0x0002C0:
    push (< self.timer 78s)
    goto 0x0002D8
0x0002D4:
    push 0s
0x0002D8:
    if !pop goto 0x000344
0x0002DC:
    self.ub = (instance_create[]:int32 (var 576s) self.y self.x)
    push 1s
    stog.side* = (int32 self.ub)
    pushenv (int32 self.ub) 0x000340
0x00032C:
    call (event_user[]:int32 (var 1s))
0x000340:
    popenv 0x00032C
0x000344:
    if !(== self.timer 103s) goto 0x000380
0x000358:
    call (event_user[]:int32 (var 8s))
    call (event_user[]:int32 (var 9s))
0x000380:
    if !(> self.timer 105s) goto 0x0003A8
0x000394:
    push (< self.timer 117s)
    goto 0x0003AC
0x0003A8:
    push 0s
0x0003AC:
    if !pop goto 0x00042C
0x0003B0:
    self.ub = (instance_create[]:int32 (var 576s) self.y self.x)
    push (choose[]:int32 (var 1s) (var 0s))
    stog.side* = (int32 self.ub)
    pushenv (int32 self.ub) 0x000428
0x000414:
    call (event_user[]:int32 (var 1s))
0x000428:
    popenv 0x000414
0x00042C:
    if !(== self.type 1s) goto 0x000574
0x000440:
    if !(== self.timer 1s) goto 0x000460
0x000454:
    self.t_c = 0s
0x000460:
    self.t_c = (+ self.t_c 1s)
    if !(== self.t_c 2s) goto 0x000574
0x00048C:
    self.ub = (instance_create[]:int32 (var 576s) self.y self.x)
    self.sidez = (choose[]:int32 (var 1s) (var 0s))
    push self.sidez
    stog.side* = (int32 self.ub)
    pushenv (int32 self.ub) 0x000514
0x000500:
    call (event_user[]:int32 (var 1s))
0x000514:
    popenv 0x000500
0x000518:
    if !(== self.sidez 0s) goto 0x000540
0x00052C:
    call (event_user[]:int32 (var 8s))
0x000540:
    if !(== self.sidez 1s) goto 0x000568
0x000554:
    call (event_user[]:int32 (var 9s))
0x000568:
    self.t_c = -1s
0x000574:
    if !(== self.type 2s) goto 0x0006BC
0x000588:
    if !(== self.timer 1s) goto 0x0005A8
0x00059C:
    self.t_c = 0s
0x0005A8:
    self.t_c = (+ self.t_c 1s)
    if !(== self.t_c 2s) goto 0x0006BC
0x0005D4:
    self.ub = (instance_create[]:int32 (var 576s) self.y self.x)
    self.sidez = (choose[]:int32 (var 1s) (var 0s))
    push self.sidez
    stog.side* = (int32 self.ub)
    pushenv (int32 self.ub) 0x00065C
0x000648:
    call (event_user[]:int32 (var 1s))
0x00065C:
    popenv 0x000648
0x000660:
    if !(== self.sidez 0s) goto 0x000688
0x000674:
    call (event_user[]:int32 (var 8s))
0x000688:
    if !(== self.sidez 1s) goto 0x0006B0
0x00069C:
    call (event_user[]:int32 (var 9s))
0x0006B0:
    self.t_c = 1s
0x0006BC:
    if !(== self.type 3s) goto 0x000804
0x0006D0:
    if !(== self.timer 1s) goto 0x0006F0
0x0006E4:
    self.t_c = 0s
0x0006F0:
    self.t_c = (+ self.t_c 1s)
    if !(== self.t_c 2s) goto 0x000804
0x00071C:
    self.ub = (instance_create[]:int32 (var 576s) self.y self.x)
    self.sidez = (choose[]:int32 (var 1s) (var 0s))
    push self.sidez
    stog.side* = (int32 self.ub)
    pushenv (int32 self.ub) 0x0007A4
0x000790:
    call (event_user[]:int32 (var 1s))
0x0007A4:
    popenv 0x000790
0x0007A8:
    if !(== self.sidez 0s) goto 0x0007D0
0x0007BC:
    call (event_user[]:int32 (var 8s))
0x0007D0:
    if !(== self.sidez 1s) goto 0x0007F8
0x0007E4:
    call (event_user[]:int32 (var 9s))
0x0007F8:
    self.t_c = -5s
0x000804:
    exit
