0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x 220s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "How&great&I am."
    if !(< self.mycommand 75s) goto 0x0000B4
0x00009C:
    stog.msg[0s] = "Look.&Watch.&Observe."
0x0000B4:
    if !(< self.mycommand 50s) goto 0x0000E0
0x0000C8:
    stog.msg[0s] = "Wow.&Check&out my&pecs."
0x0000E0:
    if !(< self.mycommand 25s) goto 0x00010C
0x0000F4:
    stog.msg[0s] = "Sorry...&for&NOTHING&*ollies*"
0x00010C:
    if !(== self.whatiheard 1s) goto 0x000190
0x000120:
    stog.msg[0s] = "Bepis"
    if !(== self.boo 1s) goto 0x000164
0x00014C:
    stog.msg[0s] = "Boo?&What a&wimpy&ghost."
0x000164:
    if !(>= self.boo 2s) goto 0x000190
0x000178:
    stog.msg[0s] = "Mmm,&Fresh&Sweet&Haters"
0x000190:
    if !(== self.whatiheard 3s) goto 0x0001E8
0x0001A4:
    stog.msg[0s] = "OK!&I rule!&I admit&it!"
    if !(>= self.applaud 2s) goto 0x0001E8
0x0001D0:
    stog.msg[0s] = "What&else do&you have&to say!?"
0x0001E8:
    if !(== self.whatiheard 4s) goto 0x00026C
0x0001FC:
    stog.msg[0s] = "..."
    if !(== self.nothing 1s) goto 0x000240
0x000228:
    stog.msg[0s] = "Eh?&You&forgot&to clap."
0x000240:
    if !(== self.nothing 2s) goto 0x00026C
0x000254:
    stog.msg[0s] = "HELLO??&I'M&RIGHT&HERE!!!"
0x00026C:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.border = 3s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x00037C:
    exit
