0x000000:
    self.myinteract = 0s
    self.image_speed = 0s
    self.open = 0s
    self.auto = 0s
    self.con = 0s
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x00006C
0x000050:
    push -5s
    push (== 27s:flag 0s)
    goto 0x000070
0x00006C:
    push 0s
0x000070:
    if !pop goto 0x000094
0x000074:
    if !(< global.plot 108s) goto 0x000094
0x000088:
    global.plot = 108s
0x000094:
    if !(> global.plot 107s) goto 0x0000BC
0x0000A8:
    push (== self.room 90s)
    goto 0x0000C0
0x0000BC:
    push 0s
0x0000C0:
    if !pop goto 0x0000D0
0x0000C4:
    self.auto = 1s
0x0000D0:
    if !(== self.room 102s) goto 0x000100
0x0000E4:
    push -5s
    push (== 356s:flag 1s)
    goto 0x000104
0x000100:
    push 0s
0x000104:
    if !pop goto 0x000114
0x000108:
    self.auto = 1s
0x000114:
    if !(== self.auto 1s) goto 0x000188
0x000128:
    self.open = 1s
    self.visible = 1s
    pushenv (int32 (instance_position[]:int32 (var 4s) (+ self.y 20s) (+ self.x 10s))) 0x000184
0x000178:
    call (instance_destroy[]:int32 )
0x000184:
    popenv 0x000178
0x000188:
    exit
