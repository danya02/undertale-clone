0x000000:
    if !(> self.hspeed 0s) goto 0x00003C
0x000014:
    push self.x
    push (> -5s (+ 1s:idealborder 20s))
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x000058
0x000044:
    call (event_user[]:int32 (var 0s))
0x000058:
    if !(< self.hspeed 0s) goto 0x000094
0x00006C:
    push self.x
    push (< -5s (- 0s:idealborder 100s))
    goto 0x000098
0x000094:
    push 0s
0x000098:
    if !pop goto 0x0000B0
0x00009C:
    call (event_user[]:int32 (var 0s))
0x0000B0:
    if !(< self.vspeed 0s) goto 0x0000EC
0x0000C4:
    push self.y
    push (< -5s (- 2s:idealborder 100s))
    goto 0x0000F0
0x0000EC:
    push 0s
0x0000F0:
    if !pop goto 0x000108
0x0000F4:
    call (event_user[]:int32 (var 0s))
0x000108:
    if !(> self.vspeed 0s) goto 0x000144
0x00011C:
    push self.y
    push (> -5s (+ 3s:idealborder 20s))
    goto 0x000148
0x000144:
    push 0s
0x000148:
    if !pop goto 0x000160
0x00014C:
    call (event_user[]:int32 (var 0s))
0x000160:
    if !(< self.image_alpha 1s) goto 0x000194
0x000174:
    self.image_alpha = (+ self.image_alpha 0.2d)
0x000194:
    exit
