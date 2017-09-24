0x000000:
    if !(== global.debug 1s) goto 0x000064
0x000014:
    self.m = (instance_create[]:int32 (var 1638s) (var 200s) (+ 110s (random[]:int32 (var 400s))))
    push 1s
    stog.memorymode* = (int32 self.m)
0x000064:
    exit
