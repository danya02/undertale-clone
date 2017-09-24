0x000000:
    if !(bool (instance_exists[]:int32 self.subject)) goto 0x000080
0x000018:
    self.x = (int32 self.subject):x
    self.y = (int32 self.subject):y
    self.image_xscale = 1s
    self.depth = (+ (int32 self.subject):depth 100s)
0x000080:
    exit
