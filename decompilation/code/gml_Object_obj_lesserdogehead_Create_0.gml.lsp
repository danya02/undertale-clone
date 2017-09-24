0x000000:
    if !(bool (instance_exists[]:int32 (var 220s))) goto 0x000028
0x000018:
    self.tailobj = 220s
    goto 0x000034
0x000028:
    self.tailobj = 603s
0x000034:
    self.x = (int32 self.tailobj):x
    self.y = (int32 self.tailobj):y
    self.image_xscale = 2s
    self.image_yscale = 2s
0x000084:
    exit
