0x000000:
    self.y = 160s
    self.image_xscale = 0.05d
    self.vspeed = 5s
    call (snd_play[]:int32 (var 121s))
    self.image_angle = (point_direction[]:int32 (+ 1581.y 8s) (+ 1581.x 8s) self.y self.x)
    self.on = 0s
    if !(> self.image_angle 312s) goto 0x0000AC
0x0000A0:
    self.image_angle = 312s
0x0000AC:
    if !(< self.image_angle 240s) goto 0x0000CC
0x0000C0:
    self.image_angle = 240s
0x0000CC:
    self.extend = 0s
    self.image_speed = 0s
    stog.alarm[1s] = 8s
    self.image_angle = 270s
    self.num = 0s
    self.anchor = 0s
    self.xanchor = 0s
    self.yanchor = 0s
    self.side = 0s
    if !(> self.x 440s) goto 0x000160
0x000154:
    self.side = 1s
0x000160:
    self.con = 0s
    self.done = 0s
0x000178:
    exit
