0x000000:
    push (var 339s)
    push -5s
    self.g = (instance_create[]:int32 (- 2s:idealborder 100s) -5s (+ 1s:idealborder 10s))
    if !(bool (instance_exists[]:int32 self.g)) goto 0x00007C
0x000060:
    push self.dmg
    stog.dmg* = (int32 self.g)
0x00007C:
    stog.alarm[0s] = 24s
0x000090:
    exit
