0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x 100s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "Default"
    if !(== self.talkt 0s) goto 0x0000B4
0x00009C:
    stog.msg[0s] = "All&humans&will&die!"
0x0000B4:
    if !(== self.talkt 1s) goto 0x0000E0
0x0000C8:
    stog.msg[0s] = "You're&our&real&enemy."
0x0000E0:
    if !(== self.talkt 2s) goto 0x00010C
0x0000F4:
    stog.msg[0s] = "Mercy&is for&the&weak."
0x00010C:
    if !(== self.talkt 2s) goto 0x00012C
0x000120:
    self.talkt = 0s
0x00012C:
    if !(== self.talkt 1s) goto 0x00014C
0x000140:
    self.talkt = 2s
0x00014C:
    if !(== self.talkt 0s) goto 0x00016C
0x000160:
    self.talkt = 1s
0x00016C:
    stog.msg[1s] = "%%%"
    global.typer = 39s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.border = 17s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
    if !(== 743.sprite_index 39s) goto 0x0002E4
0x000290:
    global.border = 13s
    [obj_heart].x = (- (/ self.room_width (double 2s)) 8s)
    [obj_heart].y = (+ 759.y 34s)
    self.greenlock = 1s
0x0002E4:
    exit
