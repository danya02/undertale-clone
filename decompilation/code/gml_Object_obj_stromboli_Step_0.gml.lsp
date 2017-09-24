0x000000:
    push -5s
    self.wall_l = (- 0s:idealborder 2s)
    push -5s
    self.wall_r = (- 1s:idealborder 22s)
    push -5s
    self.wall_d = (- 3s:idealborder 22s)
    push -5s
    self.wall_u = (- 2s:idealborder 2s)
    if !(== self.active 1s) goto 0x000214
0x000094:
    if !(> self.hspeed 0s) goto 0x0000C0
0x0000A8:
    push (> self.x self.wall_r)
    goto 0x0000C4
0x0000C0:
    push 0s
0x0000C4:
    if !pop goto 0x0000F4
0x0000C8:
    call (event_user[]:int32 (var 1s))
    self.vspeed = 0s
    self.hspeed = -2s
0x0000F4:
    if !(< self.hspeed 0s) goto 0x000120
0x000108:
    push (< self.x self.wall_l)
    goto 0x000124
0x000120:
    push 0s
0x000124:
    if !pop goto 0x000154
0x000128:
    call (event_user[]:int32 (var 1s))
    self.vspeed = 0s
    self.hspeed = 2s
0x000154:
    if !(> self.vspeed 0s) goto 0x000180
0x000168:
    push (> self.y self.wall_d)
    goto 0x000184
0x000180:
    push 0s
0x000184:
    if !pop goto 0x0001B4
0x000188:
    call (event_user[]:int32 (var 1s))
    self.vspeed = -2s
    self.hspeed = 0s
0x0001B4:
    if !(< self.vspeed 0s) goto 0x0001E0
0x0001C8:
    push (< self.y self.wall_u)
    goto 0x0001E4
0x0001E0:
    push 0s
0x0001E4:
    if !pop goto 0x000214
0x0001E8:
    call (event_user[]:int32 (var 1s))
    self.vspeed = 2s
    self.hspeed = 0s
0x000214:
    if !(< self.image_alpha 1s) goto 0x00023C
0x000228:
    push (== self.off 0s)
    goto 0x000240
0x00023C:
    push 0s
0x000240:
    if !pop goto 0x000264
0x000244:
    self.image_alpha = (+ self.image_alpha 0.1d)
0x000264:
    if !(== self.off 1s) goto 0x000298
0x000278:
    self.image_alpha = (- self.image_alpha 0.05d)
0x000298:
    if !(< self.image_alpha 0.1d) goto 0x0002C8
0x0002B4:
    push (== self.off 1s)
    goto 0x0002CC
0x0002C8:
    push 0s
0x0002CC:
    if !pop goto 0x0002DC
0x0002D0:
    call (instance_destroy[]:int32 )
0x0002DC:
    exit
