0x000000:
    if !(== self.active 1s) goto 0x00010C
0x000014:
    self.image_alpha = (+ self.image_alpha 0.02d)
    self.sparklefactor = (+ self.sparklefactor 1s)
    self.j = (instance_create[]:int32 (var 1197s) (+ (- self.y 20s) (random[]:int32 (/ self.sprite_height (double 2s)))) (+ self.x (random[]:int32 self.sprite_width)))
    push self.image_alpha
    stog.maxalpha* = (int32 self.j)
    if !(> self.image_alpha 1s) goto 0x0000EC
0x0000E0:
    self.image_alpha = 1s
0x0000EC:
    if !(> self.sparklefactor 110s) goto 0x00010C
0x000100:
    self.active = 2s
0x00010C:
    if !(== self.active 2s) goto 0x000168
0x000120:
    self.image_alpha = (- self.image_alpha 0.02d)
    if !(< self.image_alpha 0.04d) goto 0x000168
0x00015C:
    call (instance_destroy[]:int32 )
0x000168:
    exit
