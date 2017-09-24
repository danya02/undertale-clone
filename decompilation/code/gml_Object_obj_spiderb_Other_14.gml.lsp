0x000000:
    push -5s
    push (* 59s:flag 2s)
    stog.goldreward[(int32 self.myself)] = (+ -5s (* 383s:flag 2s))
    push -5s
    if !(>= (int32 self.myself):goldreward 999s) goto 0x00008C
0x000070:
    stog.goldreward[(int32 self.myself)] = 999s
0x00008C:
    pushenv (int32 self.mypart1) 0x0000A8
0x00009C:
    call (instance_destroy[]:int32 )
0x0000A8:
    popenv 0x00009C
0x0000AC:
    self.con = 95s
    stog.alarm[4s] = 50s
    call (caster_stop[]:int32 global.batmusic)
    call (scr_monsterdefeat[]:int32 )
    stog.monster[0s] = 1s
    call (instance_destroy[]:int32 )
    call (instance_create[]:int32 (var 359s) (var 230s) (var 660s))
0x000130:
    exit
