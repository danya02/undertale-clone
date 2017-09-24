0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000068
0x000018:
    pushenv 1570s 0x000064
0x000020:
    if !(== self.rsprite 1045s) goto 0x000064
0x000034:
    self.rsprite = 1028s
    self.lsprite = 1029s
    self.dsprite = 1031s
    self.usprite = 1030s
0x000064:
    popenv 0x000020
0x000068:
    exit
