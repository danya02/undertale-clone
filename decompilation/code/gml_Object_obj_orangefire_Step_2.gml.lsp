0x000000:
    if !(== (instance_exists[]:int32 self.parent) 0s) goto 0x00002C
0x00001C:
    call (instance_destroy[]:int32 )
    exit
0x00002C:
    self.x = (+ (int32 self.parent):x self.rememberx)
    self.y = (+ (int32 self.parent):y self.remembery)
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner (double 3s))) 2s))
    self.y = (+ self.y (* (cos[]:int32 (/ self.siner (double 3s))) 2s))
0x000104:
    exit
