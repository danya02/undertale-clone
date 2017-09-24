0x000000:
    self.ch = 0s
    if !(== self.sprite_index 128s) goto 0x000034
0x000020:
    push (== self.ch 0s)
    goto 0x000038
0x000034:
    push 0s
0x000038:
    if !pop goto 0x000054
0x00003C:
    self.sprite_index = 130s
    self.ch = 1s
0x000054:
    if !(== self.sprite_index 129s) goto 0x00007C
0x000068:
    push (== self.ch 0s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x00009C
0x000084:
    self.sprite_index = 131s
    self.ch = 1s
0x00009C:
    if !(== self.sprite_index 130s) goto 0x0000C4
0x0000B0:
    push (== self.ch 0s)
    goto 0x0000C8
0x0000C4:
    push 0s
0x0000C8:
    if !pop goto 0x0000E4
0x0000CC:
    self.sprite_index = 128s
    self.ch = 1s
0x0000E4:
    if !(== self.sprite_index 131s) goto 0x00010C
0x0000F8:
    push (== self.ch 0s)
    goto 0x000110
0x00010C:
    push 0s
0x000110:
    if !pop goto 0x00012C
0x000114:
    self.sprite_index = 129s
    self.ch = 1s
0x00012C:
    stog.alarm[0s] = self.flexspeed
    if !(== self.offset 1s) goto 0x000164
0x000158:
    self.vspeed = -4s
0x000164:
    exit
