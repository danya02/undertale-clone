0x000000:
    self.image_index = 0s
    self.image_speed = 0s
    self.yarl = 0s
    if !(== self.room 8s) goto 0x00004C
0x000038:
    self.yarl = 4.5d
0x00004C:
    if !(== self.room 15s) goto 0x00006C
0x000060:
    self.yarl = 99s
0x00006C:
    if !(== self.room 17s) goto 0x00008C
0x000080:
    self.yarl = 99s
0x00008C:
    if !(== self.room 22s) goto 0x0000AC
0x0000A0:
    self.yarl = 12s
0x0000AC:
    if !(== self.room 24s) goto 0x0000D4
0x0000C0:
    push (< self.x 60s)
    goto 0x0000D8
0x0000D4:
    push 0s
0x0000D8:
    if !pop goto 0x0000E8
0x0000DC:
    self.yarl = 13s
0x0000E8:
    if !(== self.room 25s) goto 0x000110
0x0000FC:
    push (< self.x 160s)
    goto 0x000114
0x000110:
    push 0s
0x000114:
    if !pop goto 0x000124
0x000118:
    self.yarl = 14s
0x000124:
    if !(== self.room 26s) goto 0x00014C
0x000138:
    push (> self.x 320s)
    goto 0x000150
0x00014C:
    push 0s
0x000150:
    if !pop goto 0x000160
0x000154:
    self.yarl = 15s
0x000160:
    if !(== self.room 57s) goto 0x000180
0x000174:
    self.yarl = 48s
0x000180:
    if !(== self.room 58s) goto 0x0001A0
0x000194:
    self.yarl = 52s
0x0001A0:
    if !(== self.room 59s) goto 0x0001C0
0x0001B4:
    self.yarl = 55s
0x0001C0:
    exit
