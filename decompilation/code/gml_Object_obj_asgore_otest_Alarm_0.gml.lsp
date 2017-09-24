0x000000:
    self.s = (+ self.s 1s)
    if !(== self.s 1s) goto 0x000038
0x00002C:
    self.sprite_index = 1900s
0x000038:
    if !(== self.s 2s) goto 0x000058
0x00004C:
    self.sprite_index = 1907s
0x000058:
    if !(== self.s 3s) goto 0x000078
0x00006C:
    self.sprite_index = 1904s
0x000078:
    if !(> self.s 3s) goto 0x0000A4
0x00008C:
    self.s = 0s
    self.sprite_index = 1901s
0x0000A4:
    stog.alarm[0s] = 60s
0x0000B8:
    exit
