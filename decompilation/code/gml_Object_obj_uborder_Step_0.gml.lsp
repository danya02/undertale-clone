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
    push self.x
    if (== -5s 0s:idealborder) goto 0x000100
0x0000E0:
    push self.y
    push (< -5s 2s:idealborder)
    goto 0x000104
0x000100:
    push 1s
0x000104:
    if !pop goto 0x0001C8
0x000108:
    push self.y
    if !(!= -5s 2s:idealborder) goto 0x0001C8
0x000128:
    push self.y
    if !(<= (abs[]:int32 (- -5s 2s:idealborder)) 15s) goto 0x000174
0x000158:
    push -5s
    self.y = 2s:idealborder
    goto 0x0001C8
0x000174:
    push self.y
    if !(> -5s 2s:idealborder) goto 0x0001B0
0x000194:
    self.y = (- self.y 15s)
    goto 0x0001C8
0x0001B0:
    self.y = (+ self.y 15s)
0x0001C8:
    push -5s
    push 1s:idealborder
    self.size = (round[]:int32 (/ (- -5s 0s:idealborder) (double 5s)))
    if !(!= self.image_xscale self.size) goto 0x0002B8
0x000220:
    if !(<= (abs[]:int32 (- self.size self.image_xscale)) 6s) goto 0x000258
0x000248:
    self.image_xscale = self.size
0x000258:
    if !(> self.image_xscale self.size) goto 0x000288
0x000270:
    self.image_xscale = (- self.image_xscale 6s)
0x000288:
    if !(< self.image_xscale self.size) goto 0x0002B8
0x0002A0:
    self.image_xscale = (+ self.image_xscale 6s)
0x0002B8:
    if !(== self.instant 1s) goto 0x0002E4
0x0002CC:
    push -5s
    self.y = 2s:idealborder
0x0002E4:
    if !(== self.instaborder 1s) goto 0x000360
0x0002F8:
    push -5s
    self.x = 0s:idealborder
    push -5s
    self.y = 2s:idealborder
    push -5s
    push 1s:idealborder
    self.image_xscale = (/ (- -5s 0s:idealborder) (double 5s))
0x000360:
    exit
