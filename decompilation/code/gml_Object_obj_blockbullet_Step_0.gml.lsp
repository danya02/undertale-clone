0x000000:
    if !(== self.down 1s) goto 0x000038
0x000014:
    self.countdown = (- self.countdown 1s)
    self.down = 0s
0x000038:
    if !(<= self.countdown 1s) goto 0x000058
0x00004C:
    self.image_index = 1s
0x000058:
    if !(< self.alphoid 1s) goto 0x00008C
0x00006C:
    self.alphoid = (+ self.alphoid 0.2d)
0x00008C:
    self.image_alpha = self.alphoid
0x00009C:
    exit
