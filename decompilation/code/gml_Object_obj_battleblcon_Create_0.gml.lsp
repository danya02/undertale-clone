0x000000:
    self.depth = 1570.depth
    call (snd_play[]:int32 (var 29s))
    stog.alarm[0s] = (+ 15s (random[]:int32 (var 5s)))
    global.interact = 3s
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x000088
0x00006C:
    push -5s
    push (== 27s:flag 0s)
    goto 0x00008C
0x000088:
    push 0s
0x00008C:
    if !pop goto 0x00009C
0x000090:
    self.sprite_index = 1053s
0x00009C:
    call (action_move_to[]:int32 (- 1570.y 11s) 1570.x)
0x0000C0:
    exit
