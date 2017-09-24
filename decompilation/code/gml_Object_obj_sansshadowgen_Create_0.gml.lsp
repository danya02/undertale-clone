0x000000:
    self.shadow = 0s
    self.level = 0s
    self.prev_s = 3s
    self.laser_d = 0s
    self.shadow_num = 0s
    self.shadow_max = 6s
    pushenv 757s 0x00005C
0x000050:
    self.instaborder = 1s
0x00005C:
    popenv 0x000050
0x000060:
    global.border = -1s
    call (event_user[]:int32 (var 0s))
0x000080:
    exit
