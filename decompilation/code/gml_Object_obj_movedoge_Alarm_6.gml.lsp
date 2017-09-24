0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y 52s) (+ self.x 145s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(== self.mercymod -25s) goto 0x0000A0
0x00008C:
    push (== (scr_monstersum[]:int32 ) 1s)
    goto 0x0000A4
0x0000A0:
    push 0s
0x0000A4:
    if !pop goto 0x0000B4
0x0000A8:
    self.mercymod = 0s
0x0000B4:
    stog.msg[0s] = "Don't&move an&inch!"
    if !(== self.excited 1s) goto 0x0000F8
0x0000E0:
    stog.msg[0s] = "It moved&!! It&didn't&NOT move!"
0x0000F8:
    if !(>= global.turn 1s) goto 0x000120
0x00010C:
    push (== self.excited 0s)
    goto 0x000124
0x000120:
    push 0s
0x000124:
    if !pop goto 0x000140
0x000128:
    stog.msg[0s] = "Will it&move&this&time?"
0x000140:
    if !(> self.mercymod 100s) goto 0x000168
0x000154:
    push (< self.mercymod 800s)
    goto 0x00016C
0x000168:
    push 0s
0x00016C:
    if !pop goto 0x0001C8
0x000170:
    stog.msg[0s] = "HUH!!!&A FUN&STICK&APPEARS!"
    push 30000s
    push (int32 self.mypart1)
    stog.alarm[] = 0s
    self.mercymod = 101s
    push 1s
    stog.excited* = (int32 self.mypart1)
0x0001C8:
    if !(== self.mercymod 1000s) goto 0x000310
0x0001DC:
    stog.msg[0s] = "WHAT!!!&I'VE&BEEN&PET!!!"
    if !(== self.pets 2s) goto 0x000220
0x000208:
    stog.msg[0s] = "WHERE'S&THAT&COMING&FROM!"
0x000220:
    if !(== self.pets 3s) goto 0x00024C
0x000234:
    stog.msg[0s] = "THERE'S&NO END&TO IT!!"
0x00024C:
    if !(== self.pets 4s) goto 0x000278
0x000260:
    stog.msg[0s] = "WELL,&THIS IS&THOROUGH&!!!"
0x000278:
    self.mercymod = 999s
    stog.monsterdef[(int32 self.myself)] = -90s
    if !(== self.pets 4s) goto 0x0002D4
0x0002B4:
    push (== (int32 self.mypart1):excited 0s)
    goto 0x0002D8
0x0002D4:
    push 0s
0x0002D8:
    if !pop goto 0x000310
0x0002DC:
    stog.msg[0s] = "OK.&That's&enough."
    stog.monsterdef[(int32 self.myself)] = 0s
0x000310:
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
0x000420:
    exit
