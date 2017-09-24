0x000000:
    if !(== self.green 0s) goto 0x000054
0x000014:
    stog.alarm[10s] = 10s
    pushenv 273s 0x000044
0x000030:
    call (event_user[]:int32 (var 2s))
0x000044:
    popenv 0x000030
0x000048:
    self.green = 2s
0x000054:
    exit
