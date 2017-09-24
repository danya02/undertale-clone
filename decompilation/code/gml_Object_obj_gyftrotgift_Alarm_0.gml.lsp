0x000000:
    self.image_index = self.gift
    if (== self.gift 1s) goto 0x000038
0x000024:
    push (== self.gift 7s)
    goto 0x00003C
0x000038:
    push 1s
0x00003C:
    if !pop goto 0x00004C
0x000040:
    self.depth = 9s
0x00004C:
    self.active = 1s
    self.visible = 1s
0x000064:
    exit
