0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (- self.y 10s) (+ self.x 95s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(== self.coherent 1s) goto 0x00016C
0x00008C:
    stog.msg[0s] = "Come&join&the&fun."
    if !(< self.mycommand 75s) goto 0x0000D0
0x0000B8:
    stog.msg[0s] = "It's a&real&get&together"
0x0000D0:
    if !(< self.mycommand 50s) goto 0x0000FC
0x0000E4:
    stog.msg[0s] = "Lorem&ipsum&docet"
0x0000FC:
    if !(< self.mycommand 25s) goto 0x000128
0x000110:
    stog.msg[0s] = "Become&one of&us!"
0x000128:
    if !(== self.turns 0s) goto 0x000154
0x00013C:
    stog.msg[0s] = "Come&join&the&fun."
0x000154:
    self.turns = (+ self.turns 1s)
0x00016C:
    if !(== self.whatiheard 1s) goto 0x0001F0
0x000180:
    stog.msg[0s] = "That's&a&shame."
    if !(> self.mycommand 33s) goto 0x0001C4
0x0001AC:
    stog.msg[0s] = "Oh&well."
0x0001C4:
    if !(> self.mycommand 66s) goto 0x0001F0
0x0001D8:
    stog.msg[0s] = "Be&seeing&you."
0x0001F0:
    if !(== self.whatiheard 3s) goto 0x000274
0x000204:
    stog.msg[0s] = "Then,&hold&still."
    if !(> self.mycommand 33s) goto 0x000248
0x000230:
    stog.msg[0s] = "Just&a&moment."
0x000248:
    if !(> self.mycommand 66s) goto 0x000274
0x00025C:
    stog.msg[0s] = "You'll&be with&us&shortly."
0x000274:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    if !(== self.coherent 1s) goto 0x000300
0x0002AC:
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    goto 0x00040C
0x000300:
    self.sq = (instance_create[]:int32 (var 540s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.dd = (floor[]:int32 (random[]:int32 (var 6s)))
    push (+ 0.9d (random[]:int32 (var 0.2d)))
    self.dnoise = (caster_loop[]:int32 (var 0.3d) -1s (int32 self.dd):ds)
    call (caster_set_panning[]:int32 (+ 0.1d (random[]:int32 (var 0.8d))) self.dnoise)
0x00040C:
    global.border = 5s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x0004A8:
    exit
