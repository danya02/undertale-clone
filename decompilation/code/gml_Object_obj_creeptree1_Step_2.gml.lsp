0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000060
0x000018:
    self.xdiff = (- self.xcurrent 1570.x)
    self.x = (+ self.x (* self.xdiff 1.25d))
0x000060:
    exit
