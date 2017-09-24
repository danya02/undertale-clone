0x000000:
    if !(== self.memory 0s) goto 0x000200
0x000014:
    if !(== self.rounded 0s) goto 0x00007C
0x000028:
    self.cb = (instance_create[]:int32 (var 1700s) (choose[]:int32 (var 40s)) (var 100s))
    push (choose[]:int32 (var 1s))
    stog.type* = (int32 self.cb)
0x00007C:
    if !(== self.rounded 1s) goto 0x0000E4
0x000090:
    self.cb = (instance_create[]:int32 (var 1700s) (choose[]:int32 (var 260s)) (var 100s))
    push (choose[]:int32 (var 1s))
    stog.type* = (int32 self.cb)
0x0000E4:
    if !(== self.rounded 2s) goto 0x00014C
0x0000F8:
    self.cb = (instance_create[]:int32 (var 1700s) (choose[]:int32 (var 40s)) (var 100s))
    push (choose[]:int32 (var 0s))
    stog.type* = (int32 self.cb)
0x00014C:
    if !(== self.rounded 3s) goto 0x0001B4
0x000160:
    self.cb = (instance_create[]:int32 (var 1700s) (choose[]:int32 (var 260s)) (var 100s))
    push (choose[]:int32 (var 0s))
    stog.type* = (int32 self.cb)
0x0001B4:
    stog.alarm[5s] = 35s
    self.rounded = (+ self.rounded 1s)
    if !(== self.rounded 4s) goto 0x000200
0x0001F4:
    self.rounded = 0s
0x000200:
    if !(== self.memory 1s) goto 0x000350
0x000214:
    self.i = 0s
    self.xx = (+ 10s (* (floor[]:int32 (random[]:int32 (var 6s))) 20s))
    if (<= 4s 0) goto 0x000338
0x000268:
    push 4s
    call (event_user[]:int32 (var 0s))
    push self.xx
    stog.x* = (int32 self.cb)
    self.xx = (+ self.xx 90s)
    push -40s
    stog.y* = (int32 self.cb)
    push 0.5d
    stog.vspeed* = (int32 self.cb)
    push 0.1d
    stog.gravity* = (int32 self.cb)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000268
0x000338:
    push (- pop 1)
    pop
    stog.alarm[5s] = 15s
0x000350:
    if !(== self.memory 2s) goto 0x0004DC
0x000364:
    self.i = 0s
    if !(< self.i 12s) goto 0x000410
0x000384:
    call (event_user[]:int32 (var 0s))
    push -200s
    stog.x* = (int32 self.cb)
    push (+ 10s (* self.i 40s))
    stog.y* = (int32 self.cb)
    push 9s
    stog.hspeed* = (int32 self.cb)
    self.i = (+ self.i 1s)
    goto 0x000370
0x000410:
    self.i = 0s
    if !(< self.i 12s) goto 0x0004C8
0x000430:
    call (event_user[]:int32 (var 0s))
    push (+ self.room_width 200s)
    stog.x* = (int32 self.cb)
    push (+ 30s (* self.i 40s))
    stog.y* = (int32 self.cb)
    push -9s
    stog.hspeed* = (int32 self.cb)
    self.i = (+ self.i 1s)
    goto 0x00041C
0x0004C8:
    stog.alarm[5s] = 50s
0x0004DC:
    if !(== self.memory 4s) goto 0x000A48
0x0004F0:
    if !(== self.memswitch 0s) goto 0x000774
0x000504:
    self.i = 0s
    if !(< self.i 12s) goto 0x00063C
0x000524:
    call (event_user[]:int32 (var 0s))
    push (+ 10s (* self.i 60s))
    stog.x* = (int32 self.cb)
    pushenv (int32 self.cb) 0x00058C
0x000574:
    self.width = (string_width[]:int32 self.text)
0x00058C:
    popenv 0x000574
0x000590:
    push (+ -300s (int32 self.cb):width)
    stog.y* = (int32 self.cb)
    push 90s
    stog.image_angle* = (int32 self.cb)
    push 2s
    stog.hspeed* = (int32 self.cb)
    push 3s
    stog.action* = (int32 self.cb)
    push 6s
    stog.vspeed* = (int32 self.cb)
    self.i = (+ self.i 1s)
    goto 0x000510
0x00063C:
    self.i = 0s
    if !(< self.i 12s) goto 0x000774
0x00065C:
    call (event_user[]:int32 (var 0s))
    pushenv (int32 self.cb) 0x000698
0x000680:
    self.width = (string_width[]:int32 self.text)
0x000698:
    popenv 0x000680
