0x000000:
    self.side = (choose[]:int32 (var 2s) (var 1s) (var 0s))
    if !(== self.side self.prevside) goto 0x000078
0x000040:
    self.side = (+ self.side 1s)
    if !(> self.side 2s) goto 0x000078
0x00006C:
    self.side = 0s
0x000078:
    self.prevside = self.side
    if !(== self.side 0s) goto 0x0000F0
0x00009C:
    self.sidex = (- self.x (random[]:int32 (var 30s)))
    self.sidey = (+ (- self.y self.legh) (random[]:int32 (var 40s)))
0x0000F0:
    if !(== self.side 1s) goto 0x000160
0x000104:
    self.sidex = (+ self.x (random[]:int32 (var 140s)))
    self.sidey = (- (- (- self.y 35s) self.legh) (random[]:int32 (var 10s)))
0x000160:
    if !(== self.side 2s) goto 0x0001D0
0x000174:
    self.sidex = (+ (+ self.x 110s) (random[]:int32 (var 30s)))
    self.sidey = (+ (- self.y self.legh) (random[]:int32 (var 40s)))
0x0001D0:
    if !(== self.side 3s) goto 0x000240
0x0001E4:
    self.sidex = (+ (+ self.x 100s) (random[]:int32 (var 40s)))
    self.sidey = (+ (- self.y self.legh) (random[]:int32 (var 40s)))
0x000240:
    call (instance_create[]:int32 (var 406s) self.sidey self.sidex)
0x000264:
    exit
