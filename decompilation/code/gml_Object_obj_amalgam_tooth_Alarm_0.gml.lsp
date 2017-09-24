0x000000:
    if !(== self.top 1s) goto 0x000058
0x000014:
    push -5s
    self.y = (- 2s:idealborder self.sprite_height)
    self.vspeed = 2s
    stog.alarm[4s] = 20s
0x000058:
    if !(== self.top 0s) goto 0x0000BC
0x00006C:
    push -5s
    self.y = 3s:idealborder
    self.sprite_index = 708s
    self.mask_index = 710s
    self.vspeed = -2s
    stog.alarm[4s] = 20s
0x0000BC:
    self.visible = 1s
0x0000C8:
    exit
