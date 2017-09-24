0x000000:
    if !(> self.y 250s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner (double 5s))) self.sinerfactor))
    self.y = (+ self.y (* (cos[]:int32 (/ self.siner (double 6s))) self.sinerfactor))
    self.image_angle = (+ self.image_angle self.rotspeed)
0x0000CC:
    exit
