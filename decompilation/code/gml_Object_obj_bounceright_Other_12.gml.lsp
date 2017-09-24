0x000000:
    if !(== self.mydirection 270s) goto 0x00003C
0x000014:
    if !(== self.myfacing 0s) goto 0x00003C
0x000028:
    push (== self.goldshift 1s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x00008C
0x000044:
    self.goldshift = 0s
    self.y = (- self.y 40s)
    self.mydirection = 90s
    self.myfacing = 2s
    self.sprite_index = 1823s
0x00008C:
    if !(== self.mydirection 0s) goto 0x0000C8
0x0000A0:
    if !(== self.myfacing 1s) goto 0x0000C8
0x0000B4:
    push (== self.goldshift 1s)
    goto 0x0000CC
0x0000C8:
    push 0s
0x0000CC:
    if !pop goto 0x000118
0x0000D0:
    self.goldshift = 0s
    self.x = (- self.x 40s)
    self.mydirection = 180s
    self.myfacing = 3s
    self.sprite_index = 1822s
0x000118:
    if !(== self.mydirection 180s) goto 0x000154
0x00012C:
    if !(== self.myfacing 3s) goto 0x000154
0x000140:
    push (== self.goldshift 1s)
    goto 0x000158
0x000154:
    push 0s
0x000158:
    if !pop goto 0x0001A4
0x00015C:
    self.goldshift = 0s
    self.x = (+ self.x 40s)
    self.mydirection = 0s
    self.myfacing = 1s
    self.sprite_index = 1824s
0x0001A4:
    if !(== self.mydirection 90s) goto 0x0001E0
0x0001B8:
    if !(== self.myfacing 2s) goto 0x0001E0
0x0001CC:
    push (== self.goldshift 1s)
    goto 0x0001E4
0x0001E0:
    push 0s
0x0001E4:
    if !pop goto 0x000230
0x0001E8:
    self.goldshift = 0s
    self.y = (+ self.y 40s)
    self.mydirection = 270s
    self.myfacing = 0s
    self.sprite_index = 1821s
0x000230:
    exit
