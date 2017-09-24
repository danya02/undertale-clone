0x000000:
    if !(== self.con 0s) goto 0x000068
0x000014:
    self.image_alpha = (+ self.image_alpha 0.05d)
    if !(>= self.image_alpha 1s) goto 0x000068
0x000048:
    self.con = 1s
    stog.alarm[4s] = 20s
0x000068:
    if !(== self.con 2s) goto 0x00013C
0x00007C:
    self.image_speed = 0.5d
    self.sz = (+ 2s (random[]:int32 (var 0.1d)))
    self.sz2 = (+ 2s (random[]:int32 (var 0.1d)))
    if !(> self.image_index 9s) goto 0x000114
0x0000F4:
    self.image_alpha = (- self.image_alpha 0.1d)
0x000114:
    if !(< self.image_alpha 0.3d) goto 0x00013C
0x000130:
    call (instance_destroy[]:int32 )
0x00013C:
    self.image_xscale = self.sz
    self.image_yscale = self.sz2
0x00015C:
    exit
