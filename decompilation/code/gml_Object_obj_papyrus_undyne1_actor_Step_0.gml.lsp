0x000000:
    push -5s
    if !(== 20s:flag 0s) goto 0x00002C
0x00001C:
    self.sprite_index = self.dsprite
0x00002C:
    push -5s
    if !(== 20s:flag 1s) goto 0x000058
0x000048:
    self.sprite_index = self.rsprite
0x000058:
    push -5s
    if !(== 20s:flag 2s) goto 0x000084
0x000074:
    self.sprite_index = self.usprite
0x000084:
    push -5s
    if !(== 20s:flag 3s) goto 0x0000B0
0x0000A0:
    self.sprite_index = self.lsprite
0x0000B0:
    push -5s
    if !(== 20s:flag 4s) goto 0x0000D8
0x0000CC:
    self.sprite_index = 1312s
0x0000D8:
    exit
