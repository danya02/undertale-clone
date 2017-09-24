0x000000:
    if !(== self.site 0s) goto 0x000020
0x000014:
    self.truesite = 1s
0x000020:
    if !(== self.site 1s) goto 0x000040
0x000034:
    self.truesite = 0s
0x000040:
    if !(== self.site 2s) goto 0x000060
0x000054:
    self.truesite = 3s
0x000060:
    if !(== self.site 3s) goto 0x000080
0x000074:
    self.truesite = 2s
0x000080:
    self.image_index = self.truesite
    if !(== self.site 0s) goto 0x0000CC
0x0000A4:
    self.x = (- 263.x 300s)
    self.y = 263.y
0x0000CC:
    if !(== self.site 1s) goto 0x000120
0x0000E0:
    self.x = (+ (int32 self.object0):x 300s)
    self.y = (int32 self.object0):y
0x000120:
    if !(== self.site 2s) goto 0x000174
0x000134:
    self.x = (int32 self.object0):x
    self.y = (+ (int32 self.object0):y 300s)
0x000174:
    if !(== self.site 3s) goto 0x0001C8
0x000188:
    self.x = (int32 self.object0):x
    self.y = (- (int32 self.object0):y 300s)
0x0001C8:
    call (move_towards_point[]:int32 (* 8s self.speedmod) (int32 self.object0):y (int32 self.object0):x)
    self.active = 1s
0x000218:
    exit
