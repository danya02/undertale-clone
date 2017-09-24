0x000000:
    if !(== self.active 1s) goto 0x0002A0
0x000014:
    self.onoff = (+ self.onoff 1s)
    if !(> self.onoff 2s) goto 0x00004C
0x000040:
    self.onoff = 0s
0x00004C:
    if !(== self.onoff 0s) goto 0x000074
0x000060:
    call (draw_set_color[]:int32 (var 255s))
0x000074:
    if !(== self.onoff 1s) goto 0x0000A0
0x000088:
    call (draw_set_color[]:int32 (var 4235519))
0x0000A0:
    if !(== self.onoff 2s) goto 0x0000CC
0x0000B4:
    call (draw_set_color[]:int32 (var 65535))
0x0000CC:
    self.xxl = (lengthdir_x[]:int32 self.direction (var 600s))
    self.yyl = (lengthdir_y[]:int32 self.direction (var 600s))
    call (draw_line_width[]:int32 (var 2s) (+ self.y self.yyl) (- (+ self.x self.xxl) 8s) self.y (- self.x 8s))
    call (draw_line_width[]:int32 (var 2s) (+ self.y self.yyl) (+ (+ self.x self.xxl) 8s) self.y (+ self.x 8s))
    self.nowtime = (+ self.nowtime 1s)
    if !(> self.nowtime self.maxtime) goto 0x0002A0
0x0001F4:
    self.image_angle = self.direction
    self.gv = (instance_create[]:int32 (var 1637s) self.y self.x)
    push self.memorymode
    stog.memorymode* = (int32 self.gv)
    push self.image_angle
    stog.image_angle* = (int32 self.gv)
    if !(== self.memorymode 0s) goto 0x000288
0x000278:
    call (instance_destroy[]:int32 )
    goto 0x0002A0
0x000288:
    self.active = 0s
    self.visible = 0s
0x0002A0:
    exit
