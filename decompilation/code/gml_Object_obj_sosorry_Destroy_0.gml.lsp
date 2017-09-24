0x000000:
    if !(== self.killed 0s) goto 0x000080
0x000014:
    stog.flag[281s] = 2s
    push -5s
    stog.goldreward[(+ 3s:goldreward 100s)] = 3s
    self.x = (+ self.x 19s)
    self.y = (- self.y 24s)
    goto 0x000094
0x000080:
    stog.flag[281s] = 1s
0x000094:
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    pushenv (int32 self.mypart1) 0x0000E4
0x0000D8:
    call (instance_destroy[]:int32 )
0x0000E4:
    popenv 0x0000D8
0x0000E8:
    exit
