0x000000:
    self.choseang = (random[]:int32 (var 360s))
    if !(== self.diff 0s) goto 0x000148
0x00002C:
    self.choseangspeed = 0s
    self.i = 0s
    if (<= 36s 0) goto 0x000130
0x00005C:
    push 36s
    self.cc = (instance_create[]:int32 (var 473s) (var 0s) (var 0s))
    push (+ self.choseang (* self.i 8s))
    stog.ang* = (int32 self.cc)
    push 4s
    stog.rspeed* = (int32 self.cc)
    push 300s
    stog.r* = (int32 self.cc)
    push self.choseangspeed
    stog.angspeed* = (int32 self.cc)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x00005C
0x000130:
    push (- pop 1)
    pop
    stog.alarm[0s] = 35s
0x000148:
    if !(== self.diff 1s) goto 0x00028C
0x00015C:
    self.choseangspeed = (+ -2s (random[]:int32 (var 4s)))
    self.i = 0s
    if (<= 36s 0) goto 0x000274
0x0001A0:
    push 36s
    self.cc = (instance_create[]:int32 (var 473s) (var 0s) (var 0s))
    push (+ self.choseang (* self.i 8s))
    stog.ang* = (int32 self.cc)
    push 6s
    stog.rspeed* = (int32 self.cc)
    push 300s
    stog.r* = (int32 self.cc)
    push self.choseangspeed
    stog.angspeed* = (int32 self.cc)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0001A0
0x000274:
    push (- pop 1)
    pop
    stog.alarm[0s] = 30s
0x00028C:
    if !(== self.diff 2s) goto 0x0003D0
0x0002A0:
    self.choseangspeed = (+ -4s (random[]:int32 (var 8s)))
    self.i = 0s
    if (<= 36s 0) goto 0x0003B8
0x0002E4:
    push 36s
    self.cc = (instance_create[]:int32 (var 473s) (var 0s) (var 0s))
    push (+ self.choseang (* self.i 8s))
    stog.ang* = (int32 self.cc)
    push 4s
    stog.rspeed* = (int32 self.cc)
    push 300s
    stog.r* = (int32 self.cc)
    push self.choseangspeed
    stog.angspeed* = (int32 self.cc)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0002E4
0x0003B8:
    push (- pop 1)
    pop
    stog.alarm[0s] = 30s
0x0003D0:
    if !(== self.diff 3s) goto 0x000514
0x0003E4:
    self.choseangspeed = (+ -6s (random[]:int32 (var 12s)))
    self.i = 0s
    if (<= 33s 0) goto 0x0004FC
0x000428:
    push 33s
    self.cc = (instance_create[]:int32 (var 473s) (var 0s) (var 0s))
    push (+ self.choseang (* self.i 8s))
    stog.ang* = (int32 self.cc)
    push 6s
    stog.rspeed* = (int32 self.cc)
    push 300s
    stog.r* = (int32 self.cc)
    push self.choseangspeed
    stog.angspeed* = (int32 self.cc)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000428
0x0004FC:
    push (- pop 1)
    pop
    stog.alarm[0s] = 25s
0x000514:
    exit
