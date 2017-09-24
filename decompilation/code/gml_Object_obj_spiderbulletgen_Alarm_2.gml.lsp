0x000000:
    push -1s
    if !(== (int32 self.bno):btype 0s) goto 0x00004C
0x000024:
    self.ggg = (instance_create[]:int32 (var 353s) (var 0s) (var 0s))
0x00004C:
    push -1s
    if !(== (int32 self.bno):btype 1s) goto 0x000098
0x000070:
    self.ggg = (instance_create[]:int32 (var 351s) (var 0s) (var 0s))
0x000098:
    push -1s
    if !(== (int32 self.bno):btype 2s) goto 0x0000E4
0x0000BC:
    self.ggg = (instance_create[]:int32 (var 355s) (var 0s) (var 0s))
0x0000E4:
    push -1s
    if !(< (int32 self.bno):btype 3s) goto 0x0002B0
0x000108:
    push -1s
    if !(== (int32 self.bno):bchoice 0s) goto 0x000164
0x00012C:
    push (choose[]:int32 (var 3s) (var 2s) (var 1s))
    stog.choice* = (int32 self.ggg)
    goto 0x000190
0x000164:
    push -1s
    push (int32 self.bno):bchoice
    stog.choice* = (int32 self.ggg)
0x000190:
    push -1s
    if !(== (int32 self.bno):bside 2s) goto 0x0001E4
0x0001B4:
    push (choose[]:int32 (var 1s) (var 0s))
    stog.side* = (int32 self.ggg)
    goto 0x000210
0x0001E4:
    push -1s
    push (int32 self.bno):bside
    stog.side* = (int32 self.ggg)
0x000210:
    push -1s
    push (int32 self.bno):bspeed
    stog.speedfactor* = (int32 self.ggg)
    push self.dmg
    stog.dmg* = (int32 self.ggg)
    if !(bool (instance_exists[]:int32 (var 360s))) goto 0x0002B0
0x000270:
    if !(>= 360.turnamt 15s) goto 0x0002B0
0x000284:
    pushenv (int32 self.ggg) 0x0002AC
0x000294:
    self.dmg = (- self.dmg 1s)
0x0002AC:
    popenv 0x000294
0x0002B0:
    push -1s
    if !(== (int32 self.bno):btype 3s) goto 0x000608
0x0002D4:
    self.gg1 = (instance_create[]:int32 (var 353s) (var 0s) (var 0s))
    self.gg2 = (instance_create[]:int32 (var 353s) (var 0s) (var 0s))
    push -1s
    if !(== (int32 self.bno):bchoice 1s) goto 0x000378
0x000348:
    push 1s
    stog.choice* = (int32 self.gg1)
    push 2s
    stog.choice* = (int32 self.gg2)
0x000378:
    push -1s
    if !(== (int32 self.bno):bchoice 2s) goto 0x0003CC
0x00039C:
    push 1s
    stog.choice* = (int32 self.gg1)
    push 3s
    stog.choice* = (int32 self.gg2)
0x0003CC:
    push -1s
    if !(== (int32 self.bno):bchoice 3s) goto 0x000420
0x0003F0:
    push 2s
    stog.choice* = (int32 self.gg1)
    push 3s
    stog.choice* = (int32 self.gg2)
0x000420:
    push -1s
    if !(== (int32 self.bno):bside 2s) goto 0x00049C
0x000444:
    push (choose[]:int32 (var 1s) (var 0s))
    stog.side* = (int32 self.gg1)
    push (int32 self.gg1):side
    stog.side* = (int32 self.gg2)
    goto 0x0004F4
0x00049C:
    push -1s
    push (int32 self.bno):bside
    stog.side* = (int32 self.gg1)
    push -1s
    push (int32 self.bno):bside
    stog.side* = (int32 self.gg2)
0x0004F4:
    push -1s
    push (int32 self.bno):bspeed
    stog.speedfactor* = (int32 self.gg1)
    push -1s
    push (int32 self.bno):bspeed
    stog.speedfactor* = (int32 self.gg2)
    push self.dmg
    stog.dmg* = (int32 self.gg1)
    push self.dmg
    stog.dmg* = (int32 self.gg2)
    if !(bool (instance_exists[]:int32 (var 360s))) goto 0x000608
0x00059C:
    if !(>= 360.turnamt 15s) goto 0x000608
0x0005B0:
    pushenv (int32 self.gg1) 0x0005D8
0x0005C0:
    self.dmg = (- self.dmg 1s)
0x0005D8:
    popenv 0x0005C0
0x0005DC:
    pushenv (int32 self.gg2) 0x000604
0x0005EC:
    self.dmg = (- self.dmg 1s)
0x000604:
    popenv 0x0005EC
0x000608:
    push -1s
    if !(== (int32 self.bno):btime 0s) goto 0x00064C
0x00062C:
    stog.btime[(int32 self.bno)] = global.firingrate
0x00064C:
    push -1s
    stog.alarm[2s] = (int32 self.bno):btime
    self.bno = (+ self.bno 1s)
    if !(>= self.bno self.bmax) goto 0x0006B8
0x0006A4:
    stog.alarm[2s] = -1s
0x0006B8:
    exit
