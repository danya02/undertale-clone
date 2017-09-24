0x000000:
    if !(> self.y 190s) goto 0x000028
0x000014:
    push (== self.con 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000074
0x000030:
    self.con = 1s
    self.vspeed = 0s
    self.yanchor = self.y
    self.xanchor = self.x
    self.anchor = 1s
0x000074:
    if !(== self.con 1s) goto 0x00009C
0x000088:
    push (< self.image_xscale 1s)
    goto 0x0000A0
0x00009C:
    push 0s
0x0000A0:
    if !pop goto 0x0000C4
0x0000A4:
    self.image_xscale = (+ self.image_xscale 0.05d)
0x0000C4:
    self.image_angle = (point_direction[]:int32 (+ 1581.y 8s) (+ 1581.x 8s) self.y self.x)
    if !(== self.side 0s) goto 0x000158
0x000118:
    if !(> self.image_angle 312s) goto 0x000138
0x00012C:
    self.image_angle = 312s
0x000138:
    if !(< self.image_angle 260s) goto 0x000158
0x00014C:
    self.image_angle = 260s
0x000158:
    if !(== self.side 1s) goto 0x0001AC
0x00016C:
    if !(< self.image_angle 225s) goto 0x00018C
0x000180:
    self.image_angle = 225s
0x00018C:
    if !(> self.image_angle 280s) goto 0x0001AC
0x0001A0:
    self.image_angle = 280s
0x0001AC:
    if !(== self.con 3s) goto 0x00023C
0x0001C0:
    self.vspeed = -5s
    stog.alarm[0s] = -1s
    if !(> self.image_xscale 0.1d) goto 0x00021C
0x0001FC:
    self.image_xscale = (- self.image_xscale 0.1d)
0x00021C:
    if !(<= self.y 150s) goto 0x00023C
0x000230:
    call (instance_destroy[]:int32 )
0x00023C:
    exit
