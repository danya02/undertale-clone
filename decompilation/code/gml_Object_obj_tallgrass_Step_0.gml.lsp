0x000000:
    if !(== self.c 0s) goto 0x000024
0x000014:
    self.image_index = 0s
    goto 0x00003C
0x000024:
    self.c = (- self.c 1s)
0x00003C:
    exit
