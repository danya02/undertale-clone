0x000000:
    self.alf = (/ self.maxdist (+ (abs[]:int32 (- self.x 1570.x)) 1s))
    self.alf = (round[]:int32 (* self.alf 4s))
    self.alf = (/ self.alf 4s)
    if !(> self.alf 1s) goto 0x000090
0x000084:
    self.alf = 1s
0x000090:
    self.image_alpha = self.alf
0x0000A0:
    exit
