0x000000:
    self.image_index = 0s
    push -5s
    if !(== 0s:bmenucoord 1s) goto 0x0000A0
0x000028:
    if !(== global.myfight 0s) goto 0x00005C
0x00003C:
    if !(== global.mnfight 0s) goto 0x00005C
0x000050:
    self.image_index = 1s
0x00005C:
    if !(== global.bmenuno 0s) goto 0x0000A0
0x000070:
    [obj_heart].x = (+ self.x 8s)
    [obj_heart].y = (+ self.y 14s)
0x0000A0:
    if !(== self.spec 1s) goto 0x0000FC
0x0000B4:
    self.spec_x = (+ self.spec_x 1s)
    self.image_blend = (make_color_hsv[]:int32 (var 255s) (var 160s) (* self.spec_x 12s))
0x0000FC:
    exit
