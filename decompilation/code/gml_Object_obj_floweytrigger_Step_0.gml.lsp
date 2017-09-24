0x000000:
    if !(== self.conversation 1s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000088
0x000038:
    global.interact = 3s
    stog.alarm[0s] = 1s
    self.conversation = 2s
    call (instance_create[]:int32 (var 147s) (var 0s) (var 0s))
0x000088:
    if !(== self.conversation 3s) goto 0x0000B4
0x00009C:
    push (bool (instance_exists[]:int32 (var 763s)))
    goto 0x0000B8
0x0000B4:
    push 0s
0x0000B8:
    if !pop goto 0x0000D0
0x0000BC:
    self.conversation = 3.5d
0x0000D0:
    if !(== self.conversation 3.5d) goto 0x000108
0x0000EC:
    push (== (instance_exists[]:int32 (var 763s)) 0s)
    goto 0x00010C
0x000108:
    push 0s
0x00010C:
    if !pop goto 0x000160
0x000110:
    self.room_persistent = 0s
    global.specialbattle = 0s
    [obj_toroverworld1].direction = 90s
    [obj_toroverworld1].speed = 2s
    stog.alarm[3s] = 15s
    self.conversation = 4s
0x000160:
    if !(== self.conversation 20s) goto 0x000190
0x000174:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000194
0x000190:
    push 0s
0x000194:
    if !pop goto 0x000290
0x000198:
    self.mus = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    global.interact = 1s
    self.visible = 0s
    self.flow = 875s
    pushenv (int32 self.flow) 0x000200
0x0001F4:
    self.visible = 0s
0x000200:
    popenv 0x0001F4
0x000204:
    self.flow_m = (scr_marker[]:int32 (var 1100s) (int32 self.flow):y (int32 self.flow):x)
    pushenv (int32 self.flow_m) 0x000260
0x000254:
    call (scr_depth[]:int32 )
0x000260:
    popenv 0x000254
0x000264:
    push 0.25d
    stog.image_speed* = (int32 self.flow_m)
    self.conversation = 21s
0x000290:
    if !(== self.conversation 21s) goto 0x0002C0
0x0002A4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0002C4
0x0002C0:
    push 0s
0x0002C4:
    if !pop goto 0x000328
0x0002C8:
    if !(>= (int32 self.flow_m):image_index 5s) goto 0x000328
0x0002E8:
    push 0s
    stog.visible* = (int32 self.flow_m)
    self.conversation = 21.2d
    stog.alarm[4s] = 50s
0x000328:
    if !(== self.conversation 22.2d) goto 0x000360
0x000344:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000364
0x000360:
    push 0s
0x000364:
    if !pop goto 0x0003D4
0x000368:
    global.plot = 1s
    pushenv (int32 self.flow_m) 0x000390
0x000384:
    call (instance_destroy[]:int32 )
0x000390:
    popenv 0x000384
0x000394:
    pushenv (int32 self.mus) 0x0003B0
0x0003A4:
    call (instance_destroy[]:int32 )
0x0003B0:
    popenv 0x0003A4
0x0003B4:
    call (caster_free[]:int32 global.currentsong)
    self.conversation = 23s
0x0003D4:
    if !(== self.conversation 23s) goto 0x0004B4
0x0003E8:
    push (var 1103s)
    self.temptor = (scr_marker[]:int32 -1s (- 0s:view_yview 60s) (var 146s))
    push 0.25d
    stog.image_speed* = (int32 self.temptor)
    push 2s
    stog.vspeed* = (int32 self.temptor)
    global.currentsong = (caster_load[]:int32 (var "music/toriel.ogg"))
    call (caster_loop[]:int32 (var 0.86d) (var 0.7d) global.currentsong)
    self.conversation = 24s
0x0004B4:
    if !(== self.conversation 24s) goto 0x00057C
0x0004C8:
    pushenv (int32 self.temptor) 0x0004E4
0x0004D8:
    call (scr_depth[]:int32 )
0x0004E4:
    popenv 0x0004D8
0x0004E8:
    if !(>= (int32 self.temptor):y 258s) goto 0x00057C
0x000508:
    self.faketor = 1s
    push 0s
    stog.image_index* = (int32 self.temptor)
    push 0s
    stog.speed* = (int32 self.temptor)
    push 0s
    stog.image_speed* = (int32 self.temptor)
    self.conversation = 25s
    stog.alarm[2s] = 30s
0x00057C:
    exit
