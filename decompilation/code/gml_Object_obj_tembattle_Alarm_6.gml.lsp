0x000000:
    if !(== self.whatiheard 7s) goto 0x00011C
0x000014:
    self.talked = 0s
    self.whatiheard = -1s
    global.mnfight = 2s
    global.border = 7s
    stog.alarm[5s] = -2s
    if !(bool (instance_exists[]:int32 (var 671s))) goto 0x000088
0x000070:
    pushenv 671s 0x000084
0x000078:
    call (instance_destroy[]:int32 )
0x000084:
    popenv 0x000078
0x000088:
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
    goto 0x000490
0x00011C:
    self.blcon = (instance_create[]:int32 (var 186s) (- self.y 25s) (+ self.x 95s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x0001C0
0x0001A8:
    stog.msg[0s] = "awwAwa&cute!!&(pets u)"
0x0001C0:
    if !(> self.mycommand 25s) goto 0x0001E8
0x0001D4:
    push (< self.mycommand 50s)
    goto 0x0001EC
0x0001E8:
    push 0s
0x0001EC:
    if !pop goto 0x000234
0x0001F0:
    stog.msg[0s] = "OMG!!&humans&TOO CUTE&(dies)"
    pushenv (int32 self.mypart1) 0x000224
0x000218:
    call (instance_destroy[]:int32 )
0x000224:
    popenv 0x000218
0x000228:
    self.image_index = 1s
0x000234:
    if !(>= self.mycommand 50s) goto 0x000260
0x000248:
    stog.msg[0s] = "hOI!!!&i'm&TEMMIE!!"
0x000260:
    if !(>= self.mycommand 75s) goto 0x00028C
0x000274:
    stog.msg[0s] = "fhsdhjf&dsfjsd&dshjfsd"
0x00028C:
    if !(== self.whatiheard 3s) goto 0x0002B8
0x0002A0:
    stog.msg[0s] = "NO!!!!!&muscles&......&NOT CUTE"
0x0002B8:
    if !(== self.whatiheard 1s) goto 0x000310
0x0002CC:
    stog.msg[0s] = "NO!!!&so&hungr...&(dies)"
    pushenv (int32 self.mypart1) 0x000300
0x0002F4:
    call (instance_destroy[]:int32 )
0x000300:
    popenv 0x0002F4
0x000304:
    self.image_index = 1s
0x000310:
    if !(== self.whatiheard 4s) goto 0x00033C
0x000324:
    stog.msg[0s] = "hOI!!!&i'm&tEMMIE!!"
0x00033C:
    if !(== self.whatiheard 6s) goto 0x000374
0x000350:
    stog.msg[0s] = "FOOB!!!"
    self.mercymod = 300s
0x000374:
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
    global.heard = 0s
0x000490:
    exit
