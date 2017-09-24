0x000000:
    push self.x
    if !(!= -5s 1s:idealborder) goto 0x0000C0
0x000020:
    push self.x
    if !(<= (abs[]:int32 (- -5s 1s:idealborder)) 15s) goto 0x00006C
0x000050:
    push -5s
    self.x = 1s:idealborder
    goto 0x0000C0
0x00006C:
    push self.x
    if !(> -5s 1s:idealborder) goto 0x0000A8
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
    push 2s:idealborder
    self.size = (ceil[]:int32 (/ (- -5s 3s:idealborder) (double 5s)))
    push self.x
    if (== -5s 1s:idealborder) goto 0x000214
0x0001E0:
    push -5s
    push (> 2s:idealborder (+ self.y (* self.image_yscale 5s)))
    goto 0x000218
0x000214:
    push 1s
0x000218:
    if !pop goto 0x0002CC
0x00021C:
    if !(!= self.image_yscale self.size) goto 0x0002CC
0x000234:
    if !(<= (abs[]:int32 (- self.size self.image_yscale)) 3s) goto 0x00026C
0x00025C:
    self.image_yscale = self.size
0x00026C:
    if !(> self.image_yscale self.size) goto 0x00029C
0x000284:
    self.image_yscale = (- self.image_yscale 3s)
0x00029C:
    if !(< self.image_yscale self.size) goto 0x0002CC
0x0002B4:
    self.image_yscale = (+ self.image_yscale 3s)
0x0002CC:
    self.y = 761.y
    self.image_yscale = (/ (- 759.y 761.y) (double 5s))
    if !(== self.instaborder 1s) goto 0x000380
0x000318:
    push -5s
    self.x = 1s:idealborder
    push -5s
    self.y = 3s:idealborder
    push -5s
    push 2s:idealborder
    self.image_yscale = (/ (- -5s 3s:idealborder) (double 5s))
0x000380:
    exit
