0x000000:
    self.on = 1s
    self.image_speed = 0.25d
    self.sprite_index = 1854s
    if !(== self.room 149s) goto 0x000054
0x000040:
    stog.flag[374s] = 1s
0x000054:
    if !(== self.room 151s) goto 0x00007C
0x000068:
    stog.flag[375s] = 1s
0x00007C:
    if !(== self.room 208s) goto 0x0000B0
0x000090:
    stog.flag[419s] = 1s
    call (scr_tempsave[]:int32 )
0x0000B0:
    exit
