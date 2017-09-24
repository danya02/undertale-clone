0x000000:
    self.shudder = 32s
    if !(== self.tvmode 0s) goto 0x000124
0x000020:
    self.sh = (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    push 6s
    stog.shakex* = (int32 self.sh)
    push 6s
    stog.shakey* = (int32 self.sh)
    self.tt = (choose[]:int32 (var 35s) (var 28s) (var 27s) (var 22s) (var 20s) (var 14s) (var 13s) (var 12s) (var 5s) (var 4s))
    self.tvmode = 4s
    stog.alarm[3s] = 15s
    stog.alarm[2s] = 40s
    pushenv 1586s 0x000120
0x000114:
    self.frozen = 2s
0x000120:
    popenv 0x000114
0x000124:
    exit
