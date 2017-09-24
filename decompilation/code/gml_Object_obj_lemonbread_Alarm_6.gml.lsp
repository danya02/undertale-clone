0x000000:
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "But&nobody&came."
    if !(< self.mycommand 75s) goto 0x000084
0x00006C:
    stog.msg[0s] = "Do you&think&I'm&pretty?"
0x000084:
    if !(< self.mycommand 50s) goto 0x0000B0
0x000098:
    stog.msg[0s] = "That's&what&they all&say."
0x0000B0:
    if !(< self.mycommand 25s) goto 0x0000DC
0x0000C4:
    stog.msg[0s] = "Stay&here&with&me..."
0x0000DC:
    if !(== self.turns 0s) goto 0x000120
0x0000F0:
    stog.msg[0s] = "Welcome&to my&special&hell."
    self.turns = 1s
    self.mycommand = 20s
0x000120:
    if !(== self.turns 2s) goto 0x00014C
0x000134:
    stog.msg[0s] = "..."
0x00014C:
    if !(> self.mercymod 50000) goto 0x000178
0x000164:
    push (== self.turns 1s)
    goto 0x00017C
0x000178:
    push 0s
0x00017C:
    if !pop goto 0x0001BC
0x000180:
    stog.msg[0s] = "Life's&flashing&before&my teeth"
    stog.msg[0s] = "I've&felt&this&before."
    self.turns = 2s
0x0001BC:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.bx = 0s
    self.by = 0s
    if (<= 2s 0) goto 0x000350
0x000210:
    push 2s
    self.bx = 0s
    if (<= 6s 0) goto 0x00031C
0x000234:
    push 6s
    self.blcon = (instance_create[]:int32 (var 186s) (+ 10s self.by) (+ 10s self.bx))
    push 20s
    stog.depth* = (int32 self.blcon)
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    push 10s
    stog.depth* = (int32 self.blconwd)
    self.bx = (+ self.bx 101s)
    if (bool (- pop 1)) goto 0x000234
0x00031C:
    push (- pop 1)
    pop
    self.by = (+ self.by 119s)
    if (bool (- pop 1)) goto 0x000210
0x000350:
    push (- pop 1)
    pop
    global.border = 5s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x0003F0:
    exit
