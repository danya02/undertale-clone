0x000000:
    if !(bool (instance_exists[]:int32 (var 224s))) goto 0x0001B4
0x000018:
    if !(== 224.dogignore 0s) goto 0x000064
0x00002C:
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.x = self.xstart
    self.y = self.ystart
0x000064:
    if !(== 224.dogignore 1s) goto 0x0000D4
0x000078:
    self.image_xscale = 3s
    self.image_yscale = 3s
    self.x = (- self.xstart (* 0.2d self.sprite_width))
    self.y = (+ self.ystart 30s)
0x0000D4:
    if !(== 224.dogignore 2s) goto 0x000144
0x0000E8:
    self.image_xscale = 4s
    self.image_yscale = 4s
    self.x = (- self.xstart (* 0.25d self.sprite_width))
    self.y = (+ self.ystart 70s)
0x000144:
    if !(== 224.dogignore 3s) goto 0x0001B4
0x000158:
    self.image_xscale = 5s
    self.image_yscale = 5s
    self.x = (- self.xstart (* 0.333333333333333d self.sprite_width))
    self.y = (- 759.y 85s)
0x0001B4:
    if !(== global.debug 1s) goto 0x0001EC
0x0001C8:
    if !(bool (keyboard_check[]:int32 (var 32s))) goto 0x0001EC
0x0001E0:
    [obj_greatdog].dogignore = 3s
0x0001EC:
    exit
