0x000000:
    push -5s
    if !(== 47s:flag -1s) goto 0x000034
0x00001C:
    call (caster_free[]:int32 global.currentsong2)
    exit
0x000034:
    push -5s
    if !(> 47s:flag 0s) goto 0x000078
0x000050:
    if !(== self.played 0s) goto 0x000078
0x000064:
    push (> 1570.x 660s)
    goto 0x00007C
0x000078:
    push 0s
0x00007C:
    if !pop goto 0x0000C0
0x000080:
    call (caster_loop[]:int32 (var 1.58d) (var 0.2d) global.currentsong2)
    self.played = 1s
0x0000C0:
    push -5s
    if !(> 47s:flag 0s) goto 0x000104
0x0000DC:
    if !(== self.played 1s) goto 0x000104
0x0000F0:
    push (> 1570.x 1350s)
    goto 0x000108
0x000104:
    push 0s
0x000108:
    if !pop goto 0x00014C
0x00010C:
    call (caster_loop[]:int32 (var 1.68d) (var 0.2d) global.currentsong2)
    self.played = 2s
0x00014C:
    push -5s
    if !(> 47s:flag 2s) goto 0x000190
0x000168:
    if !(== self.played 2s) goto 0x000190
0x00017C:
    push (> 1570.x 1600s)
    goto 0x000194
0x000190:
    push 0s
0x000194:
    if !pop goto 0x0001DC
0x000198:
    self.ex2 = (caster_loop[]:int32 (var 2.12d) (var 0.1d) global.currentsong2)
    self.played = 3s
0x0001DC:
    stog.alarm[0s] = 5s
    push -5s
    if !(> 47s:flag 2s) goto 0x000234
0x00020C:
    if !(== self.played 3s) goto 0x000234
0x000220:
    push (> 1570.x 1610s)
    goto 0x000238
0x000234:
    push 0s
0x000238:
    if !pop goto 0x0002D0
0x00023C:
    stog.alarm[0s] = 3s
    call (caster_set_volume[]:int32 (+ 0.2d (/ (- 1570.x 1610s) (double 860s))) global.currentsong2)
    call (caster_set_volume[]:int32 (+ 0.1d (/ (- 1570.x 1610s) (double 860s))) self.ex2)
0x0002D0:
    exit
