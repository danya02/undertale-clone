0x000000:
    if !(== self.bull 0s) goto 0x0000D0
0x000014:
    self.siny = (+ self.siny 1s)
    self.y = (+ self.yo (* (sin[]:int32 (/ self.siny (double 30s))) 9s))
    self.yo = (+ self.yo self.vspeed)
    if !(== self.alphaup 1s) goto 0x0000A8
0x000094:
    push (< self.image_alpha 1s)
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x0000D0
0x0000B0:
    self.image_alpha = (+ self.image_alpha 0.05d)
0x0000D0:
    if !(> self.shake 0s) goto 0x0001A4
0x0000E4:
    self.shack = (+ self.shack 1s)
    if !(== self.shack 2s) goto 0x0001A4
0x000110:
    self.x = (+ self.xstart (/ (- (* (random[]:int32 self.shake) 2s) self.shake) (double 2s)))
    self.y = (+ self.ystart (/ (- (* (random[]:int32 self.shake) 2s) self.shake) (double 2s)))
    self.shack = 0s
0x0001A4:
    exit
