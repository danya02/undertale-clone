0x000000:
    if !(< self.x 10s) goto 0x000020
0x000014:
    self.x = 10s
0x000020:
    if !(> self.x (- self.room_width 10s)) goto 0x000058
0x000040:
    self.x = (- self.room_width 10s)
0x000058:
    if !(> self.y (- self.room_height 10s)) goto 0x000090
0x000078:
    self.y = (- self.room_height 10s)
0x000090:
    if !(< self.y 10s) goto 0x0000B0
0x0000A4:
    self.y = 10s
0x0000B0:
    stog.alarm[0s] = 2s
0x0000C4:
    exit