0x00069C:
    push 90s
    stog.image_angle* = (int32 self.cb)
    push (+ 40s (* self.i 60s))
    stog.x* = (int32 self.cb)
    push (- -300s (int32 self.cb):width)
    stog.y* = (int32 self.cb)
    push -2s
    stog.hspeed* = (int32 self.cb)
    push 3s
    stog.action* = (int32 self.cb)
    push 6s
    stog.vspeed* = (int32 self.cb)
    self.i = (+ self.i 1s)
    goto 0x000648
0x000774:
    if !(== self.memswitch 1s) goto 0x0009F8
0x000788:
    self.i = 0s
    if !(< self.i 12s) goto 0x0008C0
0x0007A8:
    call (event_user[]:int32 (var 0s))
    push (+ 10s (* self.i 60s))
    stog.x* = (int32 self.cb)
    pushenv (int32 self.cb) 0x000810
0x0007F8:
    self.width = (string_width[]:int32 self.text)
0x000810:
    popenv 0x0007F8
0x000814:
    push (+ -300s (int32 self.cb):width)
    stog.y* = (int32 self.cb)
    push -90s
    stog.image_angle* = (int32 self.cb)
    push -2s
    stog.hspeed* = (int32 self.cb)
    push 3s
    stog.action* = (int32 self.cb)
    push 6s
    stog.vspeed* = (int32 self.cb)
    self.i = (+ self.i 1s)
    goto 0x000794
0x0008C0:
    self.i = 0s
    if !(< self.i 12s) goto 0x0009F8
0x0008E0:
    call (event_user[]:int32 (var 0s))
    pushenv (int32 self.cb) 0x00091C
0x000904:
    self.width = (string_width[]:int32 self.text)
0x00091C:
    popenv 0x000904
0x000920:
    push -90s
    stog.image_angle* = (int32 self.cb)
    push (+ 40s (* self.i 60s))
    stog.x* = (int32 self.cb)
    push (- -300s (int32 self.cb):width)
    stog.y* = (int32 self.cb)
    push 2s
    stog.hspeed* = (int32 self.cb)
    push 3s
    stog.action* = (int32 self.cb)
    push 6s
    stog.vspeed* = (int32 self.cb)
    self.i = (+ self.i 1s)
    goto 0x0008CC
0x0009F8:
    self.memory = 4s
    if !(== self.memswitch 1s) goto 0x000A28
0x000A18:
    self.memswitch = 0s
    goto 0x000A34
0x000A28:
    self.memswitch = 1s
0x000A34:
    stog.alarm[5s] = 78s
0x000A48:
    if !(== self.memory 6s) goto 0x000C48
0x000A5C:
    if !(== self.rounded 0s) goto 0x000AC4
0x000A70:
    self.cb = (instance_create[]:int32 (var 1700s) (choose[]:int32 (var 40s)) (var 100s))
    push (choose[]:int32 (var 1s))
    stog.type* = (int32 self.cb)
0x000AC4:
    if !(== self.rounded 1s) goto 0x000B2C
0x000AD8:
    self.cb = (instance_create[]:int32 (var 1700s) (choose[]:int32 (var 260s)) (var 100s))
    push (choose[]:int32 (var 1s))
    stog.type* = (int32 self.cb)
0x000B2C:
    if !(== self.rounded 2s) goto 0x000B94
0x000B40:
    self.cb = (instance_create[]:int32 (var 1700s) (choose[]:int32 (var 40s)) (var 100s))
    push (choose[]:int32 (var 0s))
    stog.type* = (int32 self.cb)
0x000B94:
    if !(== self.rounded 3s) goto 0x000BFC
0x000BA8:
    self.cb = (instance_create[]:int32 (var 1700s) (choose[]:int32 (var 260s)) (var 100s))
    push (choose[]:int32 (var 0s))
    stog.type* = (int32 self.cb)
0x000BFC:
    stog.alarm[5s] = 25s
    self.rounded = (+ self.rounded 1s)
    if !(== self.rounded 4s) goto 0x000C48
0x000C3C:
    self.rounded = 0s
0x000C48:
    if !(== self.memory 7s) goto 0x000D20
0x000C5C:
    self.cb = (instance_create[]:int32 (var 1700s) (var 360s) (var -300s))
    push 4s
    stog.hspeed* = (int32 self.cb)
    push 3s
    stog.type* = (int32 self.cb)
    self.cb = (instance_create[]:int32 (var 1700s) (var 120s) (var 950s))
    push -4s
    stog.hspeed* = (int32 self.cb)
    push 3s
    stog.type* = (int32 self.cb)
    stog.alarm[5s] = 75s
0x000D20:
    exit
