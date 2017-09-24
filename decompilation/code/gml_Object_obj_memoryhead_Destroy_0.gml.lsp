0x000000:
    stog.flag[10s] = 1s
    push -5s
    stog.flag[(+ 23s:flag 1s)] = 23s
    stog.monster[(int32 self.myself)] = 0s
    pushenv (int32 self.mypart1) 0x0000B8
0x000064:
    self.mega = 1s
    self.on = 1s
    stog.alarm[0s] = -1s
    stog.alarm[1s] = -1s
    stog.alarm[2s] = -1s
0x0000B8:
    popenv 0x000064
0x0000BC:
    exit
