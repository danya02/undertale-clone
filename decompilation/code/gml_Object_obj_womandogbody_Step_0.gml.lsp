0x000000:
    if !(bool (instance_exists[]:int32 (var 241s))) goto 0x000040
0x000018:
    self.image_speed = 0.125d
    self.image_index = 241.image_index
    goto 0x00004C
0x000040:
    self.image_speed = 0s
0x00004C:
    if !(== self.image_index 0s) goto 0x000090
0x000060:
    if !(== self.depth 10s) goto 0x000084
0x000074:
    self.depth = 9s
    goto 0x000090
0x000084:
    self.depth = 10s
0x000090:
    exit
