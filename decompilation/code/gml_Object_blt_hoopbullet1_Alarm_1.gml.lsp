0x000000:
    if !(== self.bullettype 1s) goto 0x000020
0x000014:
    self.sprite_index = 151s
0x000020:
    if !(== self.bullettype 2s) goto 0x000040
0x000034:
    self.sprite_index = 149s
0x000040:
    if !(> self.hspeed 0s) goto 0x00007C
0x000054:
    self.x = (+ self.x (/ self.sprite_width (double 2s)))
0x00007C:
    if !(< self.hspeed 0s) goto 0x0000B8
0x000090:
    self.x = (- self.x (/ self.sprite_width (double 2s)))
0x0000B8:
    self.visible = 1s
0x0000C4:
    exit
