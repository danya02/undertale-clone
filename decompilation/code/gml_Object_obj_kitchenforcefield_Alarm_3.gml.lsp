0x000000:
    self.solid1 = (instance_create[]:int32 (var 2s) self.y self.x)
    push self.image_yscale
    stog.image_yscale* = (int32 self.solid1)
    push self.image_xscale
    stog.image_xscale* = (int32 self.solid1)
    self.sold = 1s
0x00006C:
    exit
