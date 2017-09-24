0x000000:
    self.visible = 1s
    if !(== self.side 0s) goto 0x000058
0x000020:
    self.y = (- 235s self.sprite_height)
    self.vspeed = 2s
    stog.alarm[2s] = 12s
0x000058:
    if !(== self.side 1s) goto 0x0000A4
0x00006C:
    self.image_index = 1s
    self.y = 375s
    self.vspeed = -2s
    stog.alarm[2s] = 12s
0x0000A4:
    exit
