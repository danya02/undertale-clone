0x000000:
    self.image_blend = (make_color_rgb[]:int32 self.b self.g self.r)
    self.y = (+ self.y (* (sin[]:int32 (/ self.siner (double 20s))) 2s))
    self.x = (+ self.x (* (cos[]:int32 (/ self.siner (double 10s))) 6s))
    self.siner = (+ self.siner 1s)
    if !(< global.turntimer 3s) goto 0x00014C
0x0000C4:
    if !(bool (instance_exists[]:int32 (var 310s))) goto 0x0000EC
0x0000DC:
    [obj_bara02].armor = self.g
0x0000EC:
    if !(bool (instance_exists[]:int32 (var 311s))) goto 0x000114
0x000104:
    [obj_bara03].armor = self.g
0x000114:
    if !(> self.r 99s) goto 0x000140
0x000128:
    global.mnfight = 5s
    global.border = 0s
0x000140:
    call (instance_destroy[]:int32 )
0x00014C:
    self.inv = (- self.inv 1s)
0x000164:
    exit
