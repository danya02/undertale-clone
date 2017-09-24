0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x 95s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(== self.sad 0s) goto 0x00014C
0x000084:
    stog.msg[0s] = "Ha ha&hee hee&ho ho&huu huu!"
    if !(< self.mycommand 75s) goto 0x0000C8
0x0000B0:
    stog.msg[0s] = "Honk!&HOOONK!"
0x0000C8:
    if !(< self.mycommand 50s) goto 0x0000F4
0x0000DC:
    stog.msg[0s] = "(Mime&noises)"
0x0000F4:
    if !(< self.mycommand 25s) goto 0x000120
0x000108:
    stog.msg[0s] = "They're&coming."
0x000120:
    if !(== self.whatiheard 3s) goto 0x00014C
0x000134:
    stog.msg[0s] = "I love&to&laugh!"
0x00014C:
    if !(== self.sad 1s) goto 0x000228
0x000160:
    stog.msg[0s] = "Send in&the&clowns."
    if !(< self.mycommand 75s) goto 0x0001A4
0x00018C:
    stog.msg[0s] = "Everyone&has&gone."
0x0001A4:
    if !(< self.mycommand 50s) goto 0x0001D0
0x0001B8:
    stog.msg[0s] = "They&cannot&worry&for me."
0x0001D0:
    if !(< self.mycommand 25s) goto 0x0001FC
0x0001E4:
    stog.msg[0s] = "Don't&let them&see me&this way."
0x0001FC:
    if !(== self.whatiheard 3s) goto 0x000228
0x000210:
    stog.msg[0s] = "Laughter&hides&the&pain."
0x000228:
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
0x000338:
    exit
