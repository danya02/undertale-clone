0x000000:
    self.image_yscale = (+ self.image_yscale self.scaleadd)
    self.image_xscale = (+ self.image_xscale self.scaleadd)
    self.scaleadd = (/ self.scaleadd 1.1d)
0x000058:
    exit
