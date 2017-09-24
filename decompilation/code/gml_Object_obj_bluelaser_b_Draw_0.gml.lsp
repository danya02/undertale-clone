0x000000:
    if !(== self.blue 1s) goto 0x00002C
0x000014:
    call (draw_set_color[]:int32 (var 16754964))
0x00002C:
    if !(== self.blue 2s) goto 0x000058
0x000040:
    call (draw_set_color[]:int32 (var 4235519))
0x000058:
    push self.x
    if !(<= -5s 1s:idealborder) goto 0x000098
0x000078:
    push self.x
    push (> -5s 0s:idealborder)
    goto 0x00009C
0x000098:
    push 0s
0x00009C:
    if !pop goto 0x0000F4
0x0000A0:
    push (var 0s)
    push -5s
    call (draw_rectangle[]:int32 3s:idealborder (+ self.x 5s) -5s (+ 2s:idealborder 2s) self.x)
0x0000F4:
    push (var 1s)
    push (var 0s)
    if !(bool (collision_rectangle[]:int32 (var 748s) -5s 3s:idealborder (+ self.x 5s) -5s (+ 2s:idealborder 2s) self.x)) goto 0x000170
0x00015C:
    call (event_user[]:int32 (var 0s))
0x000170:
    push (var 1s)
    push (var 0s)
    if !(bool (collision_rectangle[]:int32 (var 743s) -5s 3s:idealborder (+ self.x 5s) -5s (+ 2s:idealborder 2s) self.x)) goto 0x0001EC
0x0001D8:
    call (event_user[]:int32 (var 0s))
0x0001EC:
    if !(< global.turntimer 2s) goto 0x00020C
0x000200:
    call (instance_destroy[]:int32 )
0x00020C:
    exit
