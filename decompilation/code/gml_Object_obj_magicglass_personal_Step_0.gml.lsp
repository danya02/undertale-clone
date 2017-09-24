0x000000:
    self.ar = (- self.ar 1s)
    if !(> self.image_alpha 0s) goto 0x000040
0x00002C:
    push (< self.ar 0s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000068
0x000048:
    self.image_alpha = (- self.image_alpha 0.1d)
0x000068:
    exit
