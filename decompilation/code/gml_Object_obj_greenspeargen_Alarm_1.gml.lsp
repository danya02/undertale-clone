0x000000:
    if !(> self.rating 8s) goto 0x00002C
0x000014:
    self.rating = (- self.rating 1s)
0x00002C:
    stog.alarm[1s] = 300s
0x000040:
    exit
