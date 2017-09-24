0x000000:
    self.image_speed = 0.5d
    self.ex = 0s
    self.active = 1s
    self.siner = 0s
    self.blue = 1s
    self.rememberhspeed = 0s
    call (event_user[]:int32 (var 1s))
    if !(== self.room 166s) goto 0x0000C0
0x000078:
    push -5s
    if !(== 372s:flag 1s) goto 0x0000A0
0x000094:
    self.active = 2s
0x0000A0:
    if !(> global.plot 160s) goto 0x0000C0
0x0000B4:
    self.active = 2s
0x0000C0:
    if !(> global.plot 184s) goto 0x0000E0
0x0000D4:
    self.active = 2s
0x0000E0:
    push -5s
    if !(== 7s:flag 1s) goto 0x000108
0x0000FC:
    self.active = 2s
0x000108:
    self.activebuffer = 0s
0x000114:
    exit
