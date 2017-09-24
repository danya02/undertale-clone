0x000000:
    if !(== self.image_index 0s) goto 0x000020
0x000014:
    self.direction = 180s
0x000020:
    if !(== self.image_index 1s) goto 0x000040
0x000034:
    self.direction = 120s
0x000040:
    if !(== self.image_index 2s) goto 0x000060
0x000054:
    self.direction = 76s
0x000060:
    if !(== self.image_index 3s) goto 0x000080
0x000074:
    self.direction = 0s
0x000080:
    if !(== self.image_index 4s) goto 0x0000A0
0x000094:
    self.direction = 300s
0x0000A0:
    if !(== self.image_index 5s) goto 0x0000C0
0x0000B4:
    self.direction = 230s
0x0000C0:
    self.speed = 13s
    self.gravity_direction = 270s
    self.gravity = 2s
    self.friction = 0.05d
0x0000F8:
    exit
