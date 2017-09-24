0x000000:
    push -5s
    if (== 8s:flag 1s) goto 0x000038
0x00001C:
    push -5s
    push (== 7s:flag 1s)
    goto 0x00003C
0x000038:
    push 1s
0x00003C:
    if !pop goto 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    stog.flag[15s] = 1s
    self.alldead = 0s
    global.encounter = 0s
    self.factor = 240s
    self.desto = 0s
    push -5s
    if !(< 423s:flag 2s) goto 0x0000C8
0x0000AC:
    push -5s
    push (< 426s:flag 4s)
    goto 0x0000CC
0x0000C8:
    push 0s
0x0000CC:
    if !pop goto 0x0000DC
0x0000D0:
    self.factor = 80s
0x0000DC:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0000FC
0x0000F0:
    self.factor = 70s
0x0000FC:
    call (script_execute[]:int32 (var 205s) (var 40s) (var 50s) self.factor (var 101s))
    if !(== (scr_enemynpc3[]:int32 ) 1s) goto 0x000150
0x000144:
    call (instance_destroy[]:int32 )
0x000150:
    exit
