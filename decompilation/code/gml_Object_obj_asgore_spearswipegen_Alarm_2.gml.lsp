0x000000:
    self.sw = (instance_create[]:int32 (var 475s) self.y self.x)
    self.i = 0s
    if !(< self.i (+ self.typeamt 1s)) goto 0x0000A8
0x000054:
    push -1s
    push (int32 self.i):type
    push (int32 self.sw)
    stog.type[] = (int32 self.i)
    self.i = (+ self.i 1s)
    goto 0x000034
0x0000A8:
    if !(== self.diff 0s) goto 0x000120
0x0000BC:
    pushenv (int32 self.sw) 0x00011C
0x0000CC:
    self.amt = 1s
    self.quick = 0s
    self.cutspeed = 0.5d
    self.flashtimer = 12s
    self.swipewait = 2s
    self.initswipewait = 5s
0x00011C:
    popenv 0x0000CC
0x000120:
    if !(== self.diff 1s) goto 0x000198
0x000134:
    pushenv (int32 self.sw) 0x000194
0x000144:
    self.amt = 2s
    self.quick = 0s
    self.cutspeed = 0.5d
    self.flashtimer = 12s
    self.swipewait = 0s
    self.initswipewait = 8s
0x000194:
    popenv 0x000144
0x000198:
    if !(== self.diff 2s) goto 0x000208
0x0001AC:
    pushenv (int32 self.sw) 0x000204
0x0001BC:
    self.amt = 2s
    self.quick = 0s
    self.cutspeed = 1s
    self.flashtimer = 7s
    self.swipewait = 3s
    self.initswipewait = 4s
0x000204:
    popenv 0x0001BC
0x000208:
    if !(== self.diff 3s) goto 0x000278
0x00021C:
    pushenv (int32 self.sw) 0x000274
0x00022C:
    self.amt = 3s
    self.quick = 0s
    self.cutspeed = 1s
    self.flashtimer = 7s
    self.swipewait = 3s
    self.initswipewait = 3s
0x000274:
    popenv 0x00022C
0x000278:
    call (instance_destroy[]:int32 )
0x000284:
    exit
