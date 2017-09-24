0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.ystart 8s) (- (+ self.x self.sprite_width) 8s))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(== global.turn 0s) goto 0x000084
0x000078:
    self.mycommand = 10s
0x000084:
    if !(== global.turn 1s) goto 0x0000A4
0x000098:
    self.mycommand = 90s
0x0000A4:
    if !(>= self.mycommand 0s) goto 0x0000CC
0x0000B8:
    push (< self.mycommand 33s)
    goto 0x0000D0
0x0000CC:
    push 0s
0x0000D0:
    if !pop goto 0x0000EC
0x0000D4:
    stog.msg[0s] = "You're&rather&slow."
0x0000EC:
    if !(>= self.mycommand 33s) goto 0x000114
0x000100:
    push (< self.mycommand 66s)
    goto 0x000118
0x000114:
    push 0s
0x000118:
    if !pop goto 0x000134
0x00011C:
    stog.msg[0s] = "Come on,&let's go."
0x000134:
    if !(>= self.mycommand 66s) goto 0x00015C
0x000148:
    push (<= self.mycommand 100s)
    goto 0x000160
0x00015C:
    push 0s
0x000160:
    if !pop goto 0x00017C
0x000164:
    stog.msg[0s] = "Hurry&up..."
0x00017C:
    if !(== global.turn 3s) goto 0x0001A8
0x000190:
    stog.msg[0s] = "Want to&go on&a walk?"
0x0001A8:
    if !(== self.whatiheard 2s) goto 0x0001D0
0x0001BC:
    push (== self.mercymod 21s)
    goto 0x0001D4
0x0001D0:
    push 0s
0x0001D4:
    if !pop goto 0x0001F0
0x0001D8:
    stog.msg[0s] = "Pet...&me..."
0x0001F0:
    if !(== self.whatiheard 2s) goto 0x000218
0x000204:
    push (== self.mercymod 20s)
    goto 0x00021C
0x000218:
    push 0s
0x00021C:
    if !pop goto 0x000244
0x000220:
    stog.msg[0s] = "Oh boy!&Oh boy!&Oh boy!&Oh boy!"
    self.mercymod = 21s
0x000244:
    if !(== self.whatiheard 5s) goto 0x00026C
0x000258:
    push (== self.mercymod 100s)
    goto 0x000270
0x00026C:
    push 0s
0x000270:
    if !pop goto 0x0002A8
0x000274:
    stog.msg[0s] = "Ahhhh,&humans&are&nice."
    stog.monsterdef[(int32 self.myself)] = -30s
0x0002A8:
    if !(== self.mercymod 102s) goto 0x0002E0
0x0002BC:
    self.mercymod = 103s
    stog.msg[0s] = "Hey!!&That&was&fun!!"
0x0002E0:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.border = 6s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x0003F0:
    exit
