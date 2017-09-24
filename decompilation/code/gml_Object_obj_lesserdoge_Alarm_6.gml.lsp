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
    push (< self.mycommand 25s)
    goto 0x0000D0
0x0000CC:
    push 0s
0x0000D0:
    if !pop goto 0x0000EC
0x0000D4:
    stog.msg[0s] = "(Pant&pant)"
0x0000EC:
    if !(>= self.mycommand 25s) goto 0x000114
0x000100:
    push (< self.mycommand 50s)
    goto 0x000118
0x000114:
    push 0s
0x000118:
    if !pop goto 0x000134
0x00011C:
    stog.msg[0s] = "(Wag&wag)"
0x000134:
    if !(>= self.mycommand 50s) goto 0x00015C
0x000148:
    push (<= self.mycommand 75s)
    goto 0x000160
0x00015C:
    push 0s
0x000160:
    if !pop goto 0x00017C
0x000164:
    stog.msg[0s] = "(Thinks&of&food)"
0x00017C:
    if !(>= self.mycommand 75s) goto 0x0001A4
0x000190:
    push (<= self.mycommand 100s)
    goto 0x0001A8
0x0001A4:
    push 0s
0x0001A8:
    if !pop goto 0x0001C4
0x0001AC:
    stog.msg[0s] = "(Tiny&bark)"
0x0001C4:
    if !(== self.mercymod 102s) goto 0x0001FC
0x0001D8:
    self.mercymod = 103s
    stog.msg[0s] = "(Pants&fast)"
0x0001FC:
    if !(> self.mercymod 10s) goto 0x00022C
0x000210:
    stog.monsterdef[(int32 self.myself)] = -100s
0x00022C:
    if !(> self.mercymod 90s) goto 0x000258
0x000240:
    stog.msg[0s] = "(Pant!&Pant!)"
0x000258:
    if !(> self.mercymod 190s) goto 0x000284
0x00026C:
    stog.msg[0s] = "(Excited&noises)"
0x000284:
    if !(> self.mercymod 340s) goto 0x0002B0
0x000298:
    stog.msg[0s] = "(Motor&revving)"
0x0002B0:
    if !(> self.mercymod 390s) goto 0x0002DC
0x0002C4:
    stog.msg[0s] = "(Plane&takeoff)"
0x0002DC:
    if !(> self.mercymod 440s) goto 0x000308
0x0002F0:
    stog.msg[0s] = "(Kettle&whistle)"
0x000308:
    if !(> self.mercymod 490s) goto 0x000334
0x00031C:
    stog.msg[0s] = "(...)"
0x000334:
    if !(> self.mercymod 540s) goto 0x000360
0x000348:
    stog.msg[0s] = "(Faraway&bark)"
0x000360:
    if !(> self.mercymod 590s) goto 0x00038C
0x000374:
    stog.msg[0s] = "(...)"
0x00038C:
    if !(> self.mercymod 640s) goto 0x0003B8
0x0003A0:
    stog.msg[0s] = "(Bark)"
0x0003B8:
    if !(> self.mercymod 690s) goto 0x0003E4
0x0003CC:
    stog.msg[0s] = "(Pant&pant)"
0x0003E4:
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
0x0004F4:
    exit
