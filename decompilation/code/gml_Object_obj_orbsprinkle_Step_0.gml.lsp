0x000000:
    self.sprank = (+ self.sprank 1s)
    if !(> self.sprank 14s) goto 0x00004C
0x00002C:
    self.alpha = (- self.alpha 0.08d)
0x00004C:
    if !(== self.sprink 0s) goto 0x000090
0x000060:
    self.image_alpha = (* self.alpha 0.8d)
    self.sprink = 1s
    goto 0x0000AC
0x000090:
    self.image_alpha = self.alpha
    self.sprink = 0s
0x0000AC:
    if !(< self.alpha 0.05d) goto 0x0000D4
0x0000C8:
    call (instance_destroy[]:int32 )
0x0000D4:
    exit
