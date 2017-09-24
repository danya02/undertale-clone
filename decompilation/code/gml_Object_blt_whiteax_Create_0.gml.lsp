0x000000:
    self.hard = 0s
    self.image_speed = 0s
    self.visible = 0s
    self.sprite_index = 96s
    self.image_alpha = 0s
    if !(> (instance_number[]:int32 self.object_index) 1s) goto 0x000068
0x000058:
    self.axetype = 1s
    goto 0x000074
0x000068:
    self.axetype = 0s
0x000074:
    if !(== self.axetype 0s) goto 0x0000C4
0x000088:
    push -5s
    self.x = (- 0s:idealborder 130s)
    self.image_index = 0s
    self.hspeed = 0s
    goto 0x0000FC
0x0000C4:
    push -5s
    self.x = (- 1s:idealborder 50s)
    self.image_index = 1s
    self.hspeed = 0s
0x0000FC:
    stog.alarm[1s] = 10s
    self.y = 309s
    if !(< self.x 140s) goto 0x000140
0x000130:
    self.x = 99s
    goto 0x00014C
0x000140:
    self.x = 350s
0x00014C:
    self.dmg = 0s
    self.g = 0s
    self.hurted = 0s
    self.blconnum = 0s
    self.move = 0s
0x000188:
    exit
