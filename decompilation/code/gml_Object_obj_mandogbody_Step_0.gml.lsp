0x000000:
    if !(bool (instance_exists[]:int32 (var 242s))) goto 0x000030
0x000018:
    self.image_speed = 0.125d
    goto 0x00003C
0x000030:
    self.image_speed = 0s
0x00003C:
    if !(== self.image_index 0s) goto 0x000080
0x000050:
    if !(== self.depth 10s) goto 0x000074
0x000064:
    self.depth = 9s
    goto 0x000080
0x000074:
    self.depth = 10s
0x000080:
    exit
