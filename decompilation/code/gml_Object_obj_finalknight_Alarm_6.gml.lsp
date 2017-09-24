0x000000:
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(< self.mycommand 20s) goto 0x00006C
0x000054:
    stog.msg[0s] = "Good&knight."
0x00006C:
    if !(>= self.mycommand 20s) goto 0x000098
0x000080:
    stog.msg[0s] = "Fare&well."
0x000098:
    if !(>= self.mycommand 40s) goto 0x0000C4
0x0000AC:
    stog.msg[0s] = "Adieu."
0x0000C4:
    if !(>= self.mycommand 60s) goto 0x0000F0
0x0000D8:
    stog.msg[0s] = "Close&your&eyes..."
0x0000F0:
    if !(>= self.mycommand 80s) goto 0x00011C
0x000104:
    stog.msg[0s] = "Goodbye."
0x00011C:
    if !(> self.asleep 0s) goto 0x000148
0x000130:
    stog.msg[0s] = "Zzzz..."
0x000148:
    stog.msg[1s] = "%%%"
    if !(!= self.talk 3s) goto 0x0001C4
0x000174:
    global.typer = 1s
    global.msc = 0s
    self.blconwd = (instance_create[]:int32 (var 785s) (- self.y 20s) (+ self.x 210s))
0x0001C4:
    if !(== self.talk 3s) goto 0x000264
0x0001D8:
    stog.msg[0s] = " ......& ......& ......& ......& ......& ......& ......& ......& It's OK."
    stog.msg[1s] = "%%%"
    global.typer = 5s
    global.msc = 0s
    self.blconwd = (instance_create[]:int32 (var 785s) (- self.y 20s) (+ self.x 210s))
    self.talk = 0s
0x000264:
    self.attacked = 0s
    if !(== self.asleep 0s) goto 0x000290
0x000284:
    global.border = 17s
0x000290:
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x000320:
    exit
