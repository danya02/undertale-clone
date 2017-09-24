0x000000:
    if !(<= self.image_xscale 1s) goto 0x000028
0x000014:
    stog.alarm[0s] = 2s
0x000028:
    if !(> self.image_xscale 1s) goto 0x000068
0x00003C:
    self.image_xscale = (- self.image_xscale 1s)
    stog.alarm[1s] = 2s
0x000068:
    exit
