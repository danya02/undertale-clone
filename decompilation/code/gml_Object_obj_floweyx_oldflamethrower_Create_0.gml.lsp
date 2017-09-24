0x000000:
    self.y = 160s
    self.image_xscale = 0.05d
    self.vspeed = 5s
    self.image_angle = (point_direction[]:int32 (+ 1581.y 8s) (+ 1581.x 8s) self.y self.x)
    if !(> self.image_angle 312s) goto 0x00008C
0x000080:
    self.image_angle = 312s
0x00008C:
    if !(< self.image_angle 240s) goto 0x0000AC
0x0000A0:
    self.image_angle = 240s
0x0000AC:
    stog.alarm[0s] = 50s
    self.num = 0s
    self.anchor = 0s
    self.xanchor = 0s
    self.yanchor = 0s
    self.side = 0s
    if !(> self.x 440s) goto 0x00011C
0x000110:
    self.side = 1s
0x00011C:
    self.con = 0s
0x000128:
    exit
