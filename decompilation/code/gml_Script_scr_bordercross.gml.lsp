0x000000:
    if !(< self.hspeed 0s) goto 0x000040
0x000014:
    push self.x
    push (< -5s (- 0s:idealborder self.argument0))
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000054
0x000048:
    call (instance_destroy[]:int32 )
0x000054:
    if !(> self.hspeed 0s) goto 0x000094
0x000068:
    push self.x
    push (> -5s (+ 1s:idealborder self.argument0))
    goto 0x000098
0x000094:
    push 0s
0x000098:
    if !pop goto 0x0000A8
0x00009C:
    call (instance_destroy[]:int32 )
0x0000A8:
    if !(< self.vspeed 0s) goto 0x0000E8
0x0000BC:
    push self.y
    push (< -5s (- 2s:idealborder self.argument0))
    goto 0x0000EC
0x0000E8:
    push 0s
0x0000EC:
    if !pop goto 0x0000FC
0x0000F0:
    call (instance_destroy[]:int32 )
0x0000FC:
    if !(> self.vspeed 0s) goto 0x00013C
0x000110:
    push self.y
    push (> -5s (+ 3s:idealborder self.argument0))
    goto 0x000140
0x00013C:
    push 0s
0x000140:
    if !pop goto 0x000150
0x000144:
    call (instance_destroy[]:int32 )
0x000150:
    exit
