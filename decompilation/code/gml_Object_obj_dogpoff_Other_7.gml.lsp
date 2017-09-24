0x000000:
    if !(== self.poffed 0s) goto 0x000064
0x000014:
    self.image_index = (- self.image_index 1s)
    self.image_speed = 0s
    [obj_pofftrigger].t = 5s
    push 60s
    push 1012s
    stog.alarm[] = 4s
    self.poffed = 1s
0x000064:
    if !(== self.sprite_index 1273s) goto 0x0000A4
0x000078:
    self.image_speed = 0s
    self.sprite_index = 1275s
    push 40s
    push 1012s
    stog.alarm[] = 4s
0x0000A4:
    exit
