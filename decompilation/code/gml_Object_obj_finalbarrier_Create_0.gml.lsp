0x000000:
    stog.u[0s] = 0s
    stog.u[1s] = 0s
    stog.u[2s] = 0s
    stog.c[0s] = 0s
    stog.c[1s] = 0s
    stog.c[2s] = 0s
    self.m = (instance_number[]:int32 self.object_index)
    self.maxm = 100s
    self.j = 0s
    stog.alarm[0s] = 1s
    self.y = (- self.y (/ (double 2000s) self.m))
    self.depth = (- 500000 self.m)
0x000100:
    exit
