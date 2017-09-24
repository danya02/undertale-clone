0x000000:
    call (draw_self_border[]:int32 )
    push self.x
    if !(< -5s (- 0s:idealborder 100s)) goto 0x000048
0x000034:
    push (< self.hspeed 0s)
    goto 0x00004C
0x000048:
    push 0s
0x00004C:
    if !pop goto 0x00005C
0x000050:
    call (instance_destroy[]:int32 )
0x00005C:
    push self.x
    if !(> -5s (+ 1s:idealborder 100s)) goto 0x000098
0x000084:
    push (> self.hspeed 0s)
    goto 0x00009C
0x000098:
    push 0s
0x00009C:
    if !pop goto 0x0000AC
0x0000A0:
    call (instance_destroy[]:int32 )
0x0000AC:
    if !(bool (instance_exists[]:int32 (var 638s))) goto 0x0001F4
0x0000C4:
    push self.x
    if !(< -5s 1s:idealborder) goto 0x0001F4
0x0000E4:
    if !(== 1569.up 1s) goto 0x000140
0x0000F8:
    if !(== self.movinged 0s) goto 0x000140
0x00010C:
    if !(< 743.x (+ 638.x 20s)) goto 0x000140
0x00012C:
    push (> 743.y 50s)
    goto 0x000144
0x000140:
    push 0s
0x000144:
    if !pop goto 0x0001F4
0x000148:
    global.border = 51s
    if !(< 743.y 270s) goto 0x0001A4
0x000168:
    stog.idealborder[2s] = (* (round[]:int32 (/ (- 743.y 20s) (double 5s))) 5s)
0x0001A4:
    pushenv 637s 0x0001B8
0x0001AC:
    self.movinged = 1s
0x0001B8:
    popenv 0x0001AC
0x0001BC:
    if !(>= 743.vspeed -2s) goto 0x0001F4
0x0001D0:
    if !(> 743.yprevious 743.y) goto 0x0001F4
0x0001E8:
    [obj_heart].vspeed = -2s
0x0001F4:
    self.movinged = 0s
    if !(< global.invc 2s) goto 0x000244
0x000214:
    push (< (abs[]:int32 (- (+ 743.x 25s) self.x)) 50s)
    goto 0x000248
0x000244:
    push 0s
0x000248:
    if !pop goto 0x0002D0
0x00024C:
    push (var 1s)
    if !(bool (collision_rectangle[]:int32 (var 0s) (var 743s) -5s (- 3s:idealborder 10s) (+ self.x 55s) (+ self.y 10s) (+ self.x 5s))) goto 0x0002D0
0x0002BC:
    call (event_user[]:int32 (var 1s))
0x0002D0:
    exit
