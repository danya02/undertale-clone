0x000000:
    if !(== self.site 0s) goto 0x000054
0x000014:
    self.x = (- (int32 self.object0):x 300s)
    self.y = (int32 self.object0):y
0x000054:
    if !(== self.site 1s) goto 0x0000A8
0x000068:
    self.x = (+ (int32 self.object0):x 300s)
    self.y = (int32 self.object0):y
0x0000A8:
    if !(== self.site 2s) goto 0x0000FC
0x0000BC:
    self.x = (int32 self.object0):x
    self.y = (+ (int32 self.object0):y 300s)
0x0000FC:
    if !(== self.site 3s) goto 0x000150
0x000110:
    self.x = (int32 self.object0):x
    self.y = (- (int32 self.object0):y 300s)
0x000150:
    call (move_towards_point[]:int32 (* 8s self.speedmod) (int32 self.object0):y (int32 self.object0):x)
0x000194:
    exit
