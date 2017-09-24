0x000000:
    global.typer = 33s
    self.blcontype = 0s
    if !(!= self.con 5s) goto 0x000450
0x00002C:
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x000094
0x000080:
    push (< self.mycommand 25s)
    goto 0x000098
0x000094:
    push 0s
0x000098:
    if !pop goto 0x0000B4
0x00009C:
    stog.msg[0s] = "Foolish.&Foolish!&FOOLISH!"
0x0000B4:
    if !(>= self.mycommand 25s) goto 0x0000E0
0x0000C8:
    stog.msg[0s] = "Futile.&Futile!&FUTILE!"
0x0000E0:
    if !(>= self.mycommand 50s) goto 0x00010C
0x0000F4:
    stog.msg[0s] = "Pitiful.&Pitiful!&PITIFUL!"
0x00010C:
    if !(>= self.mycommand 75s) goto 0x000138
0x000120:
    stog.msg[0s] = "Feeble.&Feeble!&FEEBLE!"
0x000138:
    if !(> self.con3 0s) goto 0x000160
0x00014C:
    push (< self.con3 8s)
    goto 0x000164
0x000160:
    push 0s
0x000164:
    if !pop goto 0x0002A8
0x000168:
    if !(== self.con3 1s) goto 0x000194
0x00017C:
    stog.msg[0s] = " I'll defeat you and& take your SOUL!"
0x000194:
    if !(== self.con3 2s) goto 0x0001C0
0x0001A8:
    stog.msg[0s] = " I'll use your SOUL& to cross the barrier!"
0x0001C0:
    if !(== self.con3 3s) goto 0x0001EC
0x0001D4:
    stog.msg[0s] = " I'll stand in the& window of a fancy& store!"
0x0001EC:
    if !(== self.con3 4s) goto 0x000218
0x000200:
    stog.msg[0s] = "\\E3 THEN EVERYTHING I& WANT WILL BE MINE!"
0x000218:
    if !(== self.con3 5s) goto 0x000244
0x00022C:
    stog.msg[0s] = "\\E2 Huh?& Yeah, I guess& that'll avenge my& cousin."
0x000244:
    if !(== self.con3 6s) goto 0x000270
0x000258:
    stog.msg[0s] = "\\E0 What was their name& again...?"
0x000270:
    if !(== self.con3 7s) goto 0x00029C
0x000284:
    stog.msg[0s] = " Whatever.& Whatever!& WHATEVER!!"
0x00029C:
    self.blcontype = 1s
0x0002A8:
    if !(> self.con2 13s) goto 0x0002D8
0x0002BC:
    push (<= self.con2 117.5d)
    goto 0x0002DC
0x0002D8:
    push 0s
0x0002DC:
    if !pop goto 0x0003A4
0x0002E0:
    if !(== self.con2 14s) goto 0x00030C
0x0002F4:
    stog.msg[0s] = "DUMMY&BOTS!&MAGIC&MISSILE!"
0x00030C:
    if !(== self.con2 15s) goto 0x000338
0x000320:
    stog.msg[0s] = "DUMMY&BOTS!&TRY&AGAIN!"
0x000338:
    if !(== self.con2 16s) goto 0x000364
0x00034C:
    stog.msg[0s] = "DUMMY&BOTS!&You're&awful???"
0x000364:
    if !(== self.con2 17.5d) goto 0x000398
0x000380:
    stog.msg[0s] = "DUMMY&BOTS!&FINAL&ATTACK!"
0x000398:
    self.blcontype = 0s
0x0003A4:
    self.con3 = (+ self.con3 1s)
    if !(== self.blcontype 0s) goto 0x000408
0x0003D0:
    self.blcon = (instance_create[]:int32 (var 186s) (- self.ystart 25s) (+ self.xstart 95s))
0x000408:
    if !(== self.blcontype 1s) goto 0x00044C
0x00041C:
    self.blcon = (instance_create[]:int32 (var 187s) self.ystart (+ self.xstart 100s))
0x00044C:
    goto 0x000510
0x000450:
    if !(== self.con 5s) goto 0x000510
0x000464:
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    call (caster_resume[]:int32 global.batmusic)
    global.typer = 33s
    global.faceemotion = 2s
    stog.msg[0s] = " (Wait^1, is DUMMY& a compliment...?)"
    self.blcon = (instance_create[]:int32 (var 187s) self.ystart (+ self.xstart 100s))
    self.blcontype = 1s
    self.con = 6s
0x000510:
    stog.msg[1s] = "%%%"
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.border = 6s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x000614:
    exit
