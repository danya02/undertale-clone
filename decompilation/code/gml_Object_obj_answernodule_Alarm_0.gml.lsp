0x000000:
    if !(== self.qno 0s) goto 0x000020
0x000014:
    self.sprite_index = 350s
0x000020:
    if !(== self.qno 1s) goto 0x000040
0x000034:
    self.sprite_index = 351s
0x000040:
    if !(== self.qno 2s) goto 0x000060
0x000054:
    self.sprite_index = 352s
0x000060:
    if !(== self.qno 3s) goto 0x000080
0x000074:
    self.sprite_index = 353s
0x000080:
    self.visible = 1s
    self.ano = self.qno
    if !(== 307.correct 5s) goto 0x0000BC
0x0000B0:
    self.ano = 5s
0x0000BC:
    [obj_heart].movement = 1s
0x0000C8:
    exit
