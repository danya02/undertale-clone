0x000000:
    self.siner = (+ self.siner self.sineradd)
    self.siner2 = (+ self.siner2 self.s2factor)
    self.x = (+ self.initx (* (sin[]:int32 (degtorad[]:int32 self.siner)) self.sinerfactor))
    self.y = (+ self.inity (* (cos[]:int32 (degtorad[]:int32 self.siner)) self.sinerfactor))
    self.image_angle = self.siner
    self.sinerfactor = (- self.sinerfactor (* (sin[]:int32 (/ self.siner2 (double 6s))) 1.2d))
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner2 (double 12s))) 14s))
    self.y = (+ self.y (* (cos[]:int32 (/ self.siner2 (double 12s))) 14s))
0x000168:
    exit
