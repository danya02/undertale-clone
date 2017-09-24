0x000000:
    if !(< self.num 7s) goto 0x000218
0x000014:
    if !(== self.side 0s) goto 0x00003C
0x000028:
    push (== self.on 0s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x00005C
0x000044:
    self.image_angle = (+ self.image_angle 8s)
0x00005C:
    if !(== self.side 1s) goto 0x000084
0x000070:
    push (== self.on 0s)
    goto 0x000088
0x000084:
    push 0s
0x000088:
    if !pop goto 0x0000A4
0x00008C:
    self.image_angle = (- self.image_angle 8s)
0x0000A4:
    if !(== self.side 0s) goto 0x0000CC
0x0000B8:
    push (== self.on 1s)
    goto 0x0000D0
0x0000CC:
    push 0s
0x0000D0:
    if !pop goto 0x0000EC
0x0000D4:
    self.image_angle = (- self.image_angle 8s)
0x0000EC:
    if !(== self.side 1s) goto 0x000114
0x000100:
    push (== self.on 1s)
    goto 0x000118
0x000114:
    push 0s
0x000118:
    if !pop goto 0x000134
0x00011C:
    self.image_angle = (+ self.image_angle 8s)
0x000134:
    self.xx = (lengthdir_x[]:int32 self.image_angle (var 165s))
    self.yy = (lengthdir_y[]:int32 self.image_angle (var 165s))
    self.fl = (instance_create[]:int32 (var 1643s) (+ self.y self.yy) (+ self.x self.xx))
    push self.image_angle
    stog.direction* = (int32 self.fl)
    push 7s
    stog.speed* = (int32 self.fl)
    stog.alarm[0s] = 2s
    self.num = (+ self.num 1s)
    goto 0x000268
0x000218:
    if !(== self.on 0s) goto 0x00023C
0x00022C:
    self.on = 1s
    goto 0x000248
0x00023C:
    self.on = 0s
0x000248:
    stog.alarm[0s] = 30s
    self.num = 0s
0x000268:
    exit
