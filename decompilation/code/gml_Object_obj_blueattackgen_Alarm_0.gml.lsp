0x000000:
    if !(< global.turntimer 600s) goto 0x000200
0x000014:
    self.rsize = (random[]:int32 (var 70s))
    self.rr = (floor[]:int32 (random[]:int32 (var 2s)))
    if !(== self.rr 0s) goto 0x000110
0x000060:
    push (var 651s)
    push -5s
    self.bb = (instance_create[]:int32 (- 3s:idealborder (+ 40s self.rsize)) -5s (+ 1s:idealborder 20s))
    push (- -3s (random[]:int32 (var 3s)))
    stog.hspeed* = (int32 self.bb)
    push 1s
    stog.blue* = (int32 self.bb)
    push 1s
    stog.dmg* = (int32 self.bb)
0x000110:
    if !(== self.rr 1s) goto 0x0001D4
0x000124:
    push (var 652s)
    push -5s
    self.bb = (instance_create[]:int32 (+ 2s:idealborder (+ 40s self.rsize)) -5s (+ 1s:idealborder 20s))
    push (- -3s (random[]:int32 (var 3s)))
    stog.hspeed* = (int32 self.bb)
    push 1s
    stog.blue* = (int32 self.bb)
    push 1s
    stog.dmg* = (int32 self.bb)
0x0001D4:
    stog.alarm[0s] = (+ 5s (random[]:int32 (var 20s)))
    goto 0x000214
0x000200:
    stog.alarm[1s] = 20s
0x000214:
    global.turntimer = (+ global.turntimer 37s)
0x00022C:
    exit
