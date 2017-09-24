0x000000:
    self.d = 0s
    self.go = 0s
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000050
0x000030:
    if !(== 782.halt 0s) goto 0x000050
0x000044:
    self.go = 1s
0x000050:
    if !(>= self.pos 6s) goto 0x000070
0x000064:
    self.go = 1s
0x000070:
    if !(== self.go 1s) goto 0x000180
0x000084:
    if !(>= self.pos 3s) goto 0x0000BC
0x000098:
    self.y = (+ self.ystart 2s)
    self.armx = 2s
0x0000BC:
    if !(>= self.pos 6s) goto 0x0000F4
0x0000D0:
    self.y = (+ self.ystart 4s)
    self.armx = 4s
0x0000F4:
    if !(>= self.pos 9s) goto 0x00012C
0x000108:
    self.y = (+ self.ystart 2s)
    self.armx = 2s
0x00012C:
    if !(>= self.pos 12s) goto 0x000168
0x000140:
    self.y = self.ystart
    self.pos = 0s
    self.armx = 0s
0x000168:
    self.pos = (+ self.pos 1s)
0x000180:
    exit
