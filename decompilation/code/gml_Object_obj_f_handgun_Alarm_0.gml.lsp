0x000000:
    self.visible = 1s
    if !(== self.side 0s) goto 0x00004C
0x000020:
    self.x = 70s
    stog.alarm[4s] = 24s
    self.con = 1s
0x00004C:
    if !(== self.side 1s) goto 0x0000A4
0x000060:
    self.x = (- self.room_width 70s)
    self.image_xscale = -1s
    stog.alarm[4s] = 24s
    self.con = 1s
0x0000A4:
    exit
