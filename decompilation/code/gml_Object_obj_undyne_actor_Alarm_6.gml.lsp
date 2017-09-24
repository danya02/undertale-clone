0x000000:
    self.pd = (+ self.pd 1s)
    self.y = (+ self.y (* 2s (sin[]:int32 (/ self.pd (double 2s)))))
    self.x = (+ self.x (* 2s (cos[]:int32 (/ self.pd (double 2s)))))
    if !(== self.up 1s) goto 0x0000C0
0x00009C:
    self.grandv = (+ self.grandv 0.13d)
    goto 0x0000E0
0x0000C0:
    self.grandv = (- self.grandv 0.13d)
0x0000E0:
    if !(> self.grandv 3s) goto 0x000100
0x0000F4:
    self.up = 0s
0x000100:
    self.y = (- self.y self.grandv)
    stog.alarm[6s] = 1s
0x000130:
    exit
