0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) self.ystart (- (+ self.x self.sprite_width) 8s))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x000084
0x000070:
    push (< self.mycommand 30s)
    goto 0x000088
0x000084:
    push 0s
0x000088:
    if !pop goto 0x0000A4
0x00008C:
    stog.msg[0s] = "I'm&sorry..."
0x0000A4:
    if !(>= self.mycommand 30s) goto 0x0000CC
0x0000B8:
    push (< self.mycommand 50s)
    goto 0x0000D0
0x0000CC:
    push 0s
0x0000D0:
    if !pop goto 0x0000EC
0x0000D4:
    stog.msg[0s] = "I have&no&choice.."
0x0000EC:
    if !(>= self.mycommand 50s) goto 0x000114
0x000100:
    push (< self.mycommand 80s)
    goto 0x000118
0x000114:
    push 0s
0x000118:
    if !pop goto 0x000134
0x00011C:
    stog.msg[0s] = "Forgive&me..."
0x000134:
    if !(>= self.mycommand 80s) goto 0x00015C
0x000148:
    push (<= self.mycommand 100s)
    goto 0x000160
0x00015C:
    push 0s
0x000160:
    if !pop goto 0x00017C
0x000164:
    stog.msg[0s] = "*sniff&sniff*"
0x00017C:
    if (== self.whatiheard 1s) goto 0x0001A4
0x000190:
    push (== self.whatiheard 3s)
    goto 0x0001A8
0x0001A4:
    push 1s
0x0001A8:
    if !pop goto 0x0001C4
0x0001AC:
    stog.msg[0s] = "I&can't&handle&this..."
0x0001C4:
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
0x0002D4:
    exit
