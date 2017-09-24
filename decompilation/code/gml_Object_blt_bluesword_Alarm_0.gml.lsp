0x000000:
    if !(== self.speartype 0s) goto 0x000048
0x000014:
    call (instance_create[]:int32 (var 649s) self.ystart self.xstart)
    [blt_whitespear].dmg = self.dmg
0x000048:
    exit
