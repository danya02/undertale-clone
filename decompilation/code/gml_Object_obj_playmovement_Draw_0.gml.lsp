0x000000:
    if !(== self.drawtext 1s) goto 0x000064
0x000014:
    self.sn = (instance_create[]:int32 (var 1205s) (var 180s) (var 60s))
    push self.string1
    stog.sting* = (int32 self.sn)
    self.drawtext = 0s
0x000064:
    if !(== self.drawtext2 1s) goto 0x0000C8
0x000078:
    self.sn2 = (instance_create[]:int32 (var 1205s) (var 190s) (var 60s))
    push self.string2
    stog.sting* = (int32 self.sn2)
    self.drawtext2 = 0s
0x0000C8:
    exit
