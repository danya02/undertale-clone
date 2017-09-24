0x000000:
    if !(< self.mercymod 100s) goto 0x0003C8
0x000014:
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x 140s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    pushenv 782s 0x000098
0x00008C:
    call (instance_destroy[]:int32 )
0x000098:
    popenv 0x00008C
0x00009C:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    stog.msg[0s] = "Don't&pick on&me."
    if !(< self.mycommand 75s) goto 0x000104
0x0000EC:
    stog.msg[0s] = "What are&you so&afraid&of?"
0x000104:
    if !(< self.mycommand 50s) goto 0x000130
0x000118:
    stog.msg[0s] = "Take&your&last&look."
0x000130:
    if !(< self.mycommand 25s) goto 0x00015C
0x000144:
    stog.msg[0s] = "You've&seen&enough."
0x00015C:
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "Robbit,&robbit."
    if !(< self.mycommand 75s) goto 0x000210
0x0001F8:
    stog.msg[0s] = "Shudder,&shudder."
0x000210:
    if !(< self.mycommand 50s) goto 0x00023C
0x000224:
    stog.msg[0s] = "Creak,&creak."
0x00023C:
    if !(< self.mycommand 25s) goto 0x000268
0x000250:
    stog.msg[0s] = "Skip,&jump."
0x000268:
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "I've&made my&choice."
    if !(< self.mycommand 75s) goto 0x00031C
0x000304:
    stog.msg[0s] = "Not this&time."
0x00031C:
    if !(< self.mycommand 50s) goto 0x000348
0x000330:
    stog.msg[0s] = "I'm not&afraid&of you."
0x000348:
    if !(< self.mycommand 25s) goto 0x000374
0x00035C:
    stog.msg[0s] = "There's&still&hope."
0x000374:
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    goto 0x0006FC
0x0003C8:
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x 140s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    pushenv 782s 0x00044C
0x000440:
    call (instance_destroy[]:int32 )
0x00044C:
    popenv 0x000440
0x000450:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    stog.msg[0s] = "Someone&finally&gets it."
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y 110s) (+ self.x 140s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[1s] = "%%%"
    global.typer = 2s
    stog.msg[0s] = "Courage&..."
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x 250s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[1s] = "%%%"
    global.typer = 2s
    stog.msg[0s] = "Ribbit&ribbit."
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
0x0006FC:
    push 1s
    stog.stretchup* = (int32 self.mypart1)
    global.border = 5s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x0007B0:
    exit
