0x000000:
    if !(> self.image_index 0s) goto 0x000044
0x000014:
    self.image_index = (- self.image_index 1s)
    stog.alarm[2s] = 3s
    goto 0x00006C
0x000044:
    stog.alarm[0s] = (+ 45s (random[]:int32 (var 60s)))
0x00006C:
    exit
