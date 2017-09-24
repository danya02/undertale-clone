0x000000:
    self.hspeed = -4s
    self.siner = (+ self.siner 1s)
    if !(> self.counter 0s) goto 0x00004C
0x000038:
    push (< self.counter 14s)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x000060
0x000054:
    self.vspeed = -6s
0x000060:
    if !(== self.counter 14s) goto 0x000080
0x000074:
    self.vspeed = 0s
0x000080:
    if !(> self.counter 20s) goto 0x0000A8
0x000094:
    push (< self.counter 30s)
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x0000BC
0x0000B0:
    self.vspeed = 8s
0x0000BC:
    if !(== self.counter 30s) goto 0x0000DC
0x0000D0:
    self.vspeed = 0s
0x0000DC:
    if !(> self.counter 40s) goto 0x0000FC
0x0000F0:
    self.counter = 1s
0x0000FC:
    self.counter = (+ self.counter 1s)
    if !(< self.x 0s) goto 0x00013C
0x000128:
    push (< self.hspeed 0s)
    goto 0x000140
0x00013C:
    push 0s
0x000140:
    if !pop goto 0x000158
0x000144:
    self.hspeed = (- self.hspeed)
0x000158:
    if !(> self.x self.room_width) goto 0x000184
0x000170:
    push (> self.hspeed 0s)
    goto 0x000188
0x000184:
    push 0s
0x000188:
    if !pop goto 0x0001A0
0x00018C:
    self.hspeed = (- self.hspeed)
0x0001A0:
    exit
