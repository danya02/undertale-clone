0x000000:
    if !(== self.stop 0s) goto 0x000030
0x000014:
    self.image_angle = (+ self.image_angle self.aa)
0x000030:
    if !(> self.y 580s) goto 0x000050
0x000044:
    call (instance_destroy[]:int32 )
0x000050:
    if !(> self.x 640s) goto 0x000070
0x000064:
    call (instance_destroy[]:int32 )
0x000070:
    if !(< self.x 0s) goto 0x000090
0x000084:
    call (instance_destroy[]:int32 )
0x000090:
    if !(< self.y (- self.ystart 70s)) goto 0x0000BC
0x0000B0:
    self.depth = -1112s
0x0000BC:
    if !(< self.depth 0s) goto 0x0000E4
0x0000D0:
    push (< self.image_xscale 2s)
    goto 0x0000E8
0x0000E4:
    push 0s
0x0000E8:
    if !pop goto 0x00012C
0x0000EC:
    self.image_xscale = (+ self.image_xscale 0.05d)
    self.image_yscale = (+ self.image_yscale 0.05d)
0x00012C:
    push self.y
    if !(> -5s (- 3s:idealborder 10s)) goto 0x000168
0x000154:
    push (== self.stop 0s)
    goto 0x00016C
0x000168:
    push 0s
0x00016C:
    if !pop goto 0x000194
0x000170:
    self.stop = 1s
    self.speed = 0s
    self.gravity = 0s
0x000194:
    if !(!= global.mnfight 2s) goto 0x0001BC
0x0001A8:
    push (== self.deactivate 0s)
    goto 0x0001C0
0x0001BC:
    push 0s
0x0001C0:
    if !pop goto 0x0001D0
0x0001C4:
    self.deactivate = 1s
0x0001D0:
    if !(== self.deactivate 1s) goto 0x00022C
0x0001E4:
    self.stop = 2s
    self.gravity = (+ 0.8d (random[]:int32 (var 0.3d)))
    self.deactivate = 2s
0x00022C:
    exit
