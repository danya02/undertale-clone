0x000000:
    if !(> self.speed 10s) goto 0x00006C
0x000014:
    self.s_s = (instance_create[]:int32 (var 512s) (var 0s) (var 0s))
    push (floor[]:int32 (/ self.speed (double 3s)))
    stog.intensity* = (int32 self.s_s)
0x00006C:
    exit
