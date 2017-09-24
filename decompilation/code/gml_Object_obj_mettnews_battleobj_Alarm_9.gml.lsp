0x000000:
    if !(== self.bombtype 1s) goto 0x000020
0x000014:
    self.sprite_index = 1517s
0x000020:
    if !(== self.bombtype 2s) goto 0x000040
0x000034:
    self.sprite_index = 1774s
0x000040:
    if !(== self.bombtype 3s) goto 0x000060
0x000054:
    self.sprite_index = 1768s
0x000060:
    if !(== self.bombtype 4s) goto 0x000080
0x000074:
    self.sprite_index = 1777s
0x000080:
    if !(== self.bombtype 5s) goto 0x0000A0
0x000094:
    self.sprite_index = 1772s
0x0000A0:
    if !(== self.bombtype 6s) goto 0x0000C0
0x0000B4:
    self.sprite_index = 1770s
0x0000C0:
    exit
