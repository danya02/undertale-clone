0x000000:
    if !(< self.t 13s) goto 0x000044
0x000014:
    push 0s
    stog.speed* = (int32 self.dog1)
    push 0s
    stog.speed* = (int32 self.dog2)
0x000044:
    if !(== self.t 7s) goto 0x000064
0x000058:
    self.t = 8s
0x000064:
    if !(== self.t 3s) goto 0x000084
0x000078:
    self.t = 4s
0x000084:
    if !(== self.t 2s) goto 0x0000B8
0x000098:
    self.t = 3s
    stog.alarm[2s] = 20s
0x0000B8:
    if !(== self.t 11s) goto 0x0000D8
0x0000CC:
    self.t = 12s
0x0000D8:
    if !(== self.t 15s) goto 0x0000F8
0x0000EC:
    self.t = 16s
0x0000F8:
    exit
