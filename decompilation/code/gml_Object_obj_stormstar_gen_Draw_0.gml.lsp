0x000000:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_rectangle[]:int32 (var 1s) self.a_y2 self.a_x2 self.a_y self.a_x)
    self.gh = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 581s) self.a_y2 self.a_x2 self.a_y self.a_x)
    if !(!= self.gh -4s) goto 0x00013C
0x0000A4:
    if !(== (int32 self.gh):con 1s) goto 0x0000F0
0x0000C4:
    call (draw_circle[]:int32 (var 0s) (var 4s) (var 10s) (var 10s))
0x0000F0:
    if !(== (int32 self.gh):con 2s) goto 0x00013C
0x000110:
    call (draw_circle[]:int32 (var 0s) (var 4s) (var 10s) (var 30s))
0x00013C:
    pushenv (int32 self.gh) 0x0001B0
0x00014C:
    if !(!= self.con 3s) goto 0x000188
0x000160:
    if !(!= self.con 4s) goto 0x000188
0x000174:
    push (== self.big 0s)
    goto 0x00018C
0x000188:
    push 0s
0x00018C:
    if !pop goto 0x0001B0
0x000190:
    call (event_user[]:int32 (var 3s))
    self.speed = 0s
0x0001B0:
    popenv 0x00014C
0x0001B4:
    if !(== self.off 1s) goto 0x000204
0x0001C8:
    self.vol = (- self.vol 0.0125d)
    call (caster_set_volume[]:int32 self.vol self.expl)
0x000204:
    exit
