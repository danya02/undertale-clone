0x000000:
    self.y = -300s
    self.x = (/ self.room_width (double 2s))
    self.visible = 1s
    pushenv 1625s 0x000048
0x00003C:
    self.visible = 1s
0x000048:
    popenv 0x00003C
0x00004C:
    stog.alarm[2s] = 30s
0x000060:
    exit
