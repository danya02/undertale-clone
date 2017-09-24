0x000000:
    push self.x
    if !(!= -5s 0s:idealborder) goto 0x0000C0
0x000020:
    push self.x
    if !(<= (abs[]:int32 (- -5s 0s:idealborder)) 15s) goto 0x00006C
0x000050:
    push -5s
    self.x = 0s:idealborder
    goto 0x0000C0
0x00006C:
    push self.x
    if !(> -5s 0s:idealborder) goto 0x0000A8
0x00008C:
    self.x = (- self.x 15s)
    goto 0x0000C0
0x0000A8:
    self.x = (+ self.x 15s)
0x0000C0:
    push self.y
    if !(!= -5s 3s:idealborder) goto 0x000180
0x0000E0:
    push self.y
    if !(<= (abs[]:int32 (- -5s 3s:idealborder)) 15s) goto 0x00012C
0x000110:
    push -5s
    self.y = 3s:idealborder
    goto 0x000180
0x00012C:
    push self.y
    if !(> -5s 3s:idealborder) goto 0x000168
0x00014C:
    self.y = (- self.y 15s)
    goto 0x000180
0x000168:
    self.y = (+ self.y 15s)
0x000180:
    push -5s
    push 1s:idealborder
    self.size = (+ (round[]:int32 (/ (- -5s 0s:idealborder) (double 5s))) 1s)
    if !(!= self.image_xscale self.size) goto 0x000278
0x0001E0:
    if !(<= (abs[]:int32 (- self.size self.image_xscale)) 6s) goto 0x000218
0x000208:
    self.image_xscale = self.size
0x000218:
    if !(> self.image_xscale self.size) goto 0x000248
0x000230:
    self.image_xscale = (- self.image_xscale 6s)
0x000248:
    if !(< self.image_xscale self.size) goto 0x000278
0x000260:
    self.image_xscale = (+ self.image_xscale 6s)
0x000278:
    if !(== self.instaborder 1s) goto 0x0002FC
0x00028C:
    push -5s
    self.x = 0s:idealborder
    push -5s
    self.y = 3s:idealborder
    push 1s
    push -5s
    self.image_xscale = (+ 1s:idealborder (/ (- -5s 0s:idealborder) (double 5s)))
0x0002FC:
    exit
