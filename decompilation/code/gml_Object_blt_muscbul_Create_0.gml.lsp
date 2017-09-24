0x000000:
    if !(< self.x 320s) goto 0x000020
0x000014:
    self.side = 1s
0x000020:
    if !(> self.x 320s) goto 0x000070
0x000034:
    self.side = -1s
    self.sprite_index = 129s
    self.x = (- self.x (- self.sprite_width 2s))
0x000070:
    self.xs = self.x
    self.offset = 0s
    self.vspeed = -3s
    self.flexspeed = 15s
    stog.alarm[0s] = self.flexspeed
0x0000BC:
    exit
