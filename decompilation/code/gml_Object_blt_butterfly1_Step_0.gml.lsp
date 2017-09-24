0x000000:
    self.image_angle = self.angle
    self.direction = self.angle
    self.angle = (+ self.angle 3s)
    if !(<= global.turntimer 4s) goto 0x000078
0x00004C:
    if !(== global.mnfight 2s) goto 0x00006C
0x000060:
    global.mnfight = 3s
0x00006C:
    call (instance_destroy[]:int32 )
0x000078:
    exit
