0x000000:
    if !(bool (instance_exists[]:int32 (var 310s))) goto 0x000044
0x000018:
    self.g = 310.armor
    self.r = (- 255s 310.armor)
    goto 0x000084
0x000044:
    if !(bool (instance_exists[]:int32 (var 311s))) goto 0x000084
0x00005C:
    self.g = 311.armor
    self.r = (- 255s 311.armor)
0x000084:
    self.b = 0s
    self.image_blend = (make_color_rgb[]:int32 self.b self.g self.r)
    self.siner = 0s
    self.inv = 0s
0x0000D0:
    exit
