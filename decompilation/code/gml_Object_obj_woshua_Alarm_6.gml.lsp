0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (- self.y 25s) (+ self.x 95s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(< self.mycommand 5s) goto 0x00009C
0x00008C:
    self.bodypart = "face"
0x00009C:
    if !(>= self.mycommand 5s) goto 0x0000C0
0x0000B0:
    self.bodypart = "teeth&and eyes"
0x0000C0:
    if !(>= self.mycommand 10s) goto 0x0000E4
0x0000D4:
    self.bodypart = "leg"
0x0000E4:
    if !(>= self.mycommand 15s) goto 0x000108
0x0000F8:
    self.bodypart = "SOUL"
0x000108:
    if !(>= self.mycommand 20s) goto 0x00012C
0x00011C:
    self.bodypart = "hand"
0x00012C:
    if !(>= self.mycommand 0s) goto 0x000154
0x000140:
    push (< self.mycommand 25s)
    goto 0x000158
0x000154:
    push 0s
0x000158:
    if !pop goto 0x000180
0x00015C:
    stog.msg[0s] = (+ "Wosh u&" self.bodypart)
0x000180:
    if !(>= self.mycommand 25s) goto 0x0001D8
0x000194:
    stog.msg[0s] = "*whistle&as it&cleans*"
    if !(> global.kills 0s) goto 0x0001D8
0x0001C0:
    stog.msg[0s] = "Your&SOUL&is&unclean"
0x0001D8:
    if !(>= self.mycommand 50s) goto 0x000204
0x0001EC:
    stog.msg[0s] = "Out!!!&Darned&spot"
0x000204:
    if !(>= self.mycommand 75s) goto 0x00022C
0x000218:
    push (== self.dub 1s)
    goto 0x000230
0x00022C:
    push 0s
0x000230:
    if !pop goto 0x00024C
0x000234:
    stog.msg[0s] = "Oops, I&meant...&scrub a&sub-SUBS"
0x00024C:
    if !(>= self.mycommand 75s) goto 0x000274
0x000260:
    push (== self.dub 0s)
    goto 0x000278
0x000274:
    push 0s
0x000278:
    if !pop goto 0x0002A0
0x00027C:
    stog.msg[0s] = "Scrub a&dub-dubs"
    self.dub = 1s
0x0002A0:
    if !(== self.whatiheard 3s) goto 0x0002CC
0x0002B4:
    stog.msg[0s] = "Green&means&clean"
0x0002CC:
    if !(== self.whatiheard 1s) goto 0x000324
0x0002E0:
    stog.msg[0s] = "Yuck!"
    if !(== self.clean 2s) goto 0x000324
0x00030C:
    stog.msg[0s] = "Fresh!"
0x000324:
    if !(== self.whatiheard 4s) goto 0x000350
0x000338:
    stog.msg[0s] = "NO. THAT&JOKE'S&TOO...&DIRTY"
0x000350:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    self.blcontweet = (instance_create[]:int32 (var 186s) (- self.y 40s) self.x)
    push 23s
    stog.sprite_index* = (int32 self.blcontweet)
    global.msc = 0s
    stog.msg[0s] = "\\Xtweet"
    global.typer = 5s
    self.blconwd2 = (instance_create[]:int32 (var 785s) (- (int32 self.blcontweet):y 10s) (+ (int32 self.blcontweet):x 15s))
    push 1s
    stog.shake* = (int32 self.blconwd2)
    global.border = 6s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x000540:
    exit
