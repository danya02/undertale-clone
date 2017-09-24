0x000000:
    self.siner = 0s
    push -5s
    if !(== 370s:flag 1s) goto 0x00006C
0x000028:
    self.firingspeed = 3s
    stog.alarm[0s] = 1s
    self.dmg = 9s
    self.siner = 0s
    global.turntimer = 45s
0x00006C:
    push -5s
    if (== 370s:flag 2s) goto 0x0000A4
0x000088:
    push -5s
    push (== 370s:flag 3s)
    goto 0x0000A8
0x0000A4:
    push 1s
0x0000A8:
    if !pop goto 0x0001A8
0x0000AC:
    global.turntimer = 55s
    self.i = 0s
    if !(< self.i 3s) goto 0x0001A8
0x0000D8:
    push -5s
    [obj_fakeheart].x = (+ 0s:idealborder 50s)
    self.b = (choose[]:int32 (var 2s) (var 1s))
    push (var 677s)
    self.bb = (instance_create[]:int32 -5s 2s:idealborder (+ 550s (* self.i 100s)))
    push self.b
    stog.blue* = (int32 self.bb)
    push -12s
    stog.hspeed* = (int32 self.bb)
    self.i = (+ self.i 1s)
    goto 0x0000C4
0x0001A8:
    exit
