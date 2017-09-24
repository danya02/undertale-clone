0x000000:
    self.d = 0s
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000058
0x000024:
    if !(== 782.halt 0s) goto 0x000058
0x000038:
    self.d = 1s
    self.image_speed = 0.2d
0x000058:
    if !(== self.d 0s) goto 0x000084
0x00006C:
    self.image_speed = 0s
    self.image_index = 0s
0x000084:
    exit
