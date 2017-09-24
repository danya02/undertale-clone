0x000000:
    if !(== self.border_d 1s) goto 0x000080
0x000014:
    self.cx = 310s
    self.cx2 = 330s
    self.cy = 290s
    self.cy2 = 310s
    [obj_heart].visible = 1s
    [obj_heart].x = (+ self.cx 2s)
    [obj_heart].y = (+ self.cy 2s)
0x000080:
    exit
