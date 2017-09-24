0x000000:
    push 100s
    stog.goldreward[(int32 self.myself)] = (+ -5s (round[]:int32 (/ 382s:flag (double 2s))))
    push -5s
    if !(>= (int32 self.myself):goldreward 999s) goto 0x000084
0x000068:
    stog.goldreward[(int32 self.myself)] = 999s
0x000084:
    push -5s
    push 59s
    stog.flag[59s:flag] = (+ -5s (round[]:int32 (/ 382s:flag (double 2s))))
    pushenv (int32 self.mypart1) 0x0000E4
0x0000D8:
    call (instance_destroy[]:int32 )
0x0000E4:
    popenv 0x0000D8
0x0000E8:
    call (caster_stop[]:int32 global.batmusic)
    stog.flag[27s] = 1s
    call (scr_monsterdefeat[]:int32 )
    stog.monster[0s] = 0s
    call (instance_destroy[]:int32 )
0x00013C:
    exit
