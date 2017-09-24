0x000000:
    if !(== self.green 0s) goto 0x00005C
0x000014:
    stog.alarm[10s] = 10s
    pushenv (int32 self.mypart1) 0x00004C
0x000038:
    call (event_user[]:int32 (var 1s))
0x00004C:
    popenv 0x000038
0x000050:
    self.green = 2s
0x00005C:
    exit
