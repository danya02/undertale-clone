0x000000:
    stog.flag[10s] = 1s
    push -5s
    stog.flag[(+ 23s:flag 1s)] = 23s
    stog.monster[(int32 self.myself)] = 0s
    pushenv (int32 self.mypart1) 0x000070
0x000064:
    self.stretchup = 2s
0x000070:
    popenv 0x000064
0x000074:
    exit
