0x000000:
    call (draw_self_border[]:int32 )
    push self.x
    if !(< -5s (+ 1s:idealborder 40s)) goto 0x000098
0x000034:
    push self.x
    if !(> -5s (+ 1s:idealborder 10s)) goto 0x000098
0x00005C:
    push 743.x
    if !(> -5s (- 1s:idealborder 60s)) goto 0x000098
0x000084:
    push (== self.appear 0s)
    goto 0x00009C
0x000098:
    push 0s
0x00009C:
    if !pop goto 0x0000BC
0x0000A0:
    self.appear = 1s
    self.y = 743.y
0x0000BC:
    push self.x
    if !(< -5s (+ 0s:idealborder 20s)) goto 0x0000F8
0x0000E4:
    push (< self.hspeed 0s)
    goto 0x0000FC
0x0000F8:
    push 0s
0x0000FC:
    if !pop goto 0x00010C
0x000100:
    global.border = 5s
0x00010C:
    push self.x
    if !(< -5s (- 0s:idealborder 40s)) goto 0x000148
0x000134:
    push (< self.hspeed 0s)
    goto 0x00014C
0x000148:
    push 0s
0x00014C:
    if !pop goto 0x00015C
0x000150:
    call (instance_destroy[]:int32 )
0x00015C:
    push self.x
    if !(> -5s (+ 1s:idealborder 100s)) goto 0x000198
0x000184:
    push (> self.hspeed 0s)
    goto 0x00019C
0x000198:
    push 0s
0x00019C:
    if !pop goto 0x0001AC
0x0001A0:
    call (instance_destroy[]:int32 )
0x0001AC:
    if !(< global.invc 2s) goto 0x0001F0
0x0001C0:
    push (< (abs[]:int32 (- (+ 743.x 30s) self.x)) 80s)
    goto 0x0001F4
0x0001F0:
    push 0s
0x0001F4:
    if !pop goto 0x000254
0x0001F8:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x000254
0x000240:
    call (event_user[]:int32 (var 1s))
0x000254:
    exit
