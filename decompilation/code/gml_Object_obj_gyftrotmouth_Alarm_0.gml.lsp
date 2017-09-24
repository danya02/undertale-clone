0x000000:
    if !(< self.image_index 4s) goto 0x000044
0x000014:
    self.image_index = (+ self.image_index 1s)
    stog.alarm[0s] = 3s
    goto 0x000058
0x000044:
    stog.alarm[1s] = 25s
0x000058:
    exit
