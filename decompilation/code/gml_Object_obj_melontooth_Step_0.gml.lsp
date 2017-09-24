0x000000:
    self.direction = (point_direction[]:int32 (+ 743.y 8s) (+ 743.x 8s) self.y self.x)
    self.image_angle = self.direction
    if !(< self.ystart (+ 743.y 8s)) goto 0x0000C8
0x000070:
    self.image_angle = (+ self.image_angle (/ (+ (- self.x 743.x) 8s) 1.5d))
    self.overall = (+ self.overall 1s)
0x0000C8:
    if !(> self.ystart (+ 743.y 8s)) goto 0x000140
0x0000E8:
    self.image_angle = (- self.image_angle (/ (+ (- self.x 743.x) 8s) 1.5d))
    self.overall = (- self.overall 1s)
0x000140:
    self.direction = self.image_angle
    self.siner = (+ self.siner 1s)
    self.x = (+ self.xstart (lengthdir_x[]:int32 self.direction (* (sin[]:int32 (/ self.siner (double 2s))) 4s)))
    self.y = (+ (+ self.ystart (lengthdir_y[]:int32 self.direction (* (sin[]:int32 (/ self.siner (double 2s))) 2s))) (* (sin[]:int32 (/ self.overall (double 4s))) 6s))
0x000220:
    exit
