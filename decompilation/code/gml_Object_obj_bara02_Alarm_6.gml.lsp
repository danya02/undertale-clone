0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (+ (+ self.y 55s) 32s) (+ (- self.x self.blconx) 40s))
    push 20s
    stog.sprite_index* = (int32 self.blcon)
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.attacked = 0s
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x0000D8
0x0000C4:
    push (< self.mycommand 25s)
    goto 0x0000DC
0x0000D8:
    push 0s
0x0000DC:
    if !pop goto 0x0000F8
0x0000E0:
    stog.msg[0s] = "...&...&...&sigh."
0x0000F8:
    if !(>= self.mycommand 25s) goto 0x000124
0x00010C:
    stog.msg[0s] = "...&...&heh."
0x000124:
    if !(>= self.mycommand 50s) goto 0x000150
0x000138:
    stog.msg[0s] = "...&...&what?"
0x000150:
    if !(>= self.mycommand 75s) goto 0x00017C
0x000164:
    stog.msg[0s] = "...&...&hmph."
0x00017C:
    if !(== self.turn0 0s) goto 0x0001A8
0x000190:
    stog.msg[0s] = "...&team&attack."
0x0001A8:
    self.turn0 = 1s
    if !(== self.whatiheard 3s) goto 0x0001E0
0x0001C8:
    stog.msg[0s] = "...&i&won't&tell."
0x0001E0:
    if !(== self.whatiheard 1s) goto 0x000238
0x0001F4:
    stog.msg[0s] = "...&getting&...&warmer."
    if !(== self.shirtless 1s) goto 0x000238
0x000220:
    stog.msg[0s] = "...&hello."
0x000238:
    self.pop = (scr_monstersum[]:int32 )
    if !(< self.pop 2s) goto 0x0003D4
0x00025C:
    if !(>= self.mycommand 0s) goto 0x000284
0x000270:
    push (< self.mycommand 25s)
    goto 0x000288
0x000284:
    push 0s
0x000288:
    if !pop goto 0x0002A4
0x00028C:
    stog.msg[0s] = "..."
0x0002A4:
    if !(>= self.mycommand 25s) goto 0x0002D0
0x0002B8:
    stog.msg[0s] = "..."
0x0002D0:
    if !(>= self.mycommand 50s) goto 0x0002FC
0x0002E4:
    stog.msg[0s] = "..."
0x0002FC:
    if !(>= self.mycommand 75s) goto 0x000328
0x000310:
    stog.msg[0s] = "..."
0x000328:
    if !(== self.freshdeath 0s) goto 0x000350
0x00033C:
    push (< self.mercymod 1s)
    goto 0x000354
0x000350:
    push 0s
0x000354:
    if !pop goto 0x000370
0x000358:
    stog.msg[0s] = "01...&you...!&..!!!!"
0x000370:
    if !(== self.freshdeath 0s) goto 0x000398
0x000384:
    push (> self.mercymod 100s)
    goto 0x00039C
0x000398:
    push 0s
0x00039C:
    if !pop goto 0x0003B8
0x0003A0:
    stog.msg[0s] = "01...!?&What&the...!?"
0x0003B8:
    self.freshdeath = 1s
    self.mercymod = -99999
0x0003D4:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.border = 15s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x0004E4:
    exit
