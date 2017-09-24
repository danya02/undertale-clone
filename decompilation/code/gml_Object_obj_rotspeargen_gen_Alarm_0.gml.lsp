0x000000:
    if !(== self.type 0s) goto 0x0000AC
0x000014:
    self.g = (instance_create[]:int32 (var 277s) (+ 743.y 8s) (+ 743.x 8s))
    push self.t
    stog.type* = (int32 self.g)
    if !(== self.t 0s) goto 0x00008C
0x00007C:
    self.t = 1s
    goto 0x000098
0x00008C:
    self.t = 0s
0x000098:
    stog.alarm[0s] = 27s
0x0000AC:
    if !(== self.type 1s) goto 0x000148
0x0000C0:
    self.t = (choose[]:int32 (var 3s) (var 2s))
    self.g = (instance_create[]:int32 (var 277s) (+ 743.y 8s) (+ 743.x 8s))
    push self.t
    stog.type* = (int32 self.g)
    stog.alarm[0s] = 24s
0x000148:
    exit
