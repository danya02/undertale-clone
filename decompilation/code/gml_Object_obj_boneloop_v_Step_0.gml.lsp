0x000000:
    if !(< self.vspeed 0s) goto 0x000058
0x000014:
    push self.y
    if !(< -5s (- 2s:idealborder self.sprite_height)) goto 0x000058
0x000040:
    push -5s
    self.y = 3s:idealborder
0x000058:
    if !(> self.vspeed 0s) goto 0x0000B0
0x00006C:
    push self.y
    if !(> -5s 3s:idealborder) goto 0x0000B0
0x00008C:
    push -5s
    self.y = (- 2s:idealborder self.sprite_height)
0x0000B0:
    if !(< self.hspeed 0s) goto 0x0000D8
0x0000C4:
    push (< self.x 0s)
    goto 0x0000DC
0x0000D8:
    push 0s
0x0000DC:
    if !pop goto 0x0000EC
0x0000E0:
    call (instance_destroy[]:int32 )
0x0000EC:
    if !(> self.hspeed 0s) goto 0x000118
0x000100:
    push (> self.x self.room_width)
    goto 0x00011C
0x000118:
    push 0s
0x00011C:
    if !pop goto 0x00012C
0x000120:
    call (instance_destroy[]:int32 )
0x00012C:
    exit
