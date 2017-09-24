0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000144
0x000018:
    self.image_blend = 1570.image_blend
    self.x = 1570.x
    self.y = (- self.horizon (- 1570.y self.horizon))
    if !(< self.y self.ceiling) goto 0x000088
0x000078:
    self.y = self.ceiling
0x000088:
    self.sprite_index = 1570.sprite_index
    self.image_index = 1570.image_index
    if !(== self.sprite_index 1043s) goto 0x0000D0
0x0000BC:
    push (== self.flip 0s)
    goto 0x0000D4
0x0000D0:
    push 0s
0x0000D4:
    if !pop goto 0x0000F0
0x0000D8:
    self.sprite_index = 1044s
    self.flip = 1s
0x0000F0:
    if !(== self.sprite_index 1044s) goto 0x000118
0x000104:
    push (== self.flip 0s)
    goto 0x00011C
0x000118:
    push 0s
0x00011C:
    if !pop goto 0x000138
0x000120:
    self.sprite_index = 1043s
    self.flip = 1s
0x000138:
    self.flip = 0s
0x000144:
    exit
