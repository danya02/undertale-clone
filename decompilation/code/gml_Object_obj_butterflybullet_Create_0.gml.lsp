0x000000:
    self.image_speed = 0.2d
    self.initx = self.x
    self.inity = self.y
    self.siner = 0s
    self.sinerfactor = 64s
    self.x = (+ self.initx (* (sin[]:int32 (degtorad[]:int32 self.siner)) self.sinerfactor))
    self.y = (+ self.inity (* (cos[]:int32 (degtorad[]:int32 self.siner)) self.sinerfactor))
    self.image_angle = (+ self.siner 90s)
    self.siner2 = 0s
    self.dmg = 0s
    self.green = 0s
    self.s2factor = 1s
    self.sineradd = 4s
0x000110:
    exit
